; ModuleID = 'jcdctmgr.c'
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
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, void (i32*)*, [4 x i32*], void (float*)*, [4 x float*] }

@start_pass_fdctmgr.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass_fdctmgr.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 5.411961e-01, double 0x3FD1A855DE72AB5D], align 16

; Function Attrs: nounwind ssp uwtable
define void @jinit_forward_dct(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = bitcast %struct.jpeg_compress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 96)
  %7 = bitcast i8* %call to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %7, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %8 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %9 = bitcast %struct.my_fdct_controller* %8 to %struct.jpeg_forward_dct*
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 58
  store %struct.jpeg_forward_dct* %9, %struct.jpeg_forward_dct** %fdct1, align 8, !tbaa !14
  %11 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub, i32 0, i32 0
  %start_pass2 = bitcast {}** %start_pass to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_fdctmgr, void (%struct.jpeg_compress_struct*)** %start_pass2, align 8, !tbaa !15
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 28
  %13 = load i32, i32* %dct_method, align 4, !tbaa !18
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %14, i32 0, i32 0
  %forward_DCT = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub3, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT, align 8, !tbaa !19
  %15 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %do_dct = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %15, i32 0, i32 1
  store void (i32*)* @jpeg_fdct_islow, void (i32*)** %do_dct, align 8, !tbaa !20
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %16, i32 0, i32 0
  %forward_DCT6 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub5, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT6, align 8, !tbaa !19
  %17 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %do_dct7 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %17, i32 0, i32 1
  store void (i32*)* @jpeg_fdct_ifast, void (i32*)** %do_dct7, align 8, !tbaa !20
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %18 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %pub9 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %18, i32 0, i32 0
  %forward_DCT10 = getelementptr inbounds %struct.jpeg_forward_dct, %struct.jpeg_forward_dct* %pub9, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* @forward_DCT_float, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)** %forward_DCT10, align 8, !tbaa !19
  %19 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %19, i32 0, i32 3
  store void (float*)* @jpeg_fdct_float, void (float*)** %do_float_dct, align 8, !tbaa !21
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 47, i32* %msg_code, align 4, !tbaa !23
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err11, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %26 = bitcast %struct.jpeg_compress_struct* %25 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* %26)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.4, %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %27 = load i32, i32* %i, align 4, !tbaa !26
  %cmp = icmp slt i32 %27, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %29, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors, i32 0, i64 %idxprom
  store i32* null, i32** %arrayidx, align 8, !tbaa !2
  %30 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom12 = sext i32 %30 to i64
  %31 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %31, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors, i32 0, i64 %idxprom12
  store float* null, float** %arrayidx13, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  %34 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_fdctmgr(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %ci = alloca i32, align 4
  %qtblno = alloca i32, align 4
  %i = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %qtbl = alloca %struct.JQUANT_TBL*, align 8
  %dtbl = alloca i32*, align 8
  %fdtbl = alloca float*, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 58
  %2 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_forward_dct* %2 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %3, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i32** %dtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  store i32 0, i32* %ci, align 4, !tbaa !26
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 14
  %11 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !27
  store %struct.jpeg_component_info* %11, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.114, %entry
  %12 = load i32, i32* %ci, align 4, !tbaa !26
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 12
  %14 = load i32, i32* %num_components, align 4, !tbaa !28
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 4
  %16 = load i32, i32* %quant_tbl_no, align 4, !tbaa !29
  store i32 %16, i32* %qtblno, align 4, !tbaa !26
  %17 = load i32, i32* %qtblno, align 4, !tbaa !26
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i32, i32* %qtblno, align 4, !tbaa !26
  %cmp3 = icmp sge i32 %18, 4
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %19 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  %21 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx, align 8, !tbaa !2
  %cmp5 = icmp eq %struct.JQUANT_TBL* %21, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %for.body
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 5
  store i32 51, i32* %msg_code, align 4, !tbaa !23
  %24 = load i32, i32* %qtblno, align 4, !tbaa !26
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !22
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 6
  %i7 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %i7, i32 0, i64 0
  store i32 %24, i32* %arrayidx8, align 4, !tbaa !26
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !22
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !25
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.4
  %32 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom10 = sext i32 %32 to i64
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 15
  %arrayidx12 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs11, i32 0, i64 %idxprom10
  %34 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %arrayidx12, align 8, !tbaa !2
  store %struct.JQUANT_TBL* %34, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 28
  %36 = load i32, i32* %dct_method, align 4, !tbaa !18
  switch i32 %36, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.31
    i32 2, label %sw.bb.65
  ]

