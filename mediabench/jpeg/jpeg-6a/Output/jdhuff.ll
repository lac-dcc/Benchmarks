; ModuleID = 'jdhuff.c'
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
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], %struct.JHUFF_TBL*, [256 x i32], [256 x i8] }
%struct.bitread_working_state = type { i8*, i64, i32, i64, i32, %struct.jpeg_decompress_struct*, i32* }
%struct.huff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*] }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { [4 x i32] }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %cinfo, %struct.JHUFF_TBL* %htbl, %struct.d_derived_tbl** %pdtbl) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %htbl.addr = alloca %struct.JHUFF_TBL*, align 8
  %pdtbl.addr = alloca %struct.d_derived_tbl**, align 8
  %dtbl = alloca %struct.d_derived_tbl*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %si = alloca i32, align 4
  %lookbits = alloca i32, align 4
  %ctr = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 16
  %huffcode = alloca [257 x i32], align 16
  %code = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %htbl, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  store %struct.d_derived_tbl** %pdtbl, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  %0 = bitcast %struct.d_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  %4 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #4
  %5 = bitcast i32* %lookbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %6 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #4
  %7 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.start(i64 257, i8* %7) #4
  %8 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %8) #4
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #4
  %10 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  %11 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %10, align 8, !tbaa !2
  %cmp = icmp eq %struct.d_derived_tbl* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 1
  %13 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %13, i32 0, i32 0
  %14 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  %call = call i8* %14(%struct.jpeg_common_struct* %16, i32 1, i64 1640)
  %17 = bitcast i8* %call to %struct.d_derived_tbl*
  %18 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  store %struct.d_derived_tbl* %17, %struct.d_derived_tbl** %18, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.d_derived_tbl**, %struct.d_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  %20 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %19, align 8, !tbaa !2
  store %struct.d_derived_tbl* %20, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %21 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %22 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %22, i32 0, i32 3
  store %struct.JHUFF_TBL* %21, %struct.JHUFF_TBL** %pub, align 8, !tbaa !14
  store i32 0, i32* %p, align 4, !tbaa !16
  store i32 1, i32* %l, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.end
  %23 = load i32, i32* %l, align 4, !tbaa !16
  %cmp1 = icmp sle i32 %23, 16
  br i1 %cmp1, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4, !tbaa !16
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !16
  %25 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %26, i32 0, i32 0
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1, !tbaa !17
  %conv = zext i8 %27 to i32
  %cmp3 = icmp sle i32 %24, %conv
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %28 = load i32, i32* %l, align 4, !tbaa !16
  %conv6 = trunc i32 %28 to i8
  %29 = load i32, i32* %p, align 4, !tbaa !16
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %p, align 4, !tbaa !16
  %idxprom7 = sext i32 %29 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %30 = load i32, i32* %i, align 4, !tbaa !16
  %inc9 = add nsw i32 %30, 1
  store i32 %inc9, i32* %i, align 4, !tbaa !16
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %31 = load i32, i32* %l, align 4, !tbaa !16
  %inc11 = add nsw i32 %31, 1
  store i32 %inc11, i32* %l, align 4, !tbaa !16
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %32 = load i32, i32* %p, align 4, !tbaa !16
  %idxprom13 = sext i32 %32 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1, !tbaa !17
  store i32 0, i32* %code, align 4, !tbaa !16
  %arrayidx15 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 0
  %33 = load i8, i8* %arrayidx15, align 1, !tbaa !17
  %conv16 = sext i8 %33 to i32
  store i32 %conv16, i32* %si, align 4, !tbaa !16
  store i32 0, i32* %p, align 4, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end.12
  %34 = load i32, i32* %p, align 4, !tbaa !16
  %idxprom17 = sext i32 %34 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom17
  %35 = load i8, i8* %arrayidx18, align 1, !tbaa !17
  %tobool = icmp ne i8 %35, 0
  br i1 %tobool, label %while.body, label %while.end.31

while.body:                                       ; preds = %while.cond
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %while.body
  %36 = load i32, i32* %p, align 4, !tbaa !16
  %idxprom20 = sext i32 %36 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom20
  %37 = load i8, i8* %arrayidx21, align 1, !tbaa !17
  %conv22 = sext i8 %37 to i32
  %38 = load i32, i32* %si, align 4, !tbaa !16
  %cmp23 = icmp eq i32 %conv22, %38
  br i1 %cmp23, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %while.cond.19
  %39 = load i32, i32* %code, align 4, !tbaa !16
  %40 = load i32, i32* %p, align 4, !tbaa !16
  %inc26 = add nsw i32 %40, 1
  store i32 %inc26, i32* %p, align 4, !tbaa !16
  %idxprom27 = sext i32 %40 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom27
  store i32 %39, i32* %arrayidx28, align 4, !tbaa !16
  %41 = load i32, i32* %code, align 4, !tbaa !16
  %inc29 = add i32 %41, 1
  store i32 %inc29, i32* %code, align 4, !tbaa !16
  br label %while.cond.19

while.end:                                        ; preds = %while.cond.19
  %42 = load i32, i32* %code, align 4, !tbaa !16
  %shl = shl i32 %42, 1
  store i32 %shl, i32* %code, align 4, !tbaa !16
  %43 = load i32, i32* %si, align 4, !tbaa !16
  %inc30 = add nsw i32 %43, 1
  store i32 %inc30, i32* %si, align 4, !tbaa !16
  br label %while.cond

while.end.31:                                     ; preds = %while.cond
  store i32 0, i32* %p, align 4, !tbaa !16
  store i32 1, i32* %l, align 4, !tbaa !16
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.61, %while.end.31
  %44 = load i32, i32* %l, align 4, !tbaa !16
  %cmp33 = icmp sle i32 %44, 16
  br i1 %cmp33, label %for.body.35, label %for.end.63

for.body.35:                                      ; preds = %for.cond.32
  %45 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom36 = sext i32 %45 to i64
  %46 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %bits37 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %46, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [17 x i8], [17 x i8]* %bits37, i32 0, i64 %idxprom36
  %47 = load i8, i8* %arrayidx38, align 1, !tbaa !17
  %tobool39 = icmp ne i8 %47, 0
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %for.body.35
  %48 = load i32, i32* %p, align 4, !tbaa !16
  %49 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %valptr = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %50, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [17 x i32], [17 x i32]* %valptr, i32 0, i64 %idxprom41
  store i32 %48, i32* %arrayidx42, align 4, !tbaa !16
  %51 = load i32, i32* %p, align 4, !tbaa !16
  %idxprom43 = sext i32 %51 to i64
  %arrayidx44 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom43
  %52 = load i32, i32* %arrayidx44, align 4, !tbaa !16
  %conv45 = zext i32 %52 to i64
  %53 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom46 = sext i32 %53 to i64
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %mincode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %54, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [17 x i64], [17 x i64]* %mincode, i32 0, i64 %idxprom46
  store i64 %conv45, i64* %arrayidx47, align 8, !tbaa !18
  %55 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom48 = sext i32 %55 to i64
  %56 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %bits49 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %56, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [17 x i8], [17 x i8]* %bits49, i32 0, i64 %idxprom48
  %57 = load i8, i8* %arrayidx50, align 1, !tbaa !17
  %conv51 = zext i8 %57 to i32
  %58 = load i32, i32* %p, align 4, !tbaa !16
  %add = add nsw i32 %58, %conv51
  store i32 %add, i32* %p, align 4, !tbaa !16
  %59 = load i32, i32* %p, align 4, !tbaa !16
  %sub = sub nsw i32 %59, 1
  %idxprom52 = sext i32 %sub to i64
  %arrayidx53 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom52
  %60 = load i32, i32* %arrayidx53, align 4, !tbaa !16
  %conv54 = zext i32 %60 to i64
  %61 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom55 = sext i32 %61 to i64
  %62 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %62, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode, i32 0, i64 %idxprom55
  store i64 %conv54, i64* %arrayidx56, align 8, !tbaa !18
  br label %if.end.60

if.else:                                          ; preds = %for.body.35
  %63 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom57 = sext i32 %63 to i64
  %64 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %maxcode58 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %64, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode58, i32 0, i64 %idxprom57
  store i64 -1, i64* %arrayidx59, align 8, !tbaa !18
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.40
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %65 = load i32, i32* %l, align 4, !tbaa !16
  %inc62 = add nsw i32 %65, 1
  store i32 %inc62, i32* %l, align 4, !tbaa !16
  br label %for.cond.32

for.end.63:                                       ; preds = %for.cond.32
  %66 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %maxcode64 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %66, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode64, i32 0, i64 17
  store i64 1048575, i64* %arrayidx65, align 8, !tbaa !18
  %67 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %67, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i32 0
  %68 = bitcast i32* %arraydecay to i8*
  %69 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %look_nbits66 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %69, i32 0, i32 4
  %arraydecay67 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits66, i32 0, i32 0
  %70 = bitcast i32* %arraydecay67 to i8*
  %71 = call i64 @llvm.objectsize.i64.p0i8(i8* %70, i1 false)
  %call68 = call i8* @__memset_chk(i8* %68, i32 0, i64 1024, i64 %71) #4
  store i32 0, i32* %p, align 4, !tbaa !16
  store i32 1, i32* %l, align 4, !tbaa !16
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.105, %for.end.63
  %72 = load i32, i32* %l, align 4, !tbaa !16
  %cmp70 = icmp sle i32 %72, 8
  br i1 %cmp70, label %for.body.72, label %for.end.107