sw.bb:                                            ; preds = %if.end
  %37 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom13 = sext i32 %37 to i64
  %38 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %38, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors, i32 0, i64 %idxprom13
  %39 = load i32*, i32** %arrayidx14, align 8, !tbaa !2
  %cmp15 = icmp eq i32* %39, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %sw.bb
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 1
  %41 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %41, i32 0, i32 0
  %42 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %44 = bitcast %struct.jpeg_compress_struct* %43 to %struct.jpeg_common_struct*
  %call = call i8* %42(%struct.jpeg_common_struct* %44, i32 1, i64 256)
  %45 = bitcast i8* %call to i32*
  %46 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom17 = sext i32 %46 to i64
  %47 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors18 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %47, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors18, i32 0, i64 %idxprom17
  store i32* %45, i32** %arrayidx19, align 8, !tbaa !2
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %sw.bb
  %48 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom21 = sext i32 %48 to i64
  %49 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors22 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %49, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors22, i32 0, i64 %idxprom21
  %50 = load i32*, i32** %arrayidx23, align 8, !tbaa !2
  store i32* %50, i32** %dtbl, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.end.20
  %51 = load i32, i32* %i, align 4, !tbaa !26
  %cmp25 = icmp slt i32 %51, 64
  br i1 %cmp25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.24
  %52 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom27 = sext i32 %52 to i64
  %53 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %53, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom27
  %54 = load i16, i16* %arrayidx28, align 2, !tbaa !31
  %conv = zext i16 %54 to i32
  %shl = shl i32 %conv, 3
  %55 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom29 = sext i32 %55 to i64
  %56 = load i32*, i32** %dtbl, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i32, i32* %56, i64 %idxprom29
  store i32 %shl, i32* %arrayidx30, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %57 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond.24

for.end:                                          ; preds = %for.cond.24
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end
  %58 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom32 = sext i32 %58 to i64
  %59 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors33 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %59, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors33, i32 0, i64 %idxprom32
  %60 = load i32*, i32** %arrayidx34, align 8, !tbaa !2
  %cmp35 = icmp eq i32* %60, null
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %sw.bb.31
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 1
  %62 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem38, align 8, !tbaa !6
  %alloc_small39 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %62, i32 0, i32 0
  %63 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small39, align 8, !tbaa !11
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %65 = bitcast %struct.jpeg_compress_struct* %64 to %struct.jpeg_common_struct*
  %call40 = call i8* %63(%struct.jpeg_common_struct* %65, i32 1, i64 256)
  %66 = bitcast i8* %call40 to i32*
  %67 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom41 = sext i32 %67 to i64
  %68 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors42 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %68, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors42, i32 0, i64 %idxprom41
  store i32* %66, i32** %arrayidx43, align 8, !tbaa !2
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %sw.bb.31
  %69 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom45 = sext i32 %69 to i64
  %70 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors46 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %70, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors46, i32 0, i64 %idxprom45
  %71 = load i32*, i32** %arrayidx47, align 8, !tbaa !2
  store i32* %71, i32** %dtbl, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.62, %if.end.44
  %72 = load i32, i32* %i, align 4, !tbaa !26
  %cmp49 = icmp slt i32 %72, 64
  br i1 %cmp49, label %for.body.51, label %for.end.64

for.body.51:                                      ; preds = %for.cond.48
  %73 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom52 = sext i32 %73 to i64
  %74 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval53 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %74, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval53, i32 0, i64 %idxprom52
  %75 = load i16, i16* %arrayidx54, align 2, !tbaa !31
  %conv55 = zext i16 %75 to i64
  %76 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom56 = sext i32 %76 to i64
  %arrayidx57 = getelementptr inbounds [64 x i16], [64 x i16]* @start_pass_fdctmgr.aanscales, i32 0, i64 %idxprom56
  %77 = load i16, i16* %arrayidx57, align 2, !tbaa !31
  %conv58 = sext i16 %77 to i64
  %mul = mul nsw i64 %conv55, %conv58
  %add = add nsw i64 %mul, 1024
  %shr = ashr i64 %add, 11
  %conv59 = trunc i64 %shr to i32
  %78 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom60 = sext i32 %78 to i64
  %79 = load i32*, i32** %dtbl, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i32, i32* %79, i64 %idxprom60
  store i32 %conv59, i32* %arrayidx61, align 4, !tbaa !26
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.51
  %80 = load i32, i32* %i, align 4, !tbaa !26
  %inc63 = add nsw i32 %80, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !26
  br label %for.cond.48

for.end.64:                                       ; preds = %for.cond.48
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.end
  %81 = bitcast float** %fdtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #3
  %82 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #3
  %83 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #3
  %84 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom66 = sext i32 %84 to i64
  %85 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %85, i32 0, i32 4
  %arrayidx67 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors, i32 0, i64 %idxprom66
  %86 = load float*, float** %arrayidx67, align 8, !tbaa !2
  %cmp68 = icmp eq float* %86, null
  br i1 %cmp68, label %if.then.70, label %if.end.77

if.then.70:                                       ; preds = %sw.bb.65
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 1
  %88 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem71, align 8, !tbaa !6
  %alloc_small72 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %88, i32 0, i32 0
  %89 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small72, align 8, !tbaa !11
  %90 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %91 = bitcast %struct.jpeg_compress_struct* %90 to %struct.jpeg_common_struct*
  %call73 = call i8* %89(%struct.jpeg_common_struct* %91, i32 1, i64 256)
  %92 = bitcast i8* %call73 to float*
  %93 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom74 = sext i32 %93 to i64
  %94 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %float_divisors75 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %94, i32 0, i32 4
  %arrayidx76 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors75, i32 0, i64 %idxprom74
  store float* %92, float** %arrayidx76, align 8, !tbaa !2
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.70, %sw.bb.65
  %95 = load i32, i32* %qtblno, align 4, !tbaa !26
  %idxprom78 = sext i32 %95 to i64
  %96 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %float_divisors79 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %96, i32 0, i32 4
  %arrayidx80 = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors79, i32 0, i64 %idxprom78
  %97 = load float*, float** %arrayidx80, align 8, !tbaa !2
  store float* %97, float** %fdtbl, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !26
  store i32 0, i32* %row, align 4, !tbaa !26
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.107, %if.end.77
  %98 = load i32, i32* %row, align 4, !tbaa !26
  %cmp82 = icmp slt i32 %98, 8
  br i1 %cmp82, label %for.body.84, label %for.end.109

for.body.84:                                      ; preds = %for.cond.81
  store i32 0, i32* %col, align 4, !tbaa !26
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.104, %for.body.84
  %99 = load i32, i32* %col, align 4, !tbaa !26
  %cmp86 = icmp slt i32 %99, 8
  br i1 %cmp86, label %for.body.88, label %for.end.106

for.body.88:                                      ; preds = %for.cond.85
  %100 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom89 = sext i32 %100 to i64
  %101 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %qtbl, align 8, !tbaa !2
  %quantval90 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %101, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval90, i32 0, i64 %idxprom89
  %102 = load i16, i16* %arrayidx91, align 2, !tbaa !31
  %conv92 = uitofp i16 %102 to double
  %103 = load i32, i32* %row, align 4, !tbaa !26
  %idxprom93 = sext i32 %103 to i64
  %arrayidx94 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i32 0, i64 %idxprom93
  %104 = load double, double* %arrayidx94, align 8, !tbaa !32
  %mul95 = fmul double %conv92, %104
  %105 = load i32, i32* %col, align 4, !tbaa !26
  %idxprom96 = sext i32 %105 to i64
  %arrayidx97 = getelementptr inbounds [8 x double], [8 x double]* @start_pass_fdctmgr.aanscalefactor, i32 0, i64 %idxprom96
  %106 = load double, double* %arrayidx97, align 8, !tbaa !32
  %mul98 = fmul double %mul95, %106
  %mul99 = fmul double %mul98, 8.000000e+00
  %div = fdiv double 1.000000e+00, %mul99
  %conv100 = fptrunc double %div to float
  %107 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom101 = sext i32 %107 to i64
  %108 = load float*, float** %fdtbl, align 8, !tbaa !2
  %arrayidx102 = getelementptr inbounds float, float* %108, i64 %idxprom101
  store float %conv100, float* %arrayidx102, align 4, !tbaa !33
  %109 = load i32, i32* %i, align 4, !tbaa !26
  %inc103 = add nsw i32 %109, 1
  store i32 %inc103, i32* %i, align 4, !tbaa !26
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.88
  %110 = load i32, i32* %col, align 4, !tbaa !26
  %inc105 = add nsw i32 %110, 1
  store i32 %inc105, i32* %col, align 4, !tbaa !26
  br label %for.cond.85

for.end.106:                                      ; preds = %for.cond.85
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.end.106
  %111 = load i32, i32* %row, align 4, !tbaa !26
  %inc108 = add nsw i32 %111, 1
  store i32 %inc108, i32* %row, align 4, !tbaa !26
  br label %for.cond.81

for.end.109:                                      ; preds = %for.cond.81
  %112 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #3
  %113 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #3
  %114 = bitcast float** %fdtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %115, i32 0, i32 0
  %116 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err110, align 8, !tbaa !22
  %msg_code111 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %116, i32 0, i32 5
  store i32 47, i32* %msg_code111, align 4, !tbaa !23
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err112 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 0
  %118 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err112, align 8, !tbaa !22
  %error_exit113 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %118, i32 0, i32 0
  %119 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit113, align 8, !tbaa !25
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %121 = bitcast %struct.jpeg_compress_struct* %120 to %struct.jpeg_common_struct*
  call void %119(%struct.jpeg_common_struct* %121)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.109, %for.end.64, %for.end
  br label %for.inc.114