for.body.72:                                      ; preds = %for.cond.69
  store i32 1, i32* %i, align 4, !tbaa !16
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.101, %for.body.72
  %73 = load i32, i32* %i, align 4, !tbaa !16
  %74 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom74 = sext i32 %74 to i64
  %75 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %bits75 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %75, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [17 x i8], [17 x i8]* %bits75, i32 0, i64 %idxprom74
  %76 = load i8, i8* %arrayidx76, align 1, !tbaa !17
  %conv77 = zext i8 %76 to i32
  %cmp78 = icmp sle i32 %73, %conv77
  br i1 %cmp78, label %for.body.80, label %for.end.104

for.body.80:                                      ; preds = %for.cond.73
  %77 = load i32, i32* %p, align 4, !tbaa !16
  %idxprom81 = sext i32 %77 to i64
  %arrayidx82 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom81
  %78 = load i32, i32* %arrayidx82, align 4, !tbaa !16
  %79 = load i32, i32* %l, align 4, !tbaa !16
  %sub83 = sub nsw i32 8, %79
  %shl84 = shl i32 %78, %sub83
  store i32 %shl84, i32* %lookbits, align 4, !tbaa !16
  %80 = load i32, i32* %l, align 4, !tbaa !16
  %sub85 = sub nsw i32 8, %80
  %shl86 = shl i32 1, %sub85
  store i32 %shl86, i32* %ctr, align 4, !tbaa !16
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.99, %for.body.80
  %81 = load i32, i32* %ctr, align 4, !tbaa !16
  %cmp88 = icmp sgt i32 %81, 0
  br i1 %cmp88, label %for.body.90, label %for.end.100

for.body.90:                                      ; preds = %for.cond.87
  %82 = load i32, i32* %l, align 4, !tbaa !16
  %83 = load i32, i32* %lookbits, align 4, !tbaa !16
  %idxprom91 = sext i32 %83 to i64
  %84 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %look_nbits92 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %84, i32 0, i32 4
  %arrayidx93 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits92, i32 0, i64 %idxprom91
  store i32 %82, i32* %arrayidx93, align 4, !tbaa !16
  %85 = load i32, i32* %p, align 4, !tbaa !16
  %idxprom94 = sext i32 %85 to i64
  %86 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %86, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom94
  %87 = load i8, i8* %arrayidx95, align 1, !tbaa !17
  %88 = load i32, i32* %lookbits, align 4, !tbaa !16
  %idxprom96 = sext i32 %88 to i64
  %89 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dtbl, align 8, !tbaa !2
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %89, i32 0, i32 5
  %arrayidx97 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom96
  store i8 %87, i8* %arrayidx97, align 1, !tbaa !17
  %90 = load i32, i32* %lookbits, align 4, !tbaa !16
  %inc98 = add nsw i32 %90, 1
  store i32 %inc98, i32* %lookbits, align 4, !tbaa !16
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.90
  %91 = load i32, i32* %ctr, align 4, !tbaa !16
  %dec = add nsw i32 %91, -1
  store i32 %dec, i32* %ctr, align 4, !tbaa !16
  br label %for.cond.87

for.end.100:                                      ; preds = %for.cond.87
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.end.100
  %92 = load i32, i32* %i, align 4, !tbaa !16
  %inc102 = add nsw i32 %92, 1
  store i32 %inc102, i32* %i, align 4, !tbaa !16
  %93 = load i32, i32* %p, align 4, !tbaa !16
  %inc103 = add nsw i32 %93, 1
  store i32 %inc103, i32* %p, align 4, !tbaa !16
  br label %for.cond.73

for.end.104:                                      ; preds = %for.cond.73
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %94 = load i32, i32* %l, align 4, !tbaa !16
  %inc106 = add nsw i32 %94, 1
  store i32 %inc106, i32* %l, align 4, !tbaa !16
  br label %for.cond.69

for.end.107:                                      ; preds = %for.cond.69
  %95 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #4
  %96 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %96) #4
  %97 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.end(i64 257, i8* %97) #4
  %98 = bitcast i32* %ctr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #4
  %99 = bitcast i32* %lookbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #4
  %100 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #4
  %101 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #4
  %102 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #4
  %103 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #4
  %104 = bitcast %struct.d_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #4
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %state, i64 %get_buffer, i32 %bits_left, i32 %nbits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bitread_working_state*, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %nbits.addr = alloca i32, align 4
  %next_input_byte = alloca i8*, align 8
  %bytes_in_buffer = alloca i64, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.bitread_working_state* %state, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  store i64 %get_buffer, i64* %get_buffer.addr, align 8, !tbaa !18
  store i32 %bits_left, i32* %bits_left.addr, align 4, !tbaa !16
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !16
  %0 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %next_input_byte1 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %1, i32 0, i32 0
  %2 = load i8*, i8** %next_input_byte1, align 8, !tbaa !19
  store i8* %2, i8** %next_input_byte, align 8, !tbaa !2
  %3 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #4
  %4 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %bytes_in_buffer2 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %4, i32 0, i32 1
  %5 = load i64, i64* %bytes_in_buffer2, align 8, !tbaa !21
  store i64 %5, i64* %bytes_in_buffer, align 8, !tbaa !18
  %6 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %entry
  %7 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %cmp = icmp slt i32 %7, 25
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %8, i32 0, i32 2
  %9 = load i32, i32* %unread_marker, align 4, !tbaa !22
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %no_more_data