for.inc.114:                                      ; preds = %sw.epilog
  %122 = load i32, i32* %ci, align 4, !tbaa !26
  %inc115 = add nsw i32 %122, 1
  store i32 %inc115, i32* %ci, align 4, !tbaa !26
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 1
  store %struct.jpeg_component_info* %incdec.ptr, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  %124 = bitcast i32** %dtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #3
  %125 = bitcast %struct.JQUANT_TBL** %qtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #3
  %126 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #3
  %127 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #3
  %128 = bitcast i32* %qtblno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #3
  %129 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #3
  %130 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @forward_DCT(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %sample_data, [64 x i16]* %coef_blocks, i32 %start_row, i32 %start_col, i32 %num_blocks) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %sample_data.addr = alloca i8**, align 8
  %coef_blocks.addr = alloca [64 x i16]*, align 8
  %start_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num_blocks.addr = alloca i32, align 4
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %do_dct = alloca void (i32*)*, align 8
  %divisors = alloca i32*, align 8
  %workspace = alloca [64 x i32], align 16
  %bi = alloca i32, align 4
  %workspaceptr = alloca i32*, align 8
  %elemptr = alloca i8*, align 8
  %elemr = alloca i32, align 4
  %temp = alloca i32, align 4
  %qval = alloca i32, align 4
  %i = alloca i32, align 4
  %output_ptr = alloca i16*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !2
  store [64 x i16]* %coef_blocks, [64 x i16]** %coef_blocks.addr, align 8, !tbaa !2
  store i32 %start_row, i32* %start_row.addr, align 4, !tbaa !26
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !26
  store i32 %num_blocks, i32* %num_blocks.addr, align 4, !tbaa !26
  %0 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 58
  %2 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_forward_dct* %2 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %3, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %4 = bitcast void (i32*)** %do_dct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %do_dct2 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %5, i32 0, i32 1
  %6 = load void (i32*)*, void (i32*)** %do_dct2, align 8, !tbaa !20
  store void (i32*)* %6, void (i32*)** %do_dct, align 8, !tbaa !2
  %7 = bitcast i32** %divisors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 4
  %9 = load i32, i32* %quant_tbl_no, align 4, !tbaa !29
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %divisors3 = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %divisors3, i32 0, i64 %idxprom
  %11 = load i32*, i32** %arrayidx, align 8, !tbaa !2
  store i32* %11, i32** %divisors, align 8, !tbaa !2
  %12 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %12) #3
  %13 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = load i32, i32* %start_row.addr, align 4, !tbaa !26
  %15 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !2
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 %idx.ext
  store i8** %add.ptr, i8*** %sample_data.addr, align 8, !tbaa !2
  store i32 0, i32* %bi, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %16 = load i32, i32* %bi, align 4, !tbaa !26
  %17 = load i32, i32* %num_blocks.addr, align 4, !tbaa !26
  %cmp = icmp ult i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %18 = bitcast i32** %workspaceptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast i32* %elemr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #3
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  store i32* %arraydecay, i32** %workspaceptr, align 8, !tbaa !2
  store i32 0, i32* %elemr, align 4, !tbaa !26
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %elemr, align 4, !tbaa !26
  %cmp5 = icmp slt i32 %21, 8
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %22 = load i32, i32* %elemr, align 4, !tbaa !26
  %idxprom7 = sext i32 %22 to i64
  %23 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i8*, i8** %23, i64 %idxprom7
  %24 = load i8*, i8** %arrayidx8, align 8, !tbaa !2
  %25 = load i32, i32* %start_col.addr, align 4, !tbaa !26
  %idx.ext9 = zext i32 %25 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %24, i64 %idx.ext9
  store i8* %add.ptr10, i8** %elemptr, align 8, !tbaa !2
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %elemptr, align 8, !tbaa !2
  %27 = load i8, i8* %26, align 1, !tbaa !35
  %conv = zext i8 %27 to i32
  %sub = sub nsw i32 %conv, 128
  %28 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %incdec.ptr11, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub, i32* %28, align 4, !tbaa !26
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr12 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr12, i8** %elemptr, align 8, !tbaa !2
  %30 = load i8, i8* %29, align 1, !tbaa !35
  %conv13 = zext i8 %30 to i32
  %sub14 = sub nsw i32 %conv13, 128
  %31 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr15, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub14, i32* %31, align 4, !tbaa !26
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr16 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr16, i8** %elemptr, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !35
  %conv17 = zext i8 %33 to i32
  %sub18 = sub nsw i32 %conv17, 128
  %34 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr19 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %incdec.ptr19, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub18, i32* %34, align 4, !tbaa !26
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr20, i8** %elemptr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !35
  %conv21 = zext i8 %36 to i32
  %sub22 = sub nsw i32 %conv21, 128
  %37 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr23 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr23, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub22, i32* %37, align 4, !tbaa !26
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr24 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr24, i8** %elemptr, align 8, !tbaa !2
  %39 = load i8, i8* %38, align 1, !tbaa !35
  %conv25 = zext i8 %39 to i32
  %sub26 = sub nsw i32 %conv25, 128
  %40 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr27 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %incdec.ptr27, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub26, i32* %40, align 4, !tbaa !26
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr28 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr28, i8** %elemptr, align 8, !tbaa !2
  %42 = load i8, i8* %41, align 1, !tbaa !35
  %conv29 = zext i8 %42 to i32
  %sub30 = sub nsw i32 %conv29, 128
  %43 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr31 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %incdec.ptr31, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub30, i32* %43, align 4, !tbaa !26
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr32 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr32, i8** %elemptr, align 8, !tbaa !2
  %45 = load i8, i8* %44, align 1, !tbaa !35
  %conv33 = zext i8 %45 to i32
  %sub34 = sub nsw i32 %conv33, 128
  %46 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr35 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %incdec.ptr35, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub34, i32* %46, align 4, !tbaa !26
  %47 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr36 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr36, i8** %elemptr, align 8, !tbaa !2
  %48 = load i8, i8* %47, align 1, !tbaa !35
  %conv37 = zext i8 %48 to i32
  %sub38 = sub nsw i32 %conv37, 128
  %49 = load i32*, i32** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr39 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %incdec.ptr39, i32** %workspaceptr, align 8, !tbaa !2
  store i32 %sub38, i32* %49, align 4, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %50 = load i32, i32* %elemr, align 4, !tbaa !26
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %elemr, align 4, !tbaa !26
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %51 = bitcast i32* %elemr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #3
  %53 = bitcast i32** %workspaceptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = load void (i32*)*, void (i32*)** %do_dct, align 8, !tbaa !2
  %arraydecay40 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i32 0
  call void %54(i32* %arraydecay40)
  %55 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #3
  %56 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #3
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #3
  %58 = bitcast i16** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #3
  %59 = load i32, i32* %bi, align 4, !tbaa !26
  %idxprom41 = zext i32 %59 to i64
  %60 = load [64 x i16]*, [64 x i16]** %coef_blocks.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds [64 x i16], [64 x i16]* %60, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx42, i32 0, i32 0
  store i16* %arraydecay43, i16** %output_ptr, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.72, %for.end
  %61 = load i32, i32* %i, align 4, !tbaa !26
  %cmp45 = icmp slt i32 %61, 64
  br i1 %cmp45, label %for.body.47, label %for.end.74

for.body.47:                                      ; preds = %for.cond.44
  %62 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom48 = sext i32 %62 to i64
  %63 = load i32*, i32** %divisors, align 8, !tbaa !2
  %arrayidx49 = getelementptr inbounds i32, i32* %63, i64 %idxprom48
  %64 = load i32, i32* %arrayidx49, align 4, !tbaa !26
  store i32 %64, i32* %qval, align 4, !tbaa !26
  %65 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom50 = sext i32 %65 to i64
  %arrayidx51 = getelementptr inbounds [64 x i32], [64 x i32]* %workspace, i32 0, i64 %idxprom50
  %66 = load i32, i32* %arrayidx51, align 4, !tbaa !26
  store i32 %66, i32* %temp, align 4, !tbaa !26
  %67 = load i32, i32* %temp, align 4, !tbaa !26
  %cmp52 = icmp slt i32 %67, 0
  br i1 %cmp52, label %if.then, label %if.else.59

if.then:                                          ; preds = %for.body.47
  %68 = load i32, i32* %temp, align 4, !tbaa !26
  %sub54 = sub nsw i32 0, %68
  store i32 %sub54, i32* %temp, align 4, !tbaa !26
  %69 = load i32, i32* %qval, align 4, !tbaa !26
  %shr = ashr i32 %69, 1
  %70 = load i32, i32* %temp, align 4, !tbaa !26
  %add = add nsw i32 %70, %shr
  store i32 %add, i32* %temp, align 4, !tbaa !26
  %71 = load i32, i32* %temp, align 4, !tbaa !26
  %72 = load i32, i32* %qval, align 4, !tbaa !26
  %cmp55 = icmp sge i32 %71, %72
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.then
  %73 = load i32, i32* %qval, align 4, !tbaa !26
  %74 = load i32, i32* %temp, align 4, !tbaa !26
  %div = sdiv i32 %74, %73
  store i32 %div, i32* %temp, align 4, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %temp, align 4, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.57
  %75 = load i32, i32* %temp, align 4, !tbaa !26
  %sub58 = sub nsw i32 0, %75
  store i32 %sub58, i32* %temp, align 4, !tbaa !26
  br label %if.end.68

if.else.59:                                       ; preds = %for.body.47
  %76 = load i32, i32* %qval, align 4, !tbaa !26
  %shr60 = ashr i32 %76, 1
  %77 = load i32, i32* %temp, align 4, !tbaa !26
  %add61 = add nsw i32 %77, %shr60
  store i32 %add61, i32* %temp, align 4, !tbaa !26
  %78 = load i32, i32* %temp, align 4, !tbaa !26
  %79 = load i32, i32* %qval, align 4, !tbaa !26
  %cmp62 = icmp sge i32 %78, %79
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.59
  %80 = load i32, i32* %qval, align 4, !tbaa !26
  %81 = load i32, i32* %temp, align 4, !tbaa !26
  %div65 = sdiv i32 %81, %80
  store i32 %div65, i32* %temp, align 4, !tbaa !26
  br label %if.end.67