if.end:                                           ; preds = %while.body
  %10 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !18
  %cmp4 = icmp eq i64 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end
  %11 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %11, i32 0, i32 5
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !23
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 5
  %13 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !24
  %fill_input_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %13, i32 0, i32 3
  %14 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer, align 8, !tbaa !25
  %15 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo6 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %15, i32 0, i32 5
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo6, align 8, !tbaa !23
  %call = call i32 %14(%struct.jpeg_decompress_struct* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.then.5
  %17 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo9 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %17, i32 0, i32 5
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo9, align 8, !tbaa !23
  %src10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 5
  %19 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src10, align 8, !tbaa !24
  %next_input_byte11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %19, i32 0, i32 0
  %20 = load i8*, i8** %next_input_byte11, align 8, !tbaa !27
  store i8* %20, i8** %next_input_byte, align 8, !tbaa !2
  %21 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo12 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %21, i32 0, i32 5
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo12, align 8, !tbaa !23
  %src13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 5
  %23 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src13, align 8, !tbaa !24
  %bytes_in_buffer14 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %23, i32 0, i32 1
  %24 = load i64, i64* %bytes_in_buffer14, align 8, !tbaa !28
  store i64 %24, i64* %bytes_in_buffer, align 8, !tbaa !18
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.8, %if.end
  %25 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !18
  %dec = add i64 %25, -1
  store i64 %dec, i64* %bytes_in_buffer, align 8, !tbaa !18
  %26 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %next_input_byte, align 8, !tbaa !2
  %27 = load i8, i8* %26, align 1, !tbaa !17
  %conv = zext i8 %27 to i32
  store i32 %conv, i32* %c, align 4, !tbaa !16
  %28 = load i32, i32* %c, align 4, !tbaa !16
  %cmp16 = icmp eq i32 %28, 255
  br i1 %cmp16, label %if.then.18, label %if.end.59

if.then.18:                                       ; preds = %if.end.15
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.18
  %29 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !18
  %cmp19 = icmp eq i64 %29, 0
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %do.body
  %30 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo22 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %30, i32 0, i32 5
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo22, align 8, !tbaa !23
  %src23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 5
  %32 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src23, align 8, !tbaa !24
  %fill_input_buffer24 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %32, i32 0, i32 3
  %33 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %fill_input_buffer24, align 8, !tbaa !25
  %34 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo25 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %34, i32 0, i32 5
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo25, align 8, !tbaa !23
  %call26 = call i32 %33(%struct.jpeg_decompress_struct* %35)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.then.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.then.21
  %36 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo30 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %36, i32 0, i32 5
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo30, align 8, !tbaa !23
  %src31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 5
  %38 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src31, align 8, !tbaa !24
  %next_input_byte32 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %38, i32 0, i32 0
  %39 = load i8*, i8** %next_input_byte32, align 8, !tbaa !27
  store i8* %39, i8** %next_input_byte, align 8, !tbaa !2
  %40 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %40, i32 0, i32 5
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo33, align 8, !tbaa !23
  %src34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 5
  %42 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src34, align 8, !tbaa !24
  %bytes_in_buffer35 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %42, i32 0, i32 1
  %43 = load i64, i64* %bytes_in_buffer35, align 8, !tbaa !28
  store i64 %43, i64* %bytes_in_buffer, align 8, !tbaa !18
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.29, %do.body
  %44 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !18
  %dec37 = add i64 %44, -1
  store i64 %dec37, i64* %bytes_in_buffer, align 8, !tbaa !18
  %45 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %incdec.ptr38 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr38, i8** %next_input_byte, align 8, !tbaa !2
  %46 = load i8, i8* %45, align 1, !tbaa !17
  %conv39 = zext i8 %46 to i32
  store i32 %conv39, i32* %c, align 4, !tbaa !16
  br label %do.cond

do.cond:                                          ; preds = %if.end.36
  %47 = load i32, i32* %c, align 4, !tbaa !16
  %cmp40 = icmp eq i32 %47, 255
  br i1 %cmp40, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %48 = load i32, i32* %c, align 4, !tbaa !16
  %cmp42 = icmp eq i32 %48, 0
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %do.end
  store i32 255, i32* %c, align 4, !tbaa !16
  br label %if.end.58

if.else:                                          ; preds = %do.end
  %49 = load i32, i32* %c, align 4, !tbaa !16
  %50 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %unread_marker45 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %50, i32 0, i32 2
  store i32 %49, i32* %unread_marker45, align 4, !tbaa !22
  br label %no_more_data

no_more_data:                                     ; preds = %if.else, %if.then
  %51 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %52 = load i32, i32* %nbits.addr, align 4, !tbaa !16
  %cmp46 = icmp sge i32 %51, %52
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %no_more_data
  br label %while.end

if.end.49:                                        ; preds = %no_more_data
  %53 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %53, i32 0, i32 6
  %54 = load i32*, i32** %printed_eod_ptr, align 8, !tbaa !29
  %55 = load i32, i32* %54, align 4, !tbaa !16
  %tobool50 = icmp ne i32 %55, 0
  br i1 %tobool50, label %if.end.57, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %56 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo52 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %56, i32 0, i32 5
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo52, align 8, !tbaa !23
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i32 0, i32 5
  store i32 113, i32* %msg_code, align 4, !tbaa !31
  %59 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo53 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %59, i32 0, i32 5
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo53, align 8, !tbaa !23
  %err54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err54, align 8, !tbaa !30
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 1
  %62 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !33
  %63 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo55 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %63, i32 0, i32 5
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo55, align 8, !tbaa !23
  %65 = bitcast %struct.jpeg_decompress_struct* %64 to %struct.jpeg_common_struct*
  call void %62(%struct.jpeg_common_struct* %65, i32 -1)
  %66 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %printed_eod_ptr56 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %66, i32 0, i32 6
  %67 = load i32*, i32** %printed_eod_ptr56, align 8, !tbaa !29
  store i32 1, i32* %67, align 4, !tbaa !16
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.51, %if.end.49
  store i32 0, i32* %c, align 4, !tbaa !16
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.44
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.15
  %68 = load i64, i64* %get_buffer.addr, align 8, !tbaa !18
  %shl = shl i64 %68, 8
  %69 = load i32, i32* %c, align 4, !tbaa !16
  %conv60 = sext i32 %69 to i64
  %or = or i64 %shl, %conv60
  store i64 %or, i64* %get_buffer.addr, align 8, !tbaa !18
  %70 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %add = add nsw i32 %70, 8
  store i32 %add, i32* %bits_left.addr, align 4, !tbaa !16
  br label %while.cond

while.end:                                        ; preds = %if.then.48, %while.cond
  %71 = load i8*, i8** %next_input_byte, align 8, !tbaa !2
  %72 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %next_input_byte61 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %72, i32 0, i32 0
  store i8* %71, i8** %next_input_byte61, align 8, !tbaa !19
  %73 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !18
  %74 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %bytes_in_buffer62 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %74, i32 0, i32 1
  store i64 %73, i64* %bytes_in_buffer62, align 8, !tbaa !21
  %75 = load i64, i64* %get_buffer.addr, align 8, !tbaa !18
  %76 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %get_buffer63 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %76, i32 0, i32 3
  store i64 %75, i64* %get_buffer63, align 8, !tbaa !34
  %77 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %78 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %bits_left64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %78, i32 0, i32 4
  store i32 %77, i32* %bits_left64, align 4, !tbaa !35
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.28, %if.then.7
  %79 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #4
  %80 = bitcast i64* %bytes_in_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #4
  %81 = bitcast i8** %next_input_byte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #4
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_huff_decode(%struct.bitread_working_state* %state, i64 %get_buffer, i32 %bits_left, %struct.d_derived_tbl* %htbl, i32 %min_bits) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.bitread_working_state*, align 8
  %get_buffer.addr = alloca i64, align 8
  %bits_left.addr = alloca i32, align 4
  %htbl.addr = alloca %struct.d_derived_tbl*, align 8
  %min_bits.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %code = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.bitread_working_state* %state, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  store i64 %get_buffer, i64* %get_buffer.addr, align 8, !tbaa !18
  store i32 %bits_left, i32* %bits_left.addr, align 4, !tbaa !16
  store %struct.d_derived_tbl* %htbl, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !2
  store i32 %min_bits, i32* %min_bits.addr, align 4, !tbaa !16
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load i32, i32* %min_bits.addr, align 4, !tbaa !16
  store i32 %1, i32* %l, align 4, !tbaa !16
  %2 = bitcast i64* %code to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #4
  %3 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %4 = load i32, i32* %l, align 4, !tbaa !16
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %5 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %6 = load i64, i64* %get_buffer.addr, align 8, !tbaa !18
  %7 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %8 = load i32, i32* %l, align 4, !tbaa !16
  %call = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %5, i64 %6, i32 %7, i32 %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %get_buffer2 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %9, i32 0, i32 3
  %10 = load i64, i64* %get_buffer2, align 8, !tbaa !34
  store i64 %10, i64* %get_buffer.addr, align 8, !tbaa !18
  %11 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %bits_left3 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %11, i32 0, i32 4
  %12 = load i32, i32* %bits_left3, align 4, !tbaa !35
  store i32 %12, i32* %bits_left.addr, align 4, !tbaa !16
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %13 = load i64, i64* %get_buffer.addr, align 8, !tbaa !18
  %14 = load i32, i32* %l, align 4, !tbaa !16
  %15 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %bits_left.addr, align 4, !tbaa !16
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %13, %sh_prom
  %conv = trunc i64 %shr to i32
  %16 = load i32, i32* %l, align 4, !tbaa !16
  %shl = shl i32 1, %16
  %sub5 = sub nsw i32 %shl, 1
  %and = and i32 %conv, %sub5
  %conv6 = sext i32 %and to i64
  store i64 %conv6, i64* %code, align 8, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %if.end.19, %if.end.4
  %17 = load i64, i64* %code, align 8, !tbaa !18
  %18 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !2
  %maxcode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %19, i32 0, i32 1
  %arrayidx = getelementptr inbounds [18 x i64], [18 x i64]* %maxcode, i32 0, i64 %idxprom
  %20 = load i64, i64* %arrayidx, align 8, !tbaa !18
  %cmp7 = icmp sgt i64 %17, %20
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i64, i64* %code, align 8, !tbaa !18
  %shl9 = shl i64 %21, 1
  store i64 %shl9, i64* %code, align 8, !tbaa !18
  %22 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %cmp10 = icmp slt i32 %22, 1
  br i1 %cmp10, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %while.body
  %23 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %24 = load i64, i64* %get_buffer.addr, align 8, !tbaa !18
  %25 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %call13 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %23, i64 %24, i32 %25, i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.12
  %26 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %get_buffer17 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %26, i32 0, i32 3
  %27 = load i64, i64* %get_buffer17, align 8, !tbaa !34
  store i64 %27, i64* %get_buffer.addr, align 8, !tbaa !18
  %28 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %bits_left18 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %28, i32 0, i32 4
  %29 = load i32, i32* %bits_left18, align 4, !tbaa !35
  store i32 %29, i32* %bits_left.addr, align 4, !tbaa !16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %while.body
  %30 = load i64, i64* %get_buffer.addr, align 8, !tbaa !18
  %31 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %sub20 = sub nsw i32 %31, 1
  store i32 %sub20, i32* %bits_left.addr, align 4, !tbaa !16
  %sh_prom21 = zext i32 %sub20 to i64
  %shr22 = ashr i64 %30, %sh_prom21
  %conv23 = trunc i64 %shr22 to i32
  %and24 = and i32 %conv23, 1
  %conv25 = sext i32 %and24 to i64
  %32 = load i64, i64* %code, align 8, !tbaa !18
  %or = or i64 %32, %conv25
  store i64 %or, i64* %code, align 8, !tbaa !18
  %33 = load i32, i32* %l, align 4, !tbaa !16
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %l, align 4, !tbaa !16
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i64, i64* %get_buffer.addr, align 8, !tbaa !18
  %35 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %get_buffer26 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %35, i32 0, i32 3
  store i64 %34, i64* %get_buffer26, align 8, !tbaa !34
  %36 = load i32, i32* %bits_left.addr, align 4, !tbaa !16
  %37 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %bits_left27 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %37, i32 0, i32 4
  store i32 %36, i32* %bits_left27, align 4, !tbaa !35
  %38 = load i32, i32* %l, align 4, !tbaa !16
  %cmp28 = icmp sgt i32 %38, 16
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %while.end
  %39 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %39, i32 0, i32 5
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo, align 8, !tbaa !23
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 5
  store i32 114, i32* %msg_code, align 4, !tbaa !31
  %42 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %42, i32 0, i32 5
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo31, align 8, !tbaa !23
  %err32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err32, align 8, !tbaa !30
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 1
  %45 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !33
  %46 = load %struct.bitread_working_state*, %struct.bitread_working_state** %state.addr, align 8, !tbaa !2
  %cinfo33 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %46, i32 0, i32 5
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo33, align 8, !tbaa !23
  %48 = bitcast %struct.jpeg_decompress_struct* %47 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %48, i32 -1)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %while.end
  %49 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom35 = sext i32 %49 to i64
  %50 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !2
  %valptr = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %50, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [17 x i32], [17 x i32]* %valptr, i32 0, i64 %idxprom35
  %51 = load i32, i32* %arrayidx36, align 4, !tbaa !16
  %52 = load i64, i64* %code, align 8, !tbaa !18
  %53 = load i32, i32* %l, align 4, !tbaa !16
  %idxprom37 = sext i32 %53 to i64
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !2
  %mincode = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %54, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [17 x i64], [17 x i64]* %mincode, i32 0, i64 %idxprom37
  %55 = load i64, i64* %arrayidx38, align 8, !tbaa !18
  %sub39 = sub nsw i64 %52, %55
  %conv40 = trunc i64 %sub39 to i32
  %add = add nsw i32 %51, %conv40
  %idxprom41 = sext i32 %add to i64
  %56 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %htbl.addr, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %56, i32 0, i32 3
  %57 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %pub, align 8, !tbaa !14
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %57, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom41
  %58 = load i8, i8* %arrayidx42, align 1, !tbaa !17
  %conv43 = zext i8 %58 to i32
  store i32 %conv43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.30, %if.then.15, %if.then.1
  %59 = bitcast i64* %code to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #4
  %60 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #4
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind ssp uwtable
define void @jinit_huff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 0
  %4 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = bitcast %struct.jpeg_decompress_struct* %5 to %struct.jpeg_common_struct*
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 120)
  %7 = bitcast i8* %call to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %7, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %8 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %9 = bitcast %struct.huff_entropy_decoder* %8 to %struct.jpeg_entropy_decoder*
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 79
  store %struct.jpeg_entropy_decoder* %9, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !36
  %11 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub, i32 0, i32 0
  store void (%struct.jpeg_decompress_struct*)* @start_pass_huff_decoder, void (%struct.jpeg_decompress_struct*)** %start_pass, align 8, !tbaa !37
  %12 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %12, i32 0, i32 0
  %decode_mcu = getelementptr inbounds %struct.jpeg_entropy_decoder, %struct.jpeg_entropy_decoder* %pub2, i32 0, i32 1
  store i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* @decode_mcu, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)** %decode_mcu, align 8, !tbaa !42
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !16
  %cmp = icmp slt i32 %13, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %15, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx, align 8, !tbaa !2
  %16 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom3 = sext i32 %16 to i64
  %17 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %17, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom3
  store %struct.d_derived_tbl* null, %struct.d_derived_tbl** %arrayidx4, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #4
  %20 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_huff_decoder(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !36
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #4
  %5 = bitcast i32* %dctbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %6 = bitcast i32* %actbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #4
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #4
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 68
  %9 = load i32, i32* %Ss, align 4, !tbaa !43
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Se = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 69
  %11 = load i32, i32* %Se, align 4, !tbaa !44
  %cmp2 = icmp ne i32 %11, 63
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 70
  %13 = load i32, i32* %Ah, align 4, !tbaa !45
  %cmp4 = icmp ne i32 %13, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.3
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 71
  %15 = load i32, i32* %Al, align 4, !tbaa !46
  %cmp6 = icmp ne i32 %15, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false.3, %lor.lhs.false, %entry
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !30
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 118, i32* %msg_code, align 4, !tbaa !31
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !30
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 1
  %20 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !33
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %22 = bitcast %struct.jpeg_decompress_struct* %21 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* %22, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.5
  store i32 0, i32* %ci, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %ci, align 4, !tbaa !16
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 62
  %25 = load i32, i32* %comps_in_scan, align 4, !tbaa !47
  %cmp8 = icmp slt i32 %23, %25
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %ci, align 4, !tbaa !16
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 63
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %28, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 5
  %30 = load i32, i32* %dc_tbl_no, align 4, !tbaa !48
  store i32 %30, i32* %dctbl, align 4, !tbaa !16
  %31 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %31, i32 0, i32 6
  %32 = load i32, i32* %ac_tbl_no, align 4, !tbaa !50
  store i32 %32, i32* %actbl, align 4, !tbaa !16
  %33 = load i32, i32* %dctbl, align 4, !tbaa !16
  %cmp9 = icmp slt i32 %33, 0
  br i1 %cmp9, label %if.then.16, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %for.body
  %34 = load i32, i32* %dctbl, align 4, !tbaa !16
  %cmp11 = icmp sge i32 %34, 4
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %35 = load i32, i32* %dctbl, align 4, !tbaa !16
  %idxprom13 = sext i32 %35 to i64
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 40
  %arrayidx14 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom13
  %37 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx14, align 8, !tbaa !2
  %cmp15 = icmp eq %struct.JHUFF_TBL* %37, null
  br i1 %cmp15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.10, %for.body
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !30
  %msg_code18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 5
  store i32 49, i32* %msg_code18, align 4, !tbaa !31
  %40 = load i32, i32* %dctbl, align 4, !tbaa !16
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err19, align 8, !tbaa !30
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %40, i32* %arrayidx20, align 4, !tbaa !16
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err21, align 8, !tbaa !30
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i32 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !51
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* %47)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %lor.lhs.false.12
  %48 = load i32, i32* %actbl, align 4, !tbaa !16
  %cmp23 = icmp slt i32 %48, 0
  br i1 %cmp23, label %if.then.30, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.22
  %49 = load i32, i32* %actbl, align 4, !tbaa !16
  %cmp25 = icmp sge i32 %49, 4
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.24
  %50 = load i32, i32* %actbl, align 4, !tbaa !16
  %idxprom27 = sext i32 %50 to i64
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 41
  %arrayidx28 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom27
  %52 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx28, align 8, !tbaa !2
  %cmp29 = icmp eq %struct.JHUFF_TBL* %52, null
  br i1 %cmp29, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %lor.lhs.false.26, %lor.lhs.false.24, %if.end.22
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !30
  %msg_code32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 5
  store i32 49, i32* %msg_code32, align 4, !tbaa !31
  %55 = load i32, i32* %actbl, align 4, !tbaa !16
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 0
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err33, align 8, !tbaa !30
  %msg_parm34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 6
  %i35 = bitcast %union.anon* %msg_parm34 to [8 x i32]*
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %i35, i32 0, i64 0
  store i32 %55, i32* %arrayidx36, align 4, !tbaa !16
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %err37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 0
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err37, align 8, !tbaa !30
  %error_exit38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 0
  %60 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit38, align 8, !tbaa !51
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %62 = bitcast %struct.jpeg_decompress_struct* %61 to %struct.jpeg_common_struct*
  call void %60(%struct.jpeg_common_struct* %62)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.30, %lor.lhs.false.26
  %63 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %64 = load i32, i32* %dctbl, align 4, !tbaa !16
  %idxprom40 = sext i32 %64 to i64
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 40
  %arrayidx42 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs41, i32 0, i64 %idxprom40
  %66 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx42, align 8, !tbaa !2
  %67 = load i32, i32* %dctbl, align 4, !tbaa !16
  %idxprom43 = sext i32 %67 to i64
  %68 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %68, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom43
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %63, %struct.JHUFF_TBL* %66, %struct.d_derived_tbl** %arrayidx44)
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %70 = load i32, i32* %actbl, align 4, !tbaa !16
  %idxprom45 = sext i32 %70 to i64
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 41
  %arrayidx47 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs46, i32 0, i64 %idxprom45
  %72 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx47, align 8, !tbaa !2
  %73 = load i32, i32* %actbl, align 4, !tbaa !16
  %idxprom48 = sext i32 %73 to i64
  %74 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %74, i32 0, i32 5
  %arrayidx49 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom48
  call void @jpeg_make_d_derived_tbl(%struct.jpeg_decompress_struct* %69, %struct.JHUFF_TBL* %72, %struct.d_derived_tbl** %arrayidx49)
  %75 = load i32, i32* %ci, align 4, !tbaa !16
  %idxprom50 = sext i32 %75 to i64
  %76 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %76, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom50
  store i32 0, i32* %arrayidx51, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %77 = load i32, i32* %ci, align 4, !tbaa !16
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %78 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %78, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  store i32 0, i32* %bits_left, align 4, !tbaa !52
  %79 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate52 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %79, i32 0, i32 1
  %get_buffer = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate52, i32 0, i32 0
  store i64 0, i64* %get_buffer, align 8, !tbaa !53
  %80 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate53 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %80, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate53, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4, !tbaa !54
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 49
  %82 = load i32, i32* %restart_interval, align 4, !tbaa !55
  %83 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %83, i32 0, i32 3
  store i32 %82, i32* %restarts_to_go, align 4, !tbaa !56
  %84 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #4
  %85 = bitcast i32* %actbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #4
  %86 = bitcast i32* %dctbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #4
  %87 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #4
  %88 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_mcu(%struct.jpeg_decompress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %block = alloca [64 x i16]*, align 8
  %get_buffer = alloca i64, align 8
  %bits_left = alloca i32, align 4
  %br_state = alloca %struct.bitread_working_state, align 8
  %state = alloca %struct.savable_state, align 4
  %dctbl = alloca %struct.d_derived_tbl*, align 8
  %actbl = alloca %struct.d_derived_tbl*, align 8
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  %nb = alloca i32, align 4
  %look = alloca i32, align 4
  %nb98 = alloca i32, align 4
  %look99 = alloca i32, align 4
  %nb193 = alloca i32, align 4
  %look194 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !36
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #4
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %6 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #4
  %7 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #4
  %8 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #4
  %9 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #4
  %10 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #4
  %11 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #4
  %12 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %12) #4
  %13 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #4
  %14 = bitcast %struct.d_derived_tbl** %dctbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #4
  %15 = bitcast %struct.d_derived_tbl** %actbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #4
  %16 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 49
  %18 = load i32, i32* %restart_interval, align 4, !tbaa !55
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %19 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %19, i32 0, i32 3
  %20 = load i32, i32* %restarts_to_go, align 4, !tbaa !56
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i32 @process_restart(%struct.jpeg_decompress_struct* %21)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end:                                           ; preds = %if.then.2
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cinfo7 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 5
  store %struct.jpeg_decompress_struct* %22, %struct.jpeg_decompress_struct** %cinfo7, align 8, !tbaa !23
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 5
  %24 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src, align 8, !tbaa !24
  %next_input_byte = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %24, i32 0, i32 0
  %25 = load i8*, i8** %next_input_byte, align 8, !tbaa !27
  %next_input_byte8 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  store i8* %25, i8** %next_input_byte8, align 8, !tbaa !19
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 5
  %27 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src9, align 8, !tbaa !24
  %bytes_in_buffer = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %27, i32 0, i32 1
  %28 = load i64, i64* %bytes_in_buffer, align 8, !tbaa !28
  %bytes_in_buffer10 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  store i64 %28, i64* %bytes_in_buffer10, align 8, !tbaa !21
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 72
  %30 = load i32, i32* %unread_marker, align 4, !tbaa !57
  %unread_marker11 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  store i32 %30, i32* %unread_marker11, align 4, !tbaa !22
  %31 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %31, i32 0, i32 1
  %get_buffer12 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 0
  %32 = load i64, i64* %get_buffer12, align 8, !tbaa !53
  store i64 %32, i64* %get_buffer, align 8, !tbaa !18
  %33 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate13 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %33, i32 0, i32 1
  %bits_left14 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate13, i32 0, i32 1
  %34 = load i32, i32* %bits_left14, align 4, !tbaa !52
  store i32 %34, i32* %bits_left, align 4, !tbaa !16
  %35 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate15 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %35, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate15, i32 0, i32 2
  %printed_eod_ptr = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 6
  store i32* %printed_eod, i32** %printed_eod_ptr, align 8, !tbaa !29
  %36 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %36, i32 0, i32 2
  %37 = bitcast %struct.savable_state* %state to i8*
  %38 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 4, i1 false), !tbaa.struct !58
  store i32 0, i32* %blkn, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc.265, %if.end.6
  %39 = load i32, i32* %blkn, align 4, !tbaa !16
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 66
  %41 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !59
  %cmp16 = icmp slt i32 %39, %41
  br i1 %cmp16, label %for.body, label %for.end.267

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %blkn, align 4, !tbaa !16
  %idxprom = sext i32 %42 to i64
  %43 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %43, i64 %idxprom
  %44 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  store [64 x i16]* %44, [64 x i16]** %block, align 8, !tbaa !2
  %45 = load i32, i32* %blkn, align 4, !tbaa !16
  %idxprom17 = sext i32 %45 to i64
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 67
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom17
  %47 = load i32, i32* %arrayidx18, align 4, !tbaa !16
  store i32 %47, i32* %ci, align 4, !tbaa !16
  %48 = load i32, i32* %ci, align 4, !tbaa !16
  %idxprom19 = sext i32 %48 to i64
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 63
  %arrayidx20 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom19
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx20, align 8, !tbaa !2
  store %struct.jpeg_component_info* %50, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 5
  %52 = load i32, i32* %dc_tbl_no, align 4, !tbaa !48
  %idxprom21 = sext i32 %52 to i64
  %53 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %53, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom21
  %54 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx22, align 8, !tbaa !2
  store %struct.d_derived_tbl* %54, %struct.d_derived_tbl** %dctbl, align 8, !tbaa !2
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 6
  %56 = load i32, i32* %ac_tbl_no, align 4, !tbaa !50
  %idxprom23 = sext i32 %56 to i64
  %57 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %57, i32 0, i32 5
  %arrayidx24 = getelementptr inbounds [4 x %struct.d_derived_tbl*], [4 x %struct.d_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom23
  %58 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %arrayidx24, align 8, !tbaa !2
  store %struct.d_derived_tbl* %58, %struct.d_derived_tbl** %actbl, align 8, !tbaa !2
  %59 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #4
  %60 = bitcast i32* %look to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #4
  %61 = load i32, i32* %bits_left, align 4, !tbaa !16
  %cmp25 = icmp slt i32 %61, 8
  br i1 %cmp25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %for.body
  %62 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %63 = load i32, i32* %bits_left, align 4, !tbaa !16
  %call27 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %62, i32 %63, i32 0)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.26
  %get_buffer31 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %64 = load i64, i64* %get_buffer31, align 8, !tbaa !34
  store i64 %64, i64* %get_buffer, align 8, !tbaa !18
  %bits_left32 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %65 = load i32, i32* %bits_left32, align 4, !tbaa !35
  store i32 %65, i32* %bits_left, align 4, !tbaa !16
  %66 = load i32, i32* %bits_left, align 4, !tbaa !16
  %cmp33 = icmp slt i32 %66, 8
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  store i32 1, i32* %nb, align 4, !tbaa !16
  br label %label1

if.end.35:                                        ; preds = %if.end.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.body
  %67 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %68 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub = sub nsw i32 %68, 8
  %sh_prom = zext i32 %sub to i64
  %shr = ashr i64 %67, %sh_prom
  %conv = trunc i64 %shr to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %look, align 4, !tbaa !16
  %69 = load i32, i32* %look, align 4, !tbaa !16
  %idxprom37 = sext i32 %69 to i64
  %70 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dctbl, align 8, !tbaa !2
  %look_nbits = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %70, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits, i32 0, i64 %idxprom37
  %71 = load i32, i32* %arrayidx38, align 4, !tbaa !16
  store i32 %71, i32* %nb, align 4, !tbaa !16
  %cmp39 = icmp ne i32 %71, 0
  br i1 %cmp39, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.36
  %72 = load i32, i32* %nb, align 4, !tbaa !16
  %73 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub42 = sub nsw i32 %73, %72
  store i32 %sub42, i32* %bits_left, align 4, !tbaa !16
  %74 = load i32, i32* %look, align 4, !tbaa !16
  %idxprom43 = sext i32 %74 to i64
  %75 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dctbl, align 8, !tbaa !2
  %look_sym = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %75, i32 0, i32 5
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym, i32 0, i64 %idxprom43
  %76 = load i8, i8* %arrayidx44, align 1, !tbaa !17
  %conv45 = zext i8 %76 to i32
  store i32 %conv45, i32* %s, align 4, !tbaa !16
  br label %if.end.53