if.else.66:                                       ; preds = %if.else.59
  store i32 0, i32* %temp, align 4, !tbaa !26
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  %82 = load i32, i32* %temp, align 4, !tbaa !26
  %conv69 = trunc i32 %82 to i16
  %83 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom70 = sext i32 %83 to i64
  %84 = load i16*, i16** %output_ptr, align 8, !tbaa !2
  %arrayidx71 = getelementptr inbounds i16, i16* %84, i64 %idxprom70
  store i16 %conv69, i16* %arrayidx71, align 2, !tbaa !31
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.68
  %85 = load i32, i32* %i, align 4, !tbaa !26
  %inc73 = add nsw i32 %85, 1
  store i32 %inc73, i32* %i, align 4, !tbaa !26
  br label %for.cond.44

for.end.74:                                       ; preds = %for.cond.44
  %86 = bitcast i16** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %qval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #3
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %90 = load i32, i32* %bi, align 4, !tbaa !26
  %inc76 = add i32 %90, 1
  store i32 %inc76, i32* %bi, align 4, !tbaa !26
  %91 = load i32, i32* %start_col.addr, align 4, !tbaa !26
  %add77 = add i32 %91, 8
  store i32 %add77, i32* %start_col.addr, align 4, !tbaa !26
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %92 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #3
  %93 = bitcast [64 x i32]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %93) #3
  %94 = bitcast i32** %divisors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #3
  %95 = bitcast void (i32*)** %do_dct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  %96 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #3
  ret void
}

declare void @jpeg_fdct_islow(i32*) #2

declare void @jpeg_fdct_ifast(i32*) #2

; Function Attrs: nounwind ssp uwtable
define internal void @forward_DCT_float(%struct.jpeg_compress_struct* %cinfo, %struct.jpeg_component_info* %compptr, i8** %sample_data, [64 x i16]* %coef_blocks, i32 %start_row, i32 %start_col, i32 %num_blocks) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %compptr.addr = alloca %struct.jpeg_component_info*, align 8
  %sample_data.addr = alloca i8**, align 8
  %coef_blocks.addr = alloca [64 x i16]*, align 8
  %start_row.addr = alloca i32, align 4
  %start_col.addr = alloca i32, align 4
  %num_blocks.addr = alloca i32, align 4
  %fdct = alloca %struct.my_fdct_controller*, align 8
  %do_dct = alloca void (float*)*, align 8
  %divisors = alloca float*, align 8
  %workspace = alloca [64 x float], align 16
  %bi = alloca i32, align 4
  %workspaceptr = alloca float*, align 8
  %elemptr = alloca i8*, align 8
  %elemr = alloca i32, align 4
  %temp = alloca float, align 4
  %i = alloca i32, align 4
  %output_ptr = alloca i16*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jpeg_component_info* %compptr, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  store i8** %sample_data, i8*** %sample_data.addr, align 8, !tbaa !2
  store [64 x i16]* %coef_blocks, [64 x i16]** %coef_blocks.addr, align 8, !tbaa !2
  store i32 %start_row, i32* %start_row.addr, align 4, !tbaa !26
  store i32 %start_col, i32* %start_col.addr, align 4, !tbaa !26
  store i32 %num_blocks, i32* %num_blocks.addr, align 4, !tbaa !26
  %0 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %fdct1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 58
  %2 = load %struct.jpeg_forward_dct*, %struct.jpeg_forward_dct** %fdct1, align 8, !tbaa !14
  %3 = bitcast %struct.jpeg_forward_dct* %2 to %struct.my_fdct_controller*
  store %struct.my_fdct_controller* %3, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %4 = bitcast void (float*)** %do_dct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %do_float_dct = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %5, i32 0, i32 3
  %6 = load void (float*)*, void (float*)** %do_float_dct, align 8, !tbaa !21
  store void (float*)* %6, void (float*)** %do_dct, align 8, !tbaa !2
  %7 = bitcast float** %divisors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr.addr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %8, i32 0, i32 4
  %9 = load i32, i32* %quant_tbl_no, align 4, !tbaa !29
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.my_fdct_controller*, %struct.my_fdct_controller** %fdct, align 8, !tbaa !2
  %float_divisors = getelementptr inbounds %struct.my_fdct_controller, %struct.my_fdct_controller* %10, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x float*], [4 x float*]* %float_divisors, i32 0, i64 %idxprom
  %11 = load float*, float** %arrayidx, align 8, !tbaa !2
  store float* %11, float** %divisors, align 8, !tbaa !2
  %12 = bitcast [64 x float]* %workspace to i8*
  call void @llvm.lifetime.start(i64 256, i8* %12) #3
  %13 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  %14 = load i32, i32* %start_row.addr, align 4, !tbaa !26
  %15 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !2
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 %idx.ext
  store i8** %add.ptr, i8*** %sample_data.addr, align 8, !tbaa !2
  store i32 0, i32* %bi, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc.66, %entry
  %16 = load i32, i32* %bi, align 4, !tbaa !26
  %17 = load i32, i32* %num_blocks.addr, align 4, !tbaa !26
  %cmp = icmp ult i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  %18 = bitcast float** %workspaceptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #3
  %19 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast i32* %elemr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #3
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  store float* %arraydecay, float** %workspaceptr, align 8, !tbaa !2
  store i32 0, i32* %elemr, align 4, !tbaa !26
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %elemr, align 4, !tbaa !26
  %cmp3 = icmp slt i32 %21, 8
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %22 = load i32, i32* %elemr, align 4, !tbaa !26
  %idxprom5 = sext i32 %22 to i64
  %23 = load i8**, i8*** %sample_data.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i8*, i8** %23, i64 %idxprom5
  %24 = load i8*, i8** %arrayidx6, align 8, !tbaa !2
  %25 = load i32, i32* %start_col.addr, align 4, !tbaa !26
  %idx.ext7 = zext i32 %25 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %24, i64 %idx.ext7
  store i8* %add.ptr8, i8** %elemptr, align 8, !tbaa !2
  %26 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %elemptr, align 8, !tbaa !2
  %27 = load i8, i8* %26, align 1, !tbaa !35
  %conv = zext i8 %27 to i32
  %sub = sub nsw i32 %conv, 128
  %conv9 = sitofp i32 %sub to float
  %28 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr10 = getelementptr inbounds float, float* %28, i32 1
  store float* %incdec.ptr10, float** %workspaceptr, align 8, !tbaa !2
  store float %conv9, float* %28, align 4, !tbaa !33
  %29 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr11, i8** %elemptr, align 8, !tbaa !2
  %30 = load i8, i8* %29, align 1, !tbaa !35
  %conv12 = zext i8 %30 to i32
  %sub13 = sub nsw i32 %conv12, 128
  %conv14 = sitofp i32 %sub13 to float
  %31 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds float, float* %31, i32 1
  store float* %incdec.ptr15, float** %workspaceptr, align 8, !tbaa !2
  store float %conv14, float* %31, align 4, !tbaa !33
  %32 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr16 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr16, i8** %elemptr, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !35
  %conv17 = zext i8 %33 to i32
  %sub18 = sub nsw i32 %conv17, 128
  %conv19 = sitofp i32 %sub18 to float
  %34 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr20 = getelementptr inbounds float, float* %34, i32 1
  store float* %incdec.ptr20, float** %workspaceptr, align 8, !tbaa !2
  store float %conv19, float* %34, align 4, !tbaa !33
  %35 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr21 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr21, i8** %elemptr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !35
  %conv22 = zext i8 %36 to i32
  %sub23 = sub nsw i32 %conv22, 128
  %conv24 = sitofp i32 %sub23 to float
  %37 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr25 = getelementptr inbounds float, float* %37, i32 1
  store float* %incdec.ptr25, float** %workspaceptr, align 8, !tbaa !2
  store float %conv24, float* %37, align 4, !tbaa !33
  %38 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr26 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr26, i8** %elemptr, align 8, !tbaa !2
  %39 = load i8, i8* %38, align 1, !tbaa !35
  %conv27 = zext i8 %39 to i32
  %sub28 = sub nsw i32 %conv27, 128
  %conv29 = sitofp i32 %sub28 to float
  %40 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr30 = getelementptr inbounds float, float* %40, i32 1
  store float* %incdec.ptr30, float** %workspaceptr, align 8, !tbaa !2
  store float %conv29, float* %40, align 4, !tbaa !33
  %41 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr31 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr31, i8** %elemptr, align 8, !tbaa !2
  %42 = load i8, i8* %41, align 1, !tbaa !35
  %conv32 = zext i8 %42 to i32
  %sub33 = sub nsw i32 %conv32, 128
  %conv34 = sitofp i32 %sub33 to float
  %43 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr35 = getelementptr inbounds float, float* %43, i32 1
  store float* %incdec.ptr35, float** %workspaceptr, align 8, !tbaa !2
  store float %conv34, float* %43, align 4, !tbaa !33
  %44 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr36 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr36, i8** %elemptr, align 8, !tbaa !2
  %45 = load i8, i8* %44, align 1, !tbaa !35
  %conv37 = zext i8 %45 to i32
  %sub38 = sub nsw i32 %conv37, 128
  %conv39 = sitofp i32 %sub38 to float
  %46 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr40 = getelementptr inbounds float, float* %46, i32 1
  store float* %incdec.ptr40, float** %workspaceptr, align 8, !tbaa !2
  store float %conv39, float* %46, align 4, !tbaa !33
  %47 = load i8*, i8** %elemptr, align 8, !tbaa !2
  %incdec.ptr41 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr41, i8** %elemptr, align 8, !tbaa !2
  %48 = load i8, i8* %47, align 1, !tbaa !35
  %conv42 = zext i8 %48 to i32
  %sub43 = sub nsw i32 %conv42, 128
  %conv44 = sitofp i32 %sub43 to float
  %49 = load float*, float** %workspaceptr, align 8, !tbaa !2
  %incdec.ptr45 = getelementptr inbounds float, float* %49, i32 1
  store float* %incdec.ptr45, float** %workspaceptr, align 8, !tbaa !2
  store float %conv44, float* %49, align 4, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %50 = load i32, i32* %elemr, align 4, !tbaa !26
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %elemr, align 4, !tbaa !26
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %51 = bitcast i32* %elemr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i8** %elemptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #3
  %53 = bitcast float** %workspaceptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = load void (float*)*, void (float*)** %do_dct, align 8, !tbaa !2
  %arraydecay46 = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i32 0
  call void %54(float* %arraydecay46)
  %55 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #3
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #3
  %57 = bitcast i16** %output_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #3
  %58 = load i32, i32* %bi, align 4, !tbaa !26
  %idxprom47 = zext i32 %58 to i64
  %59 = load [64 x i16]*, [64 x i16]** %coef_blocks.addr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds [64 x i16], [64 x i16]* %59, i64 %idxprom47
  %arraydecay49 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx48, i32 0, i32 0
  store i16* %arraydecay49, i16** %output_ptr, align 8, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.63, %for.end
  %60 = load i32, i32* %i, align 4, !tbaa !26
  %cmp51 = icmp slt i32 %60, 64
  br i1 %cmp51, label %for.body.53, label %for.end.65