if.else:                                          ; preds = %if.end.36
  store i32 9, i32* %nb, align 4, !tbaa !16
  br label %label1

label1:                                           ; preds = %if.else, %if.then.34
  %77 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %78 = load i32, i32* %bits_left, align 4, !tbaa !16
  %79 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %dctbl, align 8, !tbaa !2
  %80 = load i32, i32* %nb, align 4, !tbaa !16
  %call46 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %77, i32 %78, %struct.d_derived_tbl* %79, i32 %80)
  store i32 %call46, i32* %s, align 4, !tbaa !16
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %label1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %label1
  %get_buffer51 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %81 = load i64, i64* %get_buffer51, align 8, !tbaa !34
  store i64 %81, i64* %get_buffer, align 8, !tbaa !18
  %bits_left52 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %82 = load i32, i32* %bits_left52, align 4, !tbaa !35
  store i32 %82, i32* %bits_left, align 4, !tbaa !16
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.50, %if.then.41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.53, %if.then.49, %if.then.29
  %83 = bitcast i32* %look to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #4
  %84 = bitcast i32* %nb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #4
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.282 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %85 = load i32, i32* %s, align 4, !tbaa !16
  %tobool55 = icmp ne i32 %85, 0
  br i1 %tobool55, label %if.then.56, label %if.end.79

if.then.56:                                       ; preds = %cleanup.cont
  %86 = load i32, i32* %bits_left, align 4, !tbaa !16
  %87 = load i32, i32* %s, align 4, !tbaa !16
  %cmp57 = icmp slt i32 %86, %87
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.then.56
  %88 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %89 = load i32, i32* %bits_left, align 4, !tbaa !16
  %90 = load i32, i32* %s, align 4, !tbaa !16
  %call60 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %88, i32 %89, i32 %90)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.63, label %if.then.62

if.then.62:                                       ; preds = %if.then.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.63:                                        ; preds = %if.then.59
  %get_buffer64 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %91 = load i64, i64* %get_buffer64, align 8, !tbaa !34
  store i64 %91, i64* %get_buffer, align 8, !tbaa !18
  %bits_left65 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %92 = load i32, i32* %bits_left65, align 4, !tbaa !35
  store i32 %92, i32* %bits_left, align 4, !tbaa !16
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.63, %if.then.56
  %93 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %94 = load i32, i32* %s, align 4, !tbaa !16
  %95 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub67 = sub nsw i32 %95, %94
  store i32 %sub67, i32* %bits_left, align 4, !tbaa !16
  %sh_prom68 = zext i32 %sub67 to i64
  %shr69 = ashr i64 %93, %sh_prom68
  %conv70 = trunc i64 %shr69 to i32
  %96 = load i32, i32* %s, align 4, !tbaa !16
  %shl = shl i32 1, %96
  %sub71 = sub nsw i32 %shl, 1
  %and72 = and i32 %conv70, %sub71
  store i32 %and72, i32* %r, align 4, !tbaa !16
  %97 = load i32, i32* %r, align 4, !tbaa !16
  %98 = load i32, i32* %s, align 4, !tbaa !16
  %idxprom73 = sext i32 %98 to i64
  %arrayidx74 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom73
  %99 = load i32, i32* %arrayidx74, align 4, !tbaa !16
  %cmp75 = icmp slt i32 %97, %99
  br i1 %cmp75, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.66
  %100 = load i32, i32* %r, align 4, !tbaa !16
  %101 = load i32, i32* %s, align 4, !tbaa !16
  %idxprom77 = sext i32 %101 to i64
  %arrayidx78 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom77
  %102 = load i32, i32* %arrayidx78, align 4, !tbaa !16
  %add = add nsw i32 %100, %102
  br label %cond.end

cond.false:                                       ; preds = %if.end.66
  %103 = load i32, i32* %r, align 4, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %103, %cond.false ]
  store i32 %cond, i32* %s, align 4, !tbaa !16
  br label %if.end.79

if.end.79:                                        ; preds = %cond.end, %cleanup.cont
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_needed = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 12
  %105 = load i32, i32* %component_needed, align 4, !tbaa !60
  %tobool80 = icmp ne i32 %105, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %if.end.79
  br label %skip_ACs

if.end.82:                                        ; preds = %if.end.79
  %106 = load i32, i32* %ci, align 4, !tbaa !16
  %idxprom83 = sext i32 %106 to i64
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom83
  %107 = load i32, i32* %arrayidx84, align 4, !tbaa !16
  %108 = load i32, i32* %s, align 4, !tbaa !16
  %add85 = add nsw i32 %108, %107
  store i32 %add85, i32* %s, align 4, !tbaa !16
  %109 = load i32, i32* %s, align 4, !tbaa !16
  %110 = load i32, i32* %ci, align 4, !tbaa !16
  %idxprom86 = sext i32 %110 to i64
  %last_dc_val87 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %state, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val87, i32 0, i64 %idxprom86
  store i32 %109, i32* %arrayidx88, align 4, !tbaa !16
  %111 = load i32, i32* %s, align 4, !tbaa !16
  %conv89 = trunc i32 %111 to i16
  %112 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx90 = getelementptr inbounds [64 x i16], [64 x i16]* %112, i32 0, i64 0
  store i16 %conv89, i16* %arrayidx90, align 2, !tbaa !61
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %DCT_scaled_size = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %113, i32 0, i32 9
  %114 = load i32, i32* %DCT_scaled_size, align 4, !tbaa !62
  %cmp91 = icmp sgt i32 %114, 1
  br i1 %cmp91, label %if.then.93, label %if.else.188

if.then.93:                                       ; preds = %if.end.82
  store i32 1, i32* %k, align 4, !tbaa !16
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc, %if.then.93
  %115 = load i32, i32* %k, align 4, !tbaa !16
  %cmp95 = icmp slt i32 %115, 64
  br i1 %cmp95, label %for.body.97, label %for.end

for.body.97:                                      ; preds = %for.cond.94
  %116 = bitcast i32* %nb98 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #4
  %117 = bitcast i32* %look99 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #4
  %118 = load i32, i32* %bits_left, align 4, !tbaa !16
  %cmp100 = icmp slt i32 %118, 8
  br i1 %cmp100, label %if.then.102, label %if.end.113

if.then.102:                                      ; preds = %for.body.97
  %119 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %120 = load i32, i32* %bits_left, align 4, !tbaa !16
  %call103 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %119, i32 %120, i32 0)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.then.102
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.106:                                       ; preds = %if.then.102
  %get_buffer107 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %121 = load i64, i64* %get_buffer107, align 8, !tbaa !34
  store i64 %121, i64* %get_buffer, align 8, !tbaa !18
  %bits_left108 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %122 = load i32, i32* %bits_left108, align 4, !tbaa !35
  store i32 %122, i32* %bits_left, align 4, !tbaa !16
  %123 = load i32, i32* %bits_left, align 4, !tbaa !16
  %cmp109 = icmp slt i32 %123, 8
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.106
  store i32 1, i32* %nb98, align 4, !tbaa !16
  br label %label2

if.end.112:                                       ; preds = %if.end.106
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %for.body.97
  %124 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %125 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub114 = sub nsw i32 %125, 8
  %sh_prom115 = zext i32 %sub114 to i64
  %shr116 = ashr i64 %124, %sh_prom115
  %conv117 = trunc i64 %shr116 to i32
  %and118 = and i32 %conv117, 255
  store i32 %and118, i32* %look99, align 4, !tbaa !16
  %126 = load i32, i32* %look99, align 4, !tbaa !16
  %idxprom119 = sext i32 %126 to i64
  %127 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8, !tbaa !2
  %look_nbits120 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %127, i32 0, i32 4
  %arrayidx121 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits120, i32 0, i64 %idxprom119
  %128 = load i32, i32* %arrayidx121, align 4, !tbaa !16
  store i32 %128, i32* %nb98, align 4, !tbaa !16
  %cmp122 = icmp ne i32 %128, 0
  br i1 %cmp122, label %if.then.124, label %if.else.130

if.then.124:                                      ; preds = %if.end.113
  %129 = load i32, i32* %nb98, align 4, !tbaa !16
  %130 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub125 = sub nsw i32 %130, %129
  store i32 %sub125, i32* %bits_left, align 4, !tbaa !16
  %131 = load i32, i32* %look99, align 4, !tbaa !16
  %idxprom126 = sext i32 %131 to i64
  %132 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8, !tbaa !2
  %look_sym127 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %132, i32 0, i32 5
  %arrayidx128 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym127, i32 0, i64 %idxprom126
  %133 = load i8, i8* %arrayidx128, align 1, !tbaa !17
  %conv129 = zext i8 %133 to i32
  store i32 %conv129, i32* %s, align 4, !tbaa !16
  br label %if.end.138

if.else.130:                                      ; preds = %if.end.113
  store i32 9, i32* %nb98, align 4, !tbaa !16
  br label %label2

label2:                                           ; preds = %if.else.130, %if.then.111
  %134 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %135 = load i32, i32* %bits_left, align 4, !tbaa !16
  %136 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8, !tbaa !2
  %137 = load i32, i32* %nb98, align 4, !tbaa !16
  %call131 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %134, i32 %135, %struct.d_derived_tbl* %136, i32 %137)
  store i32 %call131, i32* %s, align 4, !tbaa !16
  %cmp132 = icmp slt i32 %call131, 0
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %label2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.139

if.end.135:                                       ; preds = %label2
  %get_buffer136 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %138 = load i64, i64* %get_buffer136, align 8, !tbaa !34
  store i64 %138, i64* %get_buffer, align 8, !tbaa !18
  %bits_left137 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %139 = load i32, i32* %bits_left137, align 4, !tbaa !35
  store i32 %139, i32* %bits_left, align 4, !tbaa !16
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.135, %if.then.124
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.139

cleanup.139:                                      ; preds = %if.end.138, %if.then.134, %if.then.105
  %140 = bitcast i32* %look99 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #4
  %141 = bitcast i32* %nb98 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #4
  %cleanup.dest.141 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.141, label %cleanup.282 [
    i32 0, label %cleanup.cont.142
  ]

cleanup.cont.142:                                 ; preds = %cleanup.139
  %142 = load i32, i32* %s, align 4, !tbaa !16
  %shr143 = ashr i32 %142, 4
  store i32 %shr143, i32* %r, align 4, !tbaa !16
  %143 = load i32, i32* %s, align 4, !tbaa !16
  %and144 = and i32 %143, 15
  store i32 %and144, i32* %s, align 4, !tbaa !16
  %144 = load i32, i32* %s, align 4, !tbaa !16
  %tobool145 = icmp ne i32 %144, 0
  br i1 %tobool145, label %if.then.146, label %if.else.181

if.then.146:                                      ; preds = %cleanup.cont.142
  %145 = load i32, i32* %r, align 4, !tbaa !16
  %146 = load i32, i32* %k, align 4, !tbaa !16
  %add147 = add nsw i32 %146, %145
  store i32 %add147, i32* %k, align 4, !tbaa !16
  %147 = load i32, i32* %bits_left, align 4, !tbaa !16
  %148 = load i32, i32* %s, align 4, !tbaa !16
  %cmp148 = icmp slt i32 %147, %148
  br i1 %cmp148, label %if.then.150, label %if.end.157

if.then.150:                                      ; preds = %if.then.146
  %149 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %150 = load i32, i32* %bits_left, align 4, !tbaa !16
  %151 = load i32, i32* %s, align 4, !tbaa !16
  %call151 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %149, i32 %150, i32 %151)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.end.154, label %if.then.153

if.then.153:                                      ; preds = %if.then.150
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.154:                                       ; preds = %if.then.150
  %get_buffer155 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %152 = load i64, i64* %get_buffer155, align 8, !tbaa !34
  store i64 %152, i64* %get_buffer, align 8, !tbaa !18
  %bits_left156 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %153 = load i32, i32* %bits_left156, align 4, !tbaa !35
  store i32 %153, i32* %bits_left, align 4, !tbaa !16
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.154, %if.then.146
  %154 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %155 = load i32, i32* %s, align 4, !tbaa !16
  %156 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub158 = sub nsw i32 %156, %155
  store i32 %sub158, i32* %bits_left, align 4, !tbaa !16
  %sh_prom159 = zext i32 %sub158 to i64
  %shr160 = ashr i64 %154, %sh_prom159
  %conv161 = trunc i64 %shr160 to i32
  %157 = load i32, i32* %s, align 4, !tbaa !16
  %shl162 = shl i32 1, %157
  %sub163 = sub nsw i32 %shl162, 1
  %and164 = and i32 %conv161, %sub163
  store i32 %and164, i32* %r, align 4, !tbaa !16
  %158 = load i32, i32* %r, align 4, !tbaa !16
  %159 = load i32, i32* %s, align 4, !tbaa !16
  %idxprom165 = sext i32 %159 to i64
  %arrayidx166 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_test, i32 0, i64 %idxprom165
  %160 = load i32, i32* %arrayidx166, align 4, !tbaa !16
  %cmp167 = icmp slt i32 %158, %160
  br i1 %cmp167, label %cond.true.169, label %cond.false.173