for.body.53:                                      ; preds = %for.cond.50
  %61 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom54 = sext i32 %61 to i64
  %arrayidx55 = getelementptr inbounds [64 x float], [64 x float]* %workspace, i32 0, i64 %idxprom54
  %62 = load float, float* %arrayidx55, align 4, !tbaa !33
  %63 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom56 = sext i32 %63 to i64
  %64 = load float*, float** %divisors, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds float, float* %64, i64 %idxprom56
  %65 = load float, float* %arrayidx57, align 4, !tbaa !33
  %mul = fmul float %62, %65
  store float %mul, float* %temp, align 4, !tbaa !33
  %66 = load float, float* %temp, align 4, !tbaa !33
  %add = fadd float %66, 1.638450e+04
  %conv58 = fptosi float %add to i32
  %sub59 = sub nsw i32 %conv58, 16384
  %conv60 = trunc i32 %sub59 to i16
  %67 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom61 = sext i32 %67 to i64
  %68 = load i16*, i16** %output_ptr, align 8, !tbaa !2
  %arrayidx62 = getelementptr inbounds i16, i16* %68, i64 %idxprom61
  store i16 %conv60, i16* %arrayidx62, align 2, !tbaa !31
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.53
  %69 = load i32, i32* %i, align 4, !tbaa !26
  %inc64 = add nsw i32 %69, 1
  store i32 %inc64, i32* %i, align 4, !tbaa !26
  br label %for.cond.50

for.end.65:                                       ; preds = %for.cond.50
  %70 = bitcast i16** %output_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #3
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %73 = load i32, i32* %bi, align 4, !tbaa !26
  %inc67 = add i32 %73, 1
  store i32 %inc67, i32* %bi, align 4, !tbaa !26
  %74 = load i32, i32* %start_col.addr, align 4, !tbaa !26
  %add68 = add i32 %74, 8
  store i32 %add68, i32* %start_col.addr, align 4, !tbaa !26
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  %75 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  %76 = bitcast [64 x float]* %workspace to i8*
  call void @llvm.lifetime.end(i64 256, i8* %76) #3
  %77 = bitcast float** %divisors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #3
  %78 = bitcast void (float*)** %do_dct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  %79 = bitcast %struct.my_fdct_controller** %fdct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  ret void
}

declare void @jpeg_fdct_float(float*) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!7 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !4, i64 52, !9, i64 56, !8, i64 64, !8, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !8, i64 232, !3, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !4, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !4, i64 284, !10, i64 286, !10, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !4, i64 320, !8, i64 352, !8, i64 356, !8, i64 360, !4, i64 364, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!8 = !{!"int", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!12, !3, i64 0}
!12 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !13, i64 88}
!13 = !{!"long", !4, i64 0}
!14 = !{!7, !3, i64 480}
!15 = !{!16, !3, i64 0}
!16 = !{!"", !17, i64 0, !3, i64 16, !4, i64 24, !3, i64 56, !4, i64 64}
!17 = !{!"jpeg_forward_dct", !3, i64 0, !3, i64 8}
!18 = !{!7, !4, i64 268}
!19 = !{!16, !3, i64 8}
!20 = !{!16, !3, i64 16}
!21 = !{!16, !3, i64 56}
!22 = !{!7, !3, i64 0}
!23 = !{!24, !8, i64 40}
!24 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!25 = !{!24, !3, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!7, !3, i64 80}
!28 = !{!7, !8, i64 68}
!29 = !{!30, !8, i64 16}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!31 = !{!10, !10, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !4, i64 0}
!35 = !{!4, !4, i64 0}