cond.true.169:                                    ; preds = %if.end.157
  %161 = load i32, i32* %r, align 4, !tbaa !16
  %162 = load i32, i32* %s, align 4, !tbaa !16
  %idxprom170 = sext i32 %162 to i64
  %arrayidx171 = getelementptr inbounds [16 x i32], [16 x i32]* @extend_offset, i32 0, i64 %idxprom170
  %163 = load i32, i32* %arrayidx171, align 4, !tbaa !16
  %add172 = add nsw i32 %161, %163
  br label %cond.end.174

cond.false.173:                                   ; preds = %if.end.157
  %164 = load i32, i32* %r, align 4, !tbaa !16
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.173, %cond.true.169
  %cond175 = phi i32 [ %add172, %cond.true.169 ], [ %164, %cond.false.173 ]
  store i32 %cond175, i32* %s, align 4, !tbaa !16
  %165 = load i32, i32* %s, align 4, !tbaa !16
  %conv176 = trunc i32 %165 to i16
  %166 = load i32, i32* %k, align 4, !tbaa !16
  %idxprom177 = sext i32 %166 to i64
  %arrayidx178 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom177
  %167 = load i32, i32* %arrayidx178, align 4, !tbaa !16
  %idxprom179 = sext i32 %167 to i64
  %168 = load [64 x i16]*, [64 x i16]** %block, align 8, !tbaa !2
  %arrayidx180 = getelementptr inbounds [64 x i16], [64 x i16]* %168, i32 0, i64 %idxprom179
  store i16 %conv176, i16* %arrayidx180, align 2, !tbaa !61
  br label %if.end.187

if.else.181:                                      ; preds = %cleanup.cont.142
  %169 = load i32, i32* %r, align 4, !tbaa !16
  %cmp182 = icmp ne i32 %169, 15
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.else.181
  br label %for.end

if.end.185:                                       ; preds = %if.else.181
  %170 = load i32, i32* %k, align 4, !tbaa !16
  %add186 = add nsw i32 %170, 15
  store i32 %add186, i32* %k, align 4, !tbaa !16
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.185, %cond.end.174
  br label %for.inc

for.inc:                                          ; preds = %if.end.187
  %171 = load i32, i32* %k, align 4, !tbaa !16
  %inc = add nsw i32 %171, 1
  store i32 %inc, i32* %k, align 4, !tbaa !16
  br label %for.cond.94

for.end:                                          ; preds = %if.then.184, %for.cond.94
  br label %if.end.264

if.else.188:                                      ; preds = %if.end.82
  br label %skip_ACs

skip_ACs:                                         ; preds = %if.else.188, %if.then.81
  store i32 1, i32* %k, align 4, !tbaa !16
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.261, %skip_ACs
  %172 = load i32, i32* %k, align 4, !tbaa !16
  %cmp190 = icmp slt i32 %172, 64
  br i1 %cmp190, label %for.body.192, label %for.end.263

for.body.192:                                     ; preds = %for.cond.189
  %173 = bitcast i32* %nb193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #4
  %174 = bitcast i32* %look194 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #4
  %175 = load i32, i32* %bits_left, align 4, !tbaa !16
  %cmp195 = icmp slt i32 %175, 8
  br i1 %cmp195, label %if.then.197, label %if.end.208

if.then.197:                                      ; preds = %for.body.192
  %176 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %177 = load i32, i32* %bits_left, align 4, !tbaa !16
  %call198 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %176, i32 %177, i32 0)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.end.201, label %if.then.200

if.then.200:                                      ; preds = %if.then.197
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234

if.end.201:                                       ; preds = %if.then.197
  %get_buffer202 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %178 = load i64, i64* %get_buffer202, align 8, !tbaa !34
  store i64 %178, i64* %get_buffer, align 8, !tbaa !18
  %bits_left203 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %179 = load i32, i32* %bits_left203, align 4, !tbaa !35
  store i32 %179, i32* %bits_left, align 4, !tbaa !16
  %180 = load i32, i32* %bits_left, align 4, !tbaa !16
  %cmp204 = icmp slt i32 %180, 8
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.201
  store i32 1, i32* %nb193, align 4, !tbaa !16
  br label %label3

if.end.207:                                       ; preds = %if.end.201
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %for.body.192
  %181 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %182 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub209 = sub nsw i32 %182, 8
  %sh_prom210 = zext i32 %sub209 to i64
  %shr211 = ashr i64 %181, %sh_prom210
  %conv212 = trunc i64 %shr211 to i32
  %and213 = and i32 %conv212, 255
  store i32 %and213, i32* %look194, align 4, !tbaa !16
  %183 = load i32, i32* %look194, align 4, !tbaa !16
  %idxprom214 = sext i32 %183 to i64
  %184 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8, !tbaa !2
  %look_nbits215 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %184, i32 0, i32 4
  %arrayidx216 = getelementptr inbounds [256 x i32], [256 x i32]* %look_nbits215, i32 0, i64 %idxprom214
  %185 = load i32, i32* %arrayidx216, align 4, !tbaa !16
  store i32 %185, i32* %nb193, align 4, !tbaa !16
  %cmp217 = icmp ne i32 %185, 0
  br i1 %cmp217, label %if.then.219, label %if.else.225

if.then.219:                                      ; preds = %if.end.208
  %186 = load i32, i32* %nb193, align 4, !tbaa !16
  %187 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub220 = sub nsw i32 %187, %186
  store i32 %sub220, i32* %bits_left, align 4, !tbaa !16
  %188 = load i32, i32* %look194, align 4, !tbaa !16
  %idxprom221 = sext i32 %188 to i64
  %189 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8, !tbaa !2
  %look_sym222 = getelementptr inbounds %struct.d_derived_tbl, %struct.d_derived_tbl* %189, i32 0, i32 5
  %arrayidx223 = getelementptr inbounds [256 x i8], [256 x i8]* %look_sym222, i32 0, i64 %idxprom221
  %190 = load i8, i8* %arrayidx223, align 1, !tbaa !17
  %conv224 = zext i8 %190 to i32
  store i32 %conv224, i32* %s, align 4, !tbaa !16
  br label %if.end.233

if.else.225:                                      ; preds = %if.end.208
  store i32 9, i32* %nb193, align 4, !tbaa !16
  br label %label3

label3:                                           ; preds = %if.else.225, %if.then.206
  %191 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %192 = load i32, i32* %bits_left, align 4, !tbaa !16
  %193 = load %struct.d_derived_tbl*, %struct.d_derived_tbl** %actbl, align 8, !tbaa !2
  %194 = load i32, i32* %nb193, align 4, !tbaa !16
  %call226 = call i32 @jpeg_huff_decode(%struct.bitread_working_state* %br_state, i64 %191, i32 %192, %struct.d_derived_tbl* %193, i32 %194)
  store i32 %call226, i32* %s, align 4, !tbaa !16
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %label3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.234

if.end.230:                                       ; preds = %label3
  %get_buffer231 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %195 = load i64, i64* %get_buffer231, align 8, !tbaa !34
  store i64 %195, i64* %get_buffer, align 8, !tbaa !18
  %bits_left232 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %196 = load i32, i32* %bits_left232, align 4, !tbaa !35
  store i32 %196, i32* %bits_left, align 4, !tbaa !16
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.230, %if.then.219
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.234

cleanup.234:                                      ; preds = %if.end.233, %if.then.229, %if.then.200
  %197 = bitcast i32* %look194 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #4
  %198 = bitcast i32* %nb193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #4
  %cleanup.dest.236 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.236, label %cleanup.282 [
    i32 0, label %cleanup.cont.237
  ]

cleanup.cont.237:                                 ; preds = %cleanup.234
  %199 = load i32, i32* %s, align 4, !tbaa !16
  %shr238 = ashr i32 %199, 4
  store i32 %shr238, i32* %r, align 4, !tbaa !16
  %200 = load i32, i32* %s, align 4, !tbaa !16
  %and239 = and i32 %200, 15
  store i32 %and239, i32* %s, align 4, !tbaa !16
  %201 = load i32, i32* %s, align 4, !tbaa !16
  %tobool240 = icmp ne i32 %201, 0
  br i1 %tobool240, label %if.then.241, label %if.else.254

if.then.241:                                      ; preds = %cleanup.cont.237
  %202 = load i32, i32* %r, align 4, !tbaa !16
  %203 = load i32, i32* %k, align 4, !tbaa !16
  %add242 = add nsw i32 %203, %202
  store i32 %add242, i32* %k, align 4, !tbaa !16
  %204 = load i32, i32* %bits_left, align 4, !tbaa !16
  %205 = load i32, i32* %s, align 4, !tbaa !16
  %cmp243 = icmp slt i32 %204, %205
  br i1 %cmp243, label %if.then.245, label %if.end.252

if.then.245:                                      ; preds = %if.then.241
  %206 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %207 = load i32, i32* %bits_left, align 4, !tbaa !16
  %208 = load i32, i32* %s, align 4, !tbaa !16
  %call246 = call i32 @jpeg_fill_bit_buffer(%struct.bitread_working_state* %br_state, i64 %206, i32 %207, i32 %208)
  %tobool247 = icmp ne i32 %call246, 0
  br i1 %tobool247, label %if.end.249, label %if.then.248

if.then.248:                                      ; preds = %if.then.245
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.249:                                       ; preds = %if.then.245
  %get_buffer250 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 3
  %209 = load i64, i64* %get_buffer250, align 8, !tbaa !34
  store i64 %209, i64* %get_buffer, align 8, !tbaa !18
  %bits_left251 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 4
  %210 = load i32, i32* %bits_left251, align 4, !tbaa !35
  store i32 %210, i32* %bits_left, align 4, !tbaa !16
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.249, %if.then.241
  %211 = load i32, i32* %s, align 4, !tbaa !16
  %212 = load i32, i32* %bits_left, align 4, !tbaa !16
  %sub253 = sub nsw i32 %212, %211
  store i32 %sub253, i32* %bits_left, align 4, !tbaa !16
  br label %if.end.260

if.else.254:                                      ; preds = %cleanup.cont.237
  %213 = load i32, i32* %r, align 4, !tbaa !16
  %cmp255 = icmp ne i32 %213, 15
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.else.254
  br label %for.end.263

if.end.258:                                       ; preds = %if.else.254
  %214 = load i32, i32* %k, align 4, !tbaa !16
  %add259 = add nsw i32 %214, 15
  store i32 %add259, i32* %k, align 4, !tbaa !16
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.258, %if.end.252
  br label %for.inc.261

for.inc.261:                                      ; preds = %if.end.260
  %215 = load i32, i32* %k, align 4, !tbaa !16
  %inc262 = add nsw i32 %215, 1
  store i32 %inc262, i32* %k, align 4, !tbaa !16
  br label %for.cond.189

for.end.263:                                      ; preds = %if.then.257, %for.cond.189
  br label %if.end.264

if.end.264:                                       ; preds = %for.end.263, %for.end
  br label %for.inc.265

for.inc.265:                                      ; preds = %if.end.264
  %216 = load i32, i32* %blkn, align 4, !tbaa !16
  %inc266 = add nsw i32 %216, 1
  store i32 %inc266, i32* %blkn, align 4, !tbaa !16
  br label %for.cond

for.end.267:                                      ; preds = %for.cond
  %next_input_byte268 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 0
  %217 = load i8*, i8** %next_input_byte268, align 8, !tbaa !19
  %218 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src269 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %218, i32 0, i32 5
  %219 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src269, align 8, !tbaa !24
  %next_input_byte270 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %219, i32 0, i32 0
  store i8* %217, i8** %next_input_byte270, align 8, !tbaa !27
  %bytes_in_buffer271 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 1
  %220 = load i64, i64* %bytes_in_buffer271, align 8, !tbaa !21
  %221 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %src272 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %221, i32 0, i32 5
  %222 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %src272, align 8, !tbaa !24
  %bytes_in_buffer273 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %222, i32 0, i32 1
  store i64 %220, i64* %bytes_in_buffer273, align 8, !tbaa !28
  %unread_marker274 = getelementptr inbounds %struct.bitread_working_state, %struct.bitread_working_state* %br_state, i32 0, i32 2
  %223 = load i32, i32* %unread_marker274, align 4, !tbaa !22
  %224 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %unread_marker275 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %224, i32 0, i32 72
  store i32 %223, i32* %unread_marker275, align 4, !tbaa !57
  %225 = load i64, i64* %get_buffer, align 8, !tbaa !18
  %226 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate276 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %226, i32 0, i32 1
  %get_buffer277 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate276, i32 0, i32 0
  store i64 %225, i64* %get_buffer277, align 8, !tbaa !53
  %227 = load i32, i32* %bits_left, align 4, !tbaa !16
  %228 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate278 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %228, i32 0, i32 1
  %bits_left279 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate278, i32 0, i32 1
  store i32 %227, i32* %bits_left279, align 4, !tbaa !52
  %229 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved280 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %229, i32 0, i32 2
  %230 = bitcast %struct.savable_state* %saved280 to i8*
  %231 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %230, i8* %231, i64 16, i32 4, i1 false), !tbaa.struct !58
  %232 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go281 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %232, i32 0, i32 3
  %233 = load i32, i32* %restarts_to_go281, align 4, !tbaa !56
  %dec = add i32 %233, -1
  store i32 %dec, i32* %restarts_to_go281, align 4, !tbaa !56
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.282

cleanup.282:                                      ; preds = %for.end.267, %if.then.248, %cleanup.234, %if.then.153, %cleanup.139, %if.then.62, %cleanup, %if.then.4
  %234 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #4
  %235 = bitcast %struct.d_derived_tbl** %actbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #4
  %236 = bitcast %struct.d_derived_tbl** %dctbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #4
  %237 = bitcast %struct.savable_state* %state to i8*
  call void @llvm.lifetime.end(i64 16, i8* %237) #4
  %238 = bitcast %struct.bitread_working_state* %br_state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %238) #4
  %239 = bitcast i32* %bits_left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #4
  %240 = bitcast i64* %get_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %240) #4
  %241 = bitcast [64 x i16]** %block to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #4
  %242 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #4
  %243 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #4
  %244 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #4
  %245 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #4
  %246 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #4
  %247 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #4
  %248 = load i32, i32* %retval
  ret i32 %248
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_restart(%struct.jpeg_decompress_struct* %cinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_decompress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_decoder*, align 8
  %ci = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_decompress_struct* %cinfo, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #4
  %1 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %1, i32 0, i32 79
  %2 = load %struct.jpeg_entropy_decoder*, %struct.jpeg_entropy_decoder** %entropy1, align 8, !tbaa !36
  %3 = bitcast %struct.jpeg_entropy_decoder* %2 to %struct.huff_entropy_decoder*
  store %struct.huff_entropy_decoder* %3, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #4
  %5 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %5, i32 0, i32 1
  %bits_left = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate, i32 0, i32 1
  %6 = load i32, i32* %bits_left, align 4, !tbaa !52
  %div = sdiv i32 %6, 8
  %7 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %marker = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %7, i32 0, i32 78
  %8 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %marker, align 8, !tbaa !63
  %discarded_bytes = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %8, i32 0, i32 8
  %9 = load i32, i32* %discarded_bytes, align 4, !tbaa !64
  %add = add i32 %9, %div
  store i32 %add, i32* %discarded_bytes, align 4, !tbaa !64
  %10 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate2 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %10, i32 0, i32 1
  %bits_left3 = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate2, i32 0, i32 1
  store i32 0, i32* %bits_left3, align 4, !tbaa !52
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
  store i32 0, i32* %ci, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %ci, align 4, !tbaa !16
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 62
  %17 = load i32, i32* %comps_in_scan, align 4, !tbaa !47
  %cmp = icmp slt i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %ci, align 4, !tbaa !16
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %19, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %ci, align 4, !tbaa !16
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 49
  %22 = load i32, i32* %restart_interval, align 4, !tbaa !55
  %23 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %23, i32 0, i32 3
  store i32 %22, i32* %restarts_to_go, align 4, !tbaa !56
  %24 = load %struct.huff_entropy_decoder*, %struct.huff_entropy_decoder** %entropy, align 8, !tbaa !2
  %bitstate5 = getelementptr inbounds %struct.huff_entropy_decoder, %struct.huff_entropy_decoder* %24, i32 0, i32 1
  %printed_eod = getelementptr inbounds %struct.bitread_perm_state, %struct.bitread_perm_state* %bitstate5, i32 0, i32 2
  store i32 0, i32* %printed_eod, align 4, !tbaa !54
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %25 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #4
  %26 = bitcast %struct.huff_entropy_decoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #4
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind argmemonly
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

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
!14 = !{!15, !3, i64 352}
!15 = !{!"", !4, i64 0, !4, i64 136, !4, i64 280, !3, i64 352, !4, i64 360, !4, i64 1384}
!16 = !{!8, !8, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !3, i64 0}
!20 = !{!"", !3, i64 0, !13, i64 8, !8, i64 16, !13, i64 24, !8, i64 32, !3, i64 40, !3, i64 48}
!21 = !{!20, !13, i64 8}
!22 = !{!20, !8, i64 16}
!23 = !{!20, !3, i64 40}
!24 = !{!7, !3, i64 32}
!25 = !{!26, !3, i64 24}
!26 = !{!"jpeg_source_mgr", !3, i64 0, !13, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48}
!27 = !{!26, !3, i64 0}
!28 = !{!26, !13, i64 8}
!29 = !{!20, !3, i64 48}
!30 = !{!7, !3, i64 0}
!31 = !{!32, !8, i64 40}
!32 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!33 = !{!32, !3, i64 8}
!34 = !{!20, !13, i64 24}
!35 = !{!20, !8, i64 32}
!36 = !{!7, !3, i64 576}
!37 = !{!38, !3, i64 0}
!38 = !{!"", !39, i64 0, !40, i64 16, !41, i64 32, !8, i64 48, !4, i64 56, !4, i64 88}
!39 = !{!"jpeg_entropy_decoder", !3, i64 0, !3, i64 8}
!40 = !{!"", !13, i64 0, !8, i64 8, !8, i64 12}
!41 = !{!"", !4, i64 0}
!42 = !{!38, !3, i64 8}
!43 = !{!7, !8, i64 508}
!44 = !{!7, !8, i64 512}
!45 = !{!7, !8, i64 516}
!46 = !{!7, !8, i64 520}
!47 = !{!7, !8, i64 416}
!48 = !{!49, !8, i64 20}
!49 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!50 = !{!49, !8, i64 24}
!51 = !{!32, !3, i64 0}
!52 = !{!38, !8, i64 24}
!53 = !{!38, !13, i64 16}
!54 = !{!38, !8, i64 28}
!55 = !{!7, !8, i64 360}
!56 = !{!38, !8, i64 48}
!57 = !{!7, !8, i64 524}
!58 = !{i64 0, i64 16, !17}
!59 = !{!7, !8, i64 464}
!60 = !{!49, !8, i64 48}
!61 = !{!10, !10, i64 0}
!62 = !{!49, !8, i64 36}
!63 = !{!7, !3, i64 568}
!64 = !{!65, !8, i64 172}
!65 = !{!"jpeg_marker_reader", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172}
!66 = !{!65, !3, i64 16}
