; ModuleID = 'jchuff.c'
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
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder, %struct.savable_state, i32, i32, [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*], [4 x i64*], [4 x i64*] }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.working_state = type { i8*, i64, %struct.savable_state, %struct.jpeg_compress_struct* }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: nounwind ssp uwtable
define void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %cinfo, %struct.JHUFF_TBL* %htbl, %struct.c_derived_tbl** %pdtbl) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %htbl.addr = alloca %struct.JHUFF_TBL*, align 8
  %pdtbl.addr = alloca %struct.c_derived_tbl**, align 8
  %dtbl = alloca %struct.c_derived_tbl*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %lastp = alloca i32, align 4
  %si = alloca i32, align 4
  %huffsize = alloca [257 x i8], align 16
  %huffcode = alloca [257 x i32], align 16
  %code = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %htbl, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  store %struct.c_derived_tbl** %pdtbl, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  %0 = bitcast %struct.c_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %4 = bitcast i32* %lastp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.start(i64 257, i8* %6) #6
  %7 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %7) #6
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #6
  %9 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  %10 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %9, align 8, !tbaa !2
  %cmp = icmp eq %struct.c_derived_tbl* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %13 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  %call = call i8* %13(%struct.jpeg_common_struct* %15, i32 1, i64 1280)
  %16 = bitcast i8* %call to %struct.c_derived_tbl*
  %17 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  store %struct.c_derived_tbl* %16, %struct.c_derived_tbl** %17, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.c_derived_tbl**, %struct.c_derived_tbl*** %pdtbl.addr, align 8, !tbaa !2
  %19 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %18, align 8, !tbaa !2
  store %struct.c_derived_tbl* %19, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !2
  store i32 0, i32* %p, align 4, !tbaa !14
  store i32 1, i32* %l, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.end
  %20 = load i32, i32* %l, align 4, !tbaa !14
  %cmp1 = icmp sle i32 %20, 16
  br i1 %cmp1, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4, !tbaa !14
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !14
  %22 = load i32, i32* %l, align 4, !tbaa !14
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %bits = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %23, i32 0, i32 0
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* %bits, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %24 to i32
  %cmp3 = icmp sle i32 %21, %conv
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %25 = load i32, i32* %l, align 4, !tbaa !14
  %conv6 = trunc i32 %25 to i8
  %26 = load i32, i32* %p, align 4, !tbaa !14
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %p, align 4, !tbaa !14
  %idxprom7 = sext i32 %26 to i64
  %arrayidx8 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %27 = load i32, i32* %i, align 4, !tbaa !14
  %inc9 = add nsw i32 %27, 1
  store i32 %inc9, i32* %i, align 4, !tbaa !14
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %28 = load i32, i32* %l, align 4, !tbaa !14
  %inc11 = add nsw i32 %28, 1
  store i32 %inc11, i32* %l, align 4, !tbaa !14
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %29 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom13 = sext i32 %29 to i64
  %arrayidx14 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1, !tbaa !15
  %30 = load i32, i32* %p, align 4, !tbaa !14
  store i32 %30, i32* %lastp, align 4, !tbaa !14
  store i32 0, i32* %code, align 4, !tbaa !14
  %arrayidx15 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 0
  %31 = load i8, i8* %arrayidx15, align 1, !tbaa !15
  %conv16 = sext i8 %31 to i32
  store i32 %conv16, i32* %si, align 4, !tbaa !14
  store i32 0, i32* %p, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end.12
  %32 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom17
  %33 = load i8, i8* %arrayidx18, align 1, !tbaa !15
  %tobool = icmp ne i8 %33, 0
  br i1 %tobool, label %while.body, label %while.end.31

while.body:                                       ; preds = %while.cond
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %while.body
  %34 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom20 = sext i32 %34 to i64
  %arrayidx21 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom20
  %35 = load i8, i8* %arrayidx21, align 1, !tbaa !15
  %conv22 = sext i8 %35 to i32
  %36 = load i32, i32* %si, align 4, !tbaa !14
  %cmp23 = icmp eq i32 %conv22, %36
  br i1 %cmp23, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %while.cond.19
  %37 = load i32, i32* %code, align 4, !tbaa !14
  %38 = load i32, i32* %p, align 4, !tbaa !14
  %inc26 = add nsw i32 %38, 1
  store i32 %inc26, i32* %p, align 4, !tbaa !14
  %idxprom27 = sext i32 %38 to i64
  %arrayidx28 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom27
  store i32 %37, i32* %arrayidx28, align 4, !tbaa !14
  %39 = load i32, i32* %code, align 4, !tbaa !14
  %inc29 = add i32 %39, 1
  store i32 %inc29, i32* %code, align 4, !tbaa !14
  br label %while.cond.19

while.end:                                        ; preds = %while.cond.19
  %40 = load i32, i32* %code, align 4, !tbaa !14
  %shl = shl i32 %40, 1
  store i32 %shl, i32* %code, align 4, !tbaa !14
  %41 = load i32, i32* %si, align 4, !tbaa !14
  %inc30 = add nsw i32 %41, 1
  store i32 %inc30, i32* %si, align 4, !tbaa !14
  br label %while.cond

while.end.31:                                     ; preds = %while.cond
  %42 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !2
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %42, i32 0, i32 1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i32 0
  %43 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !2
  %ehufsi32 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %43, i32 0, i32 1
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi32, i32 0, i32 0
  %44 = call i64 @llvm.objectsize.i64.p0i8(i8* %arraydecay33, i1 false)
  %call34 = call i8* @__memset_chk(i8* %arraydecay, i32 0, i64 256, i64 %44) #6
  store i32 0, i32* %p, align 4, !tbaa !14
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.53, %while.end.31
  %45 = load i32, i32* %p, align 4, !tbaa !14
  %46 = load i32, i32* %lastp, align 4, !tbaa !14
  %cmp36 = icmp slt i32 %45, %46
  br i1 %cmp36, label %for.body.38, label %for.end.55

for.body.38:                                      ; preds = %for.cond.35
  %47 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom39 = sext i32 %47 to i64
  %arrayidx40 = getelementptr inbounds [257 x i32], [257 x i32]* %huffcode, i32 0, i64 %idxprom39
  %48 = load i32, i32* %arrayidx40, align 4, !tbaa !14
  %49 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %50, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom41
  %51 = load i8, i8* %arrayidx42, align 1, !tbaa !15
  %idxprom43 = zext i8 %51 to i64
  %52 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !2
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %52, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom43
  store i32 %48, i32* %arrayidx44, align 4, !tbaa !14
  %53 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom45 = sext i32 %53 to i64
  %arrayidx46 = getelementptr inbounds [257 x i8], [257 x i8]* %huffsize, i32 0, i64 %idxprom45
  %54 = load i8, i8* %arrayidx46, align 1, !tbaa !15
  %55 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom47 = sext i32 %55 to i64
  %56 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %huffval48 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %56, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval48, i32 0, i64 %idxprom47
  %57 = load i8, i8* %arrayidx49, align 1, !tbaa !15
  %idxprom50 = zext i8 %57 to i64
  %58 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dtbl, align 8, !tbaa !2
  %ehufsi51 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %58, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi51, i32 0, i64 %idxprom50
  store i8 %54, i8* %arrayidx52, align 1, !tbaa !15
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.38
  %59 = load i32, i32* %p, align 4, !tbaa !14
  %inc54 = add nsw i32 %59, 1
  store i32 %inc54, i32* %p, align 4, !tbaa !14
  br label %for.cond.35

for.end.55:                                       ; preds = %for.cond.35
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #6
  %61 = bitcast [257 x i32]* %huffcode to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %61) #6
  %62 = bitcast [257 x i8]* %huffsize to i8*
  call void @llvm.lifetime.end(i64 257, i8* %62) #6
  %63 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #6
  %64 = bitcast i32* %lastp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #6
  %65 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #6
  %66 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #6
  %67 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #6
  %68 = bitcast %struct.c_derived_tbl** %dtbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #6
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
define void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %cinfo, %struct.JHUFF_TBL* %htbl, i64* %freq) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %htbl.addr = alloca %struct.JHUFF_TBL*, align 8
  %freq.addr = alloca i64*, align 8
  %bits = alloca [33 x i8], align 16
  %codesize = alloca [257 x i32], align 16
  %others = alloca [257 x i32], align 16
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %htbl, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  store i64* %freq, i64** %freq.addr, align 8, !tbaa !2
  %0 = bitcast [33 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 33, i8* %0) #6
  %1 = bitcast [257 x i32]* %codesize to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %1) #6
  %2 = bitcast [257 x i32]* %others to i8*
  call void @llvm.lifetime.start(i64 1028, i8* %2) #6
  %3 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %4 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #6
  %8 = bitcast i64* %v to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #6
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %arraydecay, i8 0, i64 33, i32 1, i1 false)
  %arraydecay1 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i32 0
  %9 = bitcast i32* %arraydecay1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 1028, i32 1, i1 false)
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %10, 257
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i64, i64* %13, i64 256
  store i64 1, i64* %arrayidx2, align 8, !tbaa !16
  br label %for.cond.3

for.cond.3:                                       ; preds = %while.end.71, %for.end
  store i32 -1, i32* %c1, align 4, !tbaa !14
  store i64 1000000000, i64* %v, align 8, !tbaa !16
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.cond.3
  %14 = load i32, i32* %i, align 4, !tbaa !14
  %cmp5 = icmp sle i32 %14, 256
  br i1 %cmp5, label %for.body.6, label %for.end.16

for.body.6:                                       ; preds = %for.cond.4
  %15 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom7 = sext i32 %15 to i64
  %16 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i64, i64* %16, i64 %idxprom7
  %17 = load i64, i64* %arrayidx8, align 8, !tbaa !16
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.6
  %18 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom9 = sext i32 %18 to i64
  %19 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i64, i64* %19, i64 %idxprom9
  %20 = load i64, i64* %arrayidx10, align 8, !tbaa !16
  %21 = load i64, i64* %v, align 8, !tbaa !16
  %cmp11 = icmp sle i64 %20, %21
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom12 = sext i32 %22 to i64
  %23 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx13 = getelementptr inbounds i64, i64* %23, i64 %idxprom12
  %24 = load i64, i64* %arrayidx13, align 8, !tbaa !16
  store i64 %24, i64* %v, align 8, !tbaa !16
  %25 = load i32, i32* %i, align 4, !tbaa !14
  store i32 %25, i32* %c1, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %26 = load i32, i32* %i, align 4, !tbaa !14
  %inc15 = add nsw i32 %26, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !14
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  store i32 -1, i32* %c2, align 4, !tbaa !14
  store i64 1000000000, i64* %v, align 8, !tbaa !16
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.33, %for.end.16
  %27 = load i32, i32* %i, align 4, !tbaa !14
  %cmp18 = icmp sle i32 %27, 256
  br i1 %cmp18, label %for.body.19, label %for.end.35

for.body.19:                                      ; preds = %for.cond.17
  %28 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom20 = sext i32 %28 to i64
  %29 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i64, i64* %29, i64 %idxprom20
  %30 = load i64, i64* %arrayidx21, align 8, !tbaa !16
  %tobool22 = icmp ne i64 %30, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.32

land.lhs.true.23:                                 ; preds = %for.body.19
  %31 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom24 = sext i32 %31 to i64
  %32 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx25 = getelementptr inbounds i64, i64* %32, i64 %idxprom24
  %33 = load i64, i64* %arrayidx25, align 8, !tbaa !16
  %34 = load i64, i64* %v, align 8, !tbaa !16
  %cmp26 = icmp sle i64 %33, %34
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.32

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %35 = load i32, i32* %i, align 4, !tbaa !14
  %36 = load i32, i32* %c1, align 4, !tbaa !14
  %cmp28 = icmp ne i32 %35, %36
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %land.lhs.true.27
  %37 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom30 = sext i32 %37 to i64
  %38 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds i64, i64* %38, i64 %idxprom30
  %39 = load i64, i64* %arrayidx31, align 8, !tbaa !16
  store i64 %39, i64* %v, align 8, !tbaa !16
  %40 = load i32, i32* %i, align 4, !tbaa !14
  store i32 %40, i32* %c2, align 4, !tbaa !14
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %land.lhs.true.27, %land.lhs.true.23, %for.body.19
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %41 = load i32, i32* %i, align 4, !tbaa !14
  %inc34 = add nsw i32 %41, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !14
  br label %for.cond.17

for.end.35:                                       ; preds = %for.cond.17
  %42 = load i32, i32* %c2, align 4, !tbaa !14
  %cmp36 = icmp slt i32 %42, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end.35
  br label %for.end.72

if.end.38:                                        ; preds = %for.end.35
  %43 = load i32, i32* %c2, align 4, !tbaa !14
  %idxprom39 = sext i32 %43 to i64
  %44 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx40 = getelementptr inbounds i64, i64* %44, i64 %idxprom39
  %45 = load i64, i64* %arrayidx40, align 8, !tbaa !16
  %46 = load i32, i32* %c1, align 4, !tbaa !14
  %idxprom41 = sext i32 %46 to i64
  %47 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx42 = getelementptr inbounds i64, i64* %47, i64 %idxprom41
  %48 = load i64, i64* %arrayidx42, align 8, !tbaa !16
  %add = add nsw i64 %48, %45
  store i64 %add, i64* %arrayidx42, align 8, !tbaa !16
  %49 = load i32, i32* %c2, align 4, !tbaa !14
  %idxprom43 = sext i32 %49 to i64
  %50 = load i64*, i64** %freq.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i64, i64* %50, i64 %idxprom43
  store i64 0, i64* %arrayidx44, align 8, !tbaa !16
  %51 = load i32, i32* %c1, align 4, !tbaa !14
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom45
  %52 = load i32, i32* %arrayidx46, align 4, !tbaa !14
  %inc47 = add nsw i32 %52, 1
  store i32 %inc47, i32* %arrayidx46, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.38
  %53 = load i32, i32* %c1, align 4, !tbaa !14
  %idxprom48 = sext i32 %53 to i64
  %arrayidx49 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom48
  %54 = load i32, i32* %arrayidx49, align 4, !tbaa !14
  %cmp50 = icmp sge i32 %54, 0
  br i1 %cmp50, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load i32, i32* %c1, align 4, !tbaa !14
  %idxprom51 = sext i32 %55 to i64
  %arrayidx52 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom51
  %56 = load i32, i32* %arrayidx52, align 4, !tbaa !14
  store i32 %56, i32* %c1, align 4, !tbaa !14
  %57 = load i32, i32* %c1, align 4, !tbaa !14
  %idxprom53 = sext i32 %57 to i64
  %arrayidx54 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom53
  %58 = load i32, i32* %arrayidx54, align 4, !tbaa !14
  %inc55 = add nsw i32 %58, 1
  store i32 %inc55, i32* %arrayidx54, align 4, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %59 = load i32, i32* %c2, align 4, !tbaa !14
  %60 = load i32, i32* %c1, align 4, !tbaa !14
  %idxprom56 = sext i32 %60 to i64
  %arrayidx57 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom56
  store i32 %59, i32* %arrayidx57, align 4, !tbaa !14
  %61 = load i32, i32* %c2, align 4, !tbaa !14
  %idxprom58 = sext i32 %61 to i64
  %arrayidx59 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom58
  %62 = load i32, i32* %arrayidx59, align 4, !tbaa !14
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %arrayidx59, align 4, !tbaa !14
  br label %while.cond.61

while.cond.61:                                    ; preds = %while.body.65, %while.end
  %63 = load i32, i32* %c2, align 4, !tbaa !14
  %idxprom62 = sext i32 %63 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom62
  %64 = load i32, i32* %arrayidx63, align 4, !tbaa !14
  %cmp64 = icmp sge i32 %64, 0
  br i1 %cmp64, label %while.body.65, label %while.end.71

while.body.65:                                    ; preds = %while.cond.61
  %65 = load i32, i32* %c2, align 4, !tbaa !14
  %idxprom66 = sext i32 %65 to i64
  %arrayidx67 = getelementptr inbounds [257 x i32], [257 x i32]* %others, i32 0, i64 %idxprom66
  %66 = load i32, i32* %arrayidx67, align 4, !tbaa !14
  store i32 %66, i32* %c2, align 4, !tbaa !14
  %67 = load i32, i32* %c2, align 4, !tbaa !14
  %idxprom68 = sext i32 %67 to i64
  %arrayidx69 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom68
  %68 = load i32, i32* %arrayidx69, align 4, !tbaa !14
  %inc70 = add nsw i32 %68, 1
  store i32 %inc70, i32* %arrayidx69, align 4, !tbaa !14
  br label %while.cond.61

while.end.71:                                     ; preds = %while.cond.61
  br label %for.cond.3

for.end.72:                                       ; preds = %if.then.37
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.92, %for.end.72
  %69 = load i32, i32* %i, align 4, !tbaa !14
  %cmp74 = icmp sle i32 %69, 256
  br i1 %cmp74, label %for.body.75, label %for.end.94

for.body.75:                                      ; preds = %for.cond.73
  %70 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom76 = sext i32 %70 to i64
  %arrayidx77 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom76
  %71 = load i32, i32* %arrayidx77, align 4, !tbaa !14
  %tobool78 = icmp ne i32 %71, 0
  br i1 %tobool78, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %for.body.75
  %72 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom80 = sext i32 %72 to i64
  %arrayidx81 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom80
  %73 = load i32, i32* %arrayidx81, align 4, !tbaa !14
  %cmp82 = icmp sgt i32 %73, 32
  br i1 %cmp82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %if.then.79
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 0
  %75 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !17
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %75, i32 0, i32 5
  store i32 38, i32* %msg_code, align 4, !tbaa !18
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err84, align 8, !tbaa !17
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i32 0, i32 0
  %78 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !20
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %80 = bitcast %struct.jpeg_compress_struct* %79 to %struct.jpeg_common_struct*
  call void %78(%struct.jpeg_common_struct* %80)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.then.79
  %81 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom86 = sext i32 %81 to i64
  %arrayidx87 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom86
  %82 = load i32, i32* %arrayidx87, align 4, !tbaa !14
  %idxprom88 = sext i32 %82 to i64
  %arrayidx89 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom88
  %83 = load i8, i8* %arrayidx89, align 1, !tbaa !15
  %inc90 = add i8 %83, 1
  store i8 %inc90, i8* %arrayidx89, align 1, !tbaa !15
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.85, %for.body.75
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %84 = load i32, i32* %i, align 4, !tbaa !14
  %inc93 = add nsw i32 %84, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !14
  br label %for.cond.73

for.end.94:                                       ; preds = %for.cond.73
  store i32 32, i32* %i, align 4, !tbaa !14
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.131, %for.end.94
  %85 = load i32, i32* %i, align 4, !tbaa !14
  %cmp96 = icmp sgt i32 %85, 16
  br i1 %cmp96, label %for.body.97, label %for.end.133

for.body.97:                                      ; preds = %for.cond.95
  br label %while.cond.98

while.cond.98:                                    ; preds = %while.end.111, %for.body.97
  %86 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom99 = sext i32 %86 to i64
  %arrayidx100 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom99
  %87 = load i8, i8* %arrayidx100, align 1, !tbaa !15
  %conv = zext i8 %87 to i32
  %cmp101 = icmp sgt i32 %conv, 0
  br i1 %cmp101, label %while.body.103, label %while.end.130

while.body.103:                                   ; preds = %while.cond.98
  %88 = load i32, i32* %i, align 4, !tbaa !14
  %sub = sub nsw i32 %88, 2
  store i32 %sub, i32* %j, align 4, !tbaa !14
  br label %while.cond.104

while.cond.104:                                   ; preds = %while.body.110, %while.body.103
  %89 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom105 = sext i32 %89 to i64
  %arrayidx106 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom105
  %90 = load i8, i8* %arrayidx106, align 1, !tbaa !15
  %conv107 = zext i8 %90 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  br i1 %cmp108, label %while.body.110, label %while.end.111

while.body.110:                                   ; preds = %while.cond.104
  %91 = load i32, i32* %j, align 4, !tbaa !14
  %dec = add nsw i32 %91, -1
  store i32 %dec, i32* %j, align 4, !tbaa !14
  br label %while.cond.104

while.end.111:                                    ; preds = %while.cond.104
  %92 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom112 = sext i32 %92 to i64
  %arrayidx113 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom112
  %93 = load i8, i8* %arrayidx113, align 1, !tbaa !15
  %conv114 = zext i8 %93 to i32
  %sub115 = sub nsw i32 %conv114, 2
  %conv116 = trunc i32 %sub115 to i8
  store i8 %conv116, i8* %arrayidx113, align 1, !tbaa !15
  %94 = load i32, i32* %i, align 4, !tbaa !14
  %sub117 = sub nsw i32 %94, 1
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom118
  %95 = load i8, i8* %arrayidx119, align 1, !tbaa !15
  %inc120 = add i8 %95, 1
  store i8 %inc120, i8* %arrayidx119, align 1, !tbaa !15
  %96 = load i32, i32* %j, align 4, !tbaa !14
  %add121 = add nsw i32 %96, 1
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom122
  %97 = load i8, i8* %arrayidx123, align 1, !tbaa !15
  %conv124 = zext i8 %97 to i32
  %add125 = add nsw i32 %conv124, 2
  %conv126 = trunc i32 %add125 to i8
  store i8 %conv126, i8* %arrayidx123, align 1, !tbaa !15
  %98 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom127 = sext i32 %98 to i64
  %arrayidx128 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom127
  %99 = load i8, i8* %arrayidx128, align 1, !tbaa !15
  %dec129 = add i8 %99, -1
  store i8 %dec129, i8* %arrayidx128, align 1, !tbaa !15
  br label %while.cond.98

while.end.130:                                    ; preds = %while.cond.98
  br label %for.inc.131

for.inc.131:                                      ; preds = %while.end.130
  %100 = load i32, i32* %i, align 4, !tbaa !14
  %dec132 = add nsw i32 %100, -1
  store i32 %dec132, i32* %i, align 4, !tbaa !14
  br label %for.cond.95

for.end.133:                                      ; preds = %for.cond.95
  br label %while.cond.134

while.cond.134:                                   ; preds = %while.body.140, %for.end.133
  %101 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom135 = sext i32 %101 to i64
  %arrayidx136 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom135
  %102 = load i8, i8* %arrayidx136, align 1, !tbaa !15
  %conv137 = zext i8 %102 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %while.body.140, label %while.end.142

while.body.140:                                   ; preds = %while.cond.134
  %103 = load i32, i32* %i, align 4, !tbaa !14
  %dec141 = add nsw i32 %103, -1
  store i32 %dec141, i32* %i, align 4, !tbaa !14
  br label %while.cond.134

while.end.142:                                    ; preds = %while.cond.134
  %104 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom143 = sext i32 %104 to i64
  %arrayidx144 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i64 %idxprom143
  %105 = load i8, i8* %arrayidx144, align 1, !tbaa !15
  %dec145 = add i8 %105, -1
  store i8 %dec145, i8* %arrayidx144, align 1, !tbaa !15
  %106 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %bits146 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %106, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [17 x i8], [17 x i8]* %bits146, i32 0, i32 0
  %arraydecay148 = getelementptr inbounds [33 x i8], [33 x i8]* %bits, i32 0, i32 0
  %107 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %bits149 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %107, i32 0, i32 0
  %arraydecay150 = getelementptr inbounds [17 x i8], [17 x i8]* %bits149, i32 0, i32 0
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* %arraydecay150, i1 false)
  %call = call i8* @__memcpy_chk(i8* %arraydecay147, i8* %arraydecay148, i64 17, i64 %108) #6
  store i32 0, i32* %p, align 4, !tbaa !14
  store i32 1, i32* %i, align 4, !tbaa !14
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.172, %while.end.142
  %109 = load i32, i32* %i, align 4, !tbaa !14
  %cmp152 = icmp sle i32 %109, 32
  br i1 %cmp152, label %for.body.154, label %for.end.174

for.body.154:                                     ; preds = %for.cond.151
  store i32 0, i32* %j, align 4, !tbaa !14
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.169, %for.body.154
  %110 = load i32, i32* %j, align 4, !tbaa !14
  %cmp156 = icmp sle i32 %110, 255
  br i1 %cmp156, label %for.body.158, label %for.end.171

for.body.158:                                     ; preds = %for.cond.155
  %111 = load i32, i32* %j, align 4, !tbaa !14
  %idxprom159 = sext i32 %111 to i64
  %arrayidx160 = getelementptr inbounds [257 x i32], [257 x i32]* %codesize, i32 0, i64 %idxprom159
  %112 = load i32, i32* %arrayidx160, align 4, !tbaa !14
  %113 = load i32, i32* %i, align 4, !tbaa !14
  %cmp161 = icmp eq i32 %112, %113
  br i1 %cmp161, label %if.then.163, label %if.end.168

if.then.163:                                      ; preds = %for.body.158
  %114 = load i32, i32* %j, align 4, !tbaa !14
  %conv164 = trunc i32 %114 to i8
  %115 = load i32, i32* %p, align 4, !tbaa !14
  %idxprom165 = sext i32 %115 to i64
  %116 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %116, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i64 %idxprom165
  store i8 %conv164, i8* %arrayidx166, align 1, !tbaa !15
  %117 = load i32, i32* %p, align 4, !tbaa !14
  %inc167 = add nsw i32 %117, 1
  store i32 %inc167, i32* %p, align 4, !tbaa !14
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.163, %for.body.158
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %118 = load i32, i32* %j, align 4, !tbaa !14
  %inc170 = add nsw i32 %118, 1
  store i32 %inc170, i32* %j, align 4, !tbaa !14
  br label %for.cond.155

for.end.171:                                      ; preds = %for.cond.155
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.end.171
  %119 = load i32, i32* %i, align 4, !tbaa !14
  %inc173 = add nsw i32 %119, 1
  store i32 %inc173, i32* %i, align 4, !tbaa !14
  br label %for.cond.151

for.end.174:                                      ; preds = %for.cond.151
  %120 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %htbl.addr, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %120, i32 0, i32 2
  store i32 0, i32* %sent_table, align 4, !tbaa !21
  %121 = bitcast i64* %v to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #6
  %122 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #6
  %123 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #6
  %124 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #6
  %125 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #6
  %126 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #6
  %127 = bitcast [257 x i32]* %others to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %127) #6
  %128 = bitcast [257 x i32]* %codesize to i8*
  call void @llvm.lifetime.end(i64 1028, i8* %128) #6
  %129 = bitcast [33 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 33, i8* %129) #6
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #2

; Function Attrs: nounwind ssp uwtable
define void @jinit_huff_encoder(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
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
  %call = call i8* %4(%struct.jpeg_common_struct* %6, i32 1, i64 192)
  %7 = bitcast i8* %call to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %7, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %8 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %9 = bitcast %struct.huff_entropy_encoder* %8 to %struct.jpeg_entropy_encoder*
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 59
  store %struct.jpeg_entropy_encoder* %9, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !23
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %11, i32 0, i32 0
  %start_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_huff, void (%struct.jpeg_compress_struct*, i32)** %start_pass, align 8, !tbaa !24
  store i32 0, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !14
  %cmp = icmp slt i32 %12, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %14, i32 0, i32 5
  %arrayidx = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx, align 8, !tbaa !2
  %15 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom2 = sext i32 %15 to i64
  %16 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %16, i32 0, i32 4
  %arrayidx3 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom2
  store %struct.c_derived_tbl* null, %struct.c_derived_tbl** %arrayidx3, align 8, !tbaa !2
  %17 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom4 = sext i32 %17 to i64
  %18 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %18, i32 0, i32 7
  %arrayidx5 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom4
  store i64* null, i64** %arrayidx5, align 8, !tbaa !2
  %19 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 6
  %arrayidx7 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom6
  store i64* null, i64** %arrayidx7, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !14
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #6
  %23 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @start_pass_huff(%struct.jpeg_compress_struct* %cinfo, i32 %gather_statistics) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %gather_statistics.addr = alloca i32, align 4
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %gather_statistics, i32* %gather_statistics.addr, align 4, !tbaa !14
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %dctbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %actbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #6
  %8 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !14
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 0
  %encode_mcu = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_gather, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu, align 8, !tbaa !28
  %10 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub2 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %10, i32 0, i32 0
  %finish_pass = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub2, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @finish_pass_gather, void (%struct.jpeg_compress_struct*)** %finish_pass, align 8, !tbaa !29
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub3 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %11, i32 0, i32 0
  %encode_mcu4 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub3, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, [64 x i16]**)* @encode_mcu_huff, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %encode_mcu4, align 8, !tbaa !28
  %12 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %pub5 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %12, i32 0, i32 0
  %finish_pass6 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %pub5, i32 0, i32 2
  store void (%struct.jpeg_compress_struct*)* @finish_pass_huff, void (%struct.jpeg_compress_struct*)** %finish_pass6, align 8, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %ci, align 4, !tbaa !14
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 41
  %15 = load i32, i32* %comps_in_scan, align 4, !tbaa !30
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %18, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 5
  %20 = load i32, i32* %dc_tbl_no, align 4, !tbaa !31
  store i32 %20, i32* %dctbl, align 4, !tbaa !14
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 6
  %22 = load i32, i32* %ac_tbl_no, align 4, !tbaa !33
  store i32 %22, i32* %actbl, align 4, !tbaa !14
  %23 = load i32, i32* %dctbl, align 4, !tbaa !14
  %cmp7 = icmp slt i32 %23, 0
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %24 = load i32, i32* %dctbl, align 4, !tbaa !14
  %cmp8 = icmp sge i32 %24, 4
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %25 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom10 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 16
  %arrayidx11 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom10
  %27 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx11, align 8, !tbaa !2
  %cmp12 = icmp eq %struct.JHUFF_TBL* %27, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %lor.lhs.false.9
  %28 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !14
  %tobool13 = icmp ne i32 %28, 0
  br i1 %tobool13, label %if.end.18, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true, %lor.lhs.false, %for.body
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !17
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 5
  store i32 49, i32* %msg_code, align 4, !tbaa !18
  %31 = load i32, i32* %dctbl, align 4, !tbaa !14
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !17
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %31, i32* %arrayidx16, align 4, !tbaa !14
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err17, align 8, !tbaa !17
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !20
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* %38)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %land.lhs.true, %lor.lhs.false.9
  %39 = load i32, i32* %actbl, align 4, !tbaa !14
  %cmp19 = icmp slt i32 %39, 0
  br i1 %cmp19, label %if.then.28, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %40 = load i32, i32* %actbl, align 4, !tbaa !14
  %cmp21 = icmp sge i32 %40, 4
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.20
  %41 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom23 = sext i32 %41 to i64
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 17
  %arrayidx24 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom23
  %43 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx24, align 8, !tbaa !2
  %cmp25 = icmp eq %struct.JHUFF_TBL* %43, null
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.37

land.lhs.true.26:                                 ; preds = %lor.lhs.false.22
  %44 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !14
  %tobool27 = icmp ne i32 %44, 0
  br i1 %tobool27, label %if.end.37, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.26, %lor.lhs.false.20, %if.end.18
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err29, align 8, !tbaa !17
  %msg_code30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 5
  store i32 49, i32* %msg_code30, align 4, !tbaa !18
  %47 = load i32, i32* %actbl, align 4, !tbaa !14
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err31, align 8, !tbaa !17
  %msg_parm32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 6
  %i33 = bitcast %union.anon* %msg_parm32 to [8 x i32]*
  %arrayidx34 = getelementptr inbounds [8 x i32], [8 x i32]* %i33, i32 0, i64 0
  store i32 %47, i32* %arrayidx34, align 4, !tbaa !14
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err35, align 8, !tbaa !17
  %error_exit36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 0
  %52 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit36, align 8, !tbaa !20
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %54 = bitcast %struct.jpeg_compress_struct* %53 to %struct.jpeg_common_struct*
  call void %52(%struct.jpeg_common_struct* %54)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.28, %land.lhs.true.26, %lor.lhs.false.22
  %55 = load i32, i32* %gather_statistics.addr, align 4, !tbaa !14
  %tobool38 = icmp ne i32 %55, 0
  br i1 %tobool38, label %if.then.39, label %if.else.73

if.then.39:                                       ; preds = %if.end.37
  %56 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom40 = sext i32 %56 to i64
  %57 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %57, i32 0, i32 6
  %arrayidx41 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom40
  %58 = load i64*, i64** %arrayidx41, align 8, !tbaa !2
  %cmp42 = icmp eq i64* %58, null
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.then.39
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 1
  %60 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %60, i32 0, i32 0
  %61 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !11
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %63 = bitcast %struct.jpeg_compress_struct* %62 to %struct.jpeg_common_struct*
  %call = call i8* %61(%struct.jpeg_common_struct* %63, i32 1, i64 2056)
  %64 = bitcast i8* %call to i64*
  %65 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom44 = sext i32 %65 to i64
  %66 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_count_ptrs45 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %66, i32 0, i32 6
  %arrayidx46 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs45, i32 0, i64 %idxprom44
  store i64* %64, i64** %arrayidx46, align 8, !tbaa !2
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.then.39
  %67 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom48 = sext i32 %67 to i64
  %68 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_count_ptrs49 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %68, i32 0, i32 6
  %arrayidx50 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs49, i32 0, i64 %idxprom48
  %69 = load i64*, i64** %arrayidx50, align 8, !tbaa !2
  %70 = bitcast i64* %69 to i8*
  %71 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom51 = sext i32 %71 to i64
  %72 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_count_ptrs52 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %72, i32 0, i32 6
  %arrayidx53 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs52, i32 0, i64 %idxprom51
  %73 = load i64*, i64** %arrayidx53, align 8, !tbaa !2
  %74 = bitcast i64* %73 to i8*
  %75 = call i64 @llvm.objectsize.i64.p0i8(i8* %74, i1 false)
  %call54 = call i8* @__memset_chk(i8* %70, i32 0, i64 2056, i64 %75) #6
  %76 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom55 = sext i32 %76 to i64
  %77 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %77, i32 0, i32 7
  %arrayidx56 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom55
  %78 = load i64*, i64** %arrayidx56, align 8, !tbaa !2
  %cmp57 = icmp eq i64* %78, null
  br i1 %cmp57, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.end.47
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 1
  %80 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem59, align 8, !tbaa !6
  %alloc_small60 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %80, i32 0, i32 0
  %81 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small60, align 8, !tbaa !11
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %83 = bitcast %struct.jpeg_compress_struct* %82 to %struct.jpeg_common_struct*
  %call61 = call i8* %81(%struct.jpeg_common_struct* %83, i32 1, i64 2056)
  %84 = bitcast i8* %call61 to i64*
  %85 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom62 = sext i32 %85 to i64
  %86 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_count_ptrs63 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %86, i32 0, i32 7
  %arrayidx64 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs63, i32 0, i64 %idxprom62
  store i64* %84, i64** %arrayidx64, align 8, !tbaa !2
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.58, %if.end.47
  %87 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom66 = sext i32 %87 to i64
  %88 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_count_ptrs67 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %88, i32 0, i32 7
  %arrayidx68 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs67, i32 0, i64 %idxprom66
  %89 = load i64*, i64** %arrayidx68, align 8, !tbaa !2
  %90 = bitcast i64* %89 to i8*
  %91 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom69 = sext i32 %91 to i64
  %92 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_count_ptrs70 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %92, i32 0, i32 7
  %arrayidx71 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs70, i32 0, i64 %idxprom69
  %93 = load i64*, i64** %arrayidx71, align 8, !tbaa !2
  %94 = bitcast i64* %93 to i8*
  %95 = call i64 @llvm.objectsize.i64.p0i8(i8* %94, i1 false)
  %call72 = call i8* @__memset_chk(i8* %90, i32 0, i64 2056, i64 %95) #6
  br label %if.end.84

if.else.73:                                       ; preds = %if.end.37
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %97 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom74 = sext i32 %97 to i64
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 16
  %arrayidx76 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs75, i32 0, i64 %idxprom74
  %99 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx76, align 8, !tbaa !2
  %100 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom77 = sext i32 %100 to i64
  %101 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %101, i32 0, i32 4
  %arrayidx78 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom77
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %96, %struct.JHUFF_TBL* %99, %struct.c_derived_tbl** %arrayidx78)
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %103 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom79 = sext i32 %103 to i64
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 17
  %arrayidx81 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs80, i32 0, i64 %idxprom79
  %105 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %arrayidx81, align 8, !tbaa !2
  %106 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom82 = sext i32 %106 to i64
  %107 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %107, i32 0, i32 5
  %arrayidx83 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom82
  call void @jpeg_make_c_derived_tbl(%struct.jpeg_compress_struct* %102, %struct.JHUFF_TBL* %105, %struct.c_derived_tbl** %arrayidx83)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.73, %if.end.65
  %108 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom85 = sext i32 %108 to i64
  %109 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %109, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom85
  store i32 0, i32* %arrayidx86, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %110 = load i32, i32* %ci, align 4, !tbaa !14
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %111 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved87 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %111, i32 0, i32 1
  %put_buffer = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved87, i32 0, i32 0
  store i64 0, i64* %put_buffer, align 8, !tbaa !34
  %112 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved88 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %112, i32 0, i32 1
  %put_bits = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved88, i32 0, i32 1
  store i32 0, i32* %put_bits, align 4, !tbaa !35
  %113 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %113, i32 0, i32 29
  %114 = load i32, i32* %restart_interval, align 4, !tbaa !36
  %115 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %115, i32 0, i32 2
  store i32 %114, i32* %restarts_to_go, align 4, !tbaa !37
  %116 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %116, i32 0, i32 3
  store i32 0, i32* %next_restart_num, align 4, !tbaa !38
  %117 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #6
  %118 = bitcast i32* %actbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #6
  %119 = bitcast i32* %dctbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #6
  %120 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #6
  %121 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_gather(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #6
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 29
  %8 = load i32, i32* %restart_interval, align 4, !tbaa !36
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %9 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %9, i32 0, i32 2
  %10 = load i32, i32* %restarts_to_go, align 4, !tbaa !37
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %11 = load i32, i32* %ci, align 4, !tbaa !14
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 41
  %13 = load i32, i32* %comps_in_scan, align 4, !tbaa !30
  %cmp3 = icmp slt i32 %11, %13
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %15, i32 0, i32 1
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %ci, align 4, !tbaa !14
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 29
  %18 = load i32, i32* %restart_interval4, align 4, !tbaa !36
  %19 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go5 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %19, i32 0, i32 2
  store i32 %18, i32* %restarts_to_go5, align 4, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go6 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 2
  %21 = load i32, i32* %restarts_to_go6, align 4, !tbaa !37
  %dec = add i32 %21, -1
  store i32 %dec, i32* %restarts_to_go6, align 4, !tbaa !37
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !14
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.34, %if.end.7
  %22 = load i32, i32* %blkn, align 4, !tbaa !14
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 45
  %24 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !39
  %cmp9 = icmp slt i32 %22, %24
  br i1 %cmp9, label %for.body.10, label %for.end.36

for.body.10:                                      ; preds = %for.cond.8
  %25 = load i32, i32* %blkn, align 4, !tbaa !14
  %idxprom11 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 46
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom11
  %27 = load i32, i32* %arrayidx12, align 4, !tbaa !14
  store i32 %27, i32* %ci, align 4, !tbaa !14
  %28 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom13 = sext i32 %28 to i64
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 42
  %arrayidx14 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom13
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx14, align 8, !tbaa !2
  store %struct.jpeg_component_info* %30, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %31 = load i32, i32* %blkn, align 4, !tbaa !14
  %idxprom15 = sext i32 %31 to i64
  %32 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds [64 x i16]*, [64 x i16]** %32, i64 %idxprom15
  %33 = load [64 x i16]*, [64 x i16]** %arrayidx16, align 8, !tbaa !2
  %arrayidx17 = getelementptr inbounds [64 x i16], [64 x i16]* %33, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx17, i32 0, i32 0
  %34 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom18 = sext i32 %34 to i64
  %35 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved19 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %35, i32 0, i32 1
  %last_dc_val20 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved19, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val20, i32 0, i64 %idxprom18
  %36 = load i32, i32* %arrayidx21, align 4, !tbaa !14
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 5
  %38 = load i32, i32* %dc_tbl_no, align 4, !tbaa !31
  %idxprom22 = sext i32 %38 to i64
  %39 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %39, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom22
  %40 = load i64*, i64** %arrayidx23, align 8, !tbaa !2
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 6
  %42 = load i32, i32* %ac_tbl_no, align 4, !tbaa !33
  %idxprom24 = sext i32 %42 to i64
  %43 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %43, i32 0, i32 7
  %arrayidx25 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom24
  %44 = load i64*, i64** %arrayidx25, align 8, !tbaa !2
  call void @htest_one_block(i16* %arraydecay, i32 %36, i64* %40, i64* %44)
  %45 = load i32, i32* %blkn, align 4, !tbaa !14
  %idxprom26 = sext i32 %45 to i64
  %46 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds [64 x i16]*, [64 x i16]** %46, i64 %idxprom26
  %47 = load [64 x i16]*, [64 x i16]** %arrayidx27, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds [64 x i16], [64 x i16]* %47, i64 0
  %arrayidx29 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx28, i32 0, i64 0
  %48 = load i16, i16* %arrayidx29, align 2, !tbaa !40
  %conv = sext i16 %48 to i32
  %49 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom30 = sext i32 %49 to i64
  %50 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved31 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %50, i32 0, i32 1
  %last_dc_val32 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %saved31, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val32, i32 0, i64 %idxprom30
  store i32 %conv, i32* %arrayidx33, align 4, !tbaa !14
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.10
  %51 = load i32, i32* %blkn, align 4, !tbaa !14
  %inc35 = add nsw i32 %51, 1
  store i32 %inc35, i32* %blkn, align 4, !tbaa !14
  br label %for.cond.8

for.end.36:                                       ; preds = %for.cond.8
  %52 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #6
  %53 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #6
  %54 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #6
  %55 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #6
  ret i32 1
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_gather(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %ci = alloca i32, align 4
  %dctbl = alloca i32, align 4
  %actbl = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %htblptr = alloca %struct.JHUFF_TBL**, align 8
  %did_dc = alloca [4 x i32], align 16
  %did_ac = alloca [4 x i32], align 16
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %dctbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %actbl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #6
  %8 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #6
  %9 = bitcast [4 x i32]* %did_dc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #6
  %10 = bitcast [4 x i32]* %did_ac to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #6
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i32 0
  %11 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 16, i32 1, i1 false)
  %arraydecay2 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i32 0
  %12 = bitcast i32* %arraydecay2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 1, i1 false)
  store i32 0, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %ci, align 4, !tbaa !14
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 41
  %15 = load i32, i32* %comps_in_scan, align 4, !tbaa !30
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 42
  %arrayidx = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx, align 8, !tbaa !2
  store %struct.jpeg_component_info* %18, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i32 0, i32 5
  %20 = load i32, i32* %dc_tbl_no, align 4, !tbaa !31
  store i32 %20, i32* %dctbl, align 4, !tbaa !14
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i32 0, i32 6
  %22 = load i32, i32* %ac_tbl_no, align 4, !tbaa !33
  store i32 %22, i32* %actbl, align 4, !tbaa !14
  %23 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom3 = sext i32 %23 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i64 %idxprom3
  %24 = load i32, i32* %arrayidx4, align 4, !tbaa !14
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %for.body
  %25 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom5 = sext i32 %25 to i64
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 16
  %arrayidx6 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 %idxprom5
  store %struct.JHUFF_TBL** %arrayidx6, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %27 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %28 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %27, align 8, !tbaa !2
  %cmp7 = icmp eq %struct.JHUFF_TBL* %28, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = bitcast %struct.jpeg_compress_struct* %29 to %struct.jpeg_common_struct*
  %call = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %30)
  %31 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %call, %struct.JHUFF_TBL** %31, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %33 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %34 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %33, align 8, !tbaa !2
  %35 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom9 = sext i32 %35 to i64
  %36 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %36, i32 0, i32 6
  %arrayidx10 = getelementptr inbounds [4 x i64*], [4 x i64*]* %dc_count_ptrs, i32 0, i64 %idxprom9
  %37 = load i64*, i64** %arrayidx10, align 8, !tbaa !2
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %32, %struct.JHUFF_TBL* %34, i64* %37)
  %38 = load i32, i32* %dctbl, align 4, !tbaa !14
  %idxprom11 = sext i32 %38 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %did_dc, i32 0, i64 %idxprom11
  store i32 1, i32* %arrayidx12, align 4, !tbaa !14
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  %39 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom14 = sext i32 %39 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i64 %idxprom14
  %40 = load i32, i32* %arrayidx15, align 4, !tbaa !14
  %tobool16 = icmp ne i32 %40, 0
  br i1 %tobool16, label %if.end.28, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  %41 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom18 = sext i32 %41 to i64
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 17
  %arrayidx19 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 %idxprom18
  store %struct.JHUFF_TBL** %arrayidx19, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %43 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %44 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %43, align 8, !tbaa !2
  %cmp20 = icmp eq %struct.JHUFF_TBL* %44, null
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.17
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %46 = bitcast %struct.jpeg_compress_struct* %45 to %struct.jpeg_common_struct*
  %call22 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %46)
  %47 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %call22, %struct.JHUFF_TBL** %47, align 8, !tbaa !2
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.17
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %49 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr, align 8, !tbaa !2
  %50 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %49, align 8, !tbaa !2
  %51 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom24 = sext i32 %51 to i64
  %52 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_count_ptrs = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %52, i32 0, i32 7
  %arrayidx25 = getelementptr inbounds [4 x i64*], [4 x i64*]* %ac_count_ptrs, i32 0, i64 %idxprom24
  %53 = load i64*, i64** %arrayidx25, align 8, !tbaa !2
  call void @jpeg_gen_optimal_table(%struct.jpeg_compress_struct* %48, %struct.JHUFF_TBL* %50, i64* %53)
  %54 = load i32, i32* %actbl, align 4, !tbaa !14
  %idxprom26 = sext i32 %54 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], [4 x i32]* %did_ac, i32 0, i64 %idxprom26
  store i32 1, i32* %arrayidx27, align 4, !tbaa !14
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.23, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %55 = load i32, i32* %ci, align 4, !tbaa !14
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = bitcast [4 x i32]* %did_ac to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #6
  %57 = bitcast [4 x i32]* %did_dc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %57) #6
  %58 = bitcast %struct.JHUFF_TBL*** %htblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #6
  %59 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #6
  %60 = bitcast i32* %actbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #6
  %61 = bitcast i32* %dctbl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #6
  %62 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #6
  %63 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_mcu_huff(%struct.jpeg_compress_struct* %cinfo, [64 x i16]** %MCU_data) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %MCU_data.addr = alloca [64 x i16]**, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %state = alloca %struct.working_state, align 8
  %blkn = alloca i32, align 4
  %ci = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store [64 x i16]** %MCU_data, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #6
  %5 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #6
  %7 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #6
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 5
  %9 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !41
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %9, i32 0, i32 0
  %10 = load i8*, i8** %next_output_byte, align 8, !tbaa !42
  %next_output_byte2 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  store i8* %10, i8** %next_output_byte2, align 8, !tbaa !44
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 5
  %12 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !41
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %12, i32 0, i32 1
  %13 = load i64, i64* %free_in_buffer, align 8, !tbaa !46
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  store i64 %13, i64* %free_in_buffer4, align 8, !tbaa !47
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %14 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %14, i32 0, i32 1
  %15 = bitcast %struct.savable_state* %cur to i8*
  %16 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 32, i32 8, i1 false), !tbaa.struct !48
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cinfo5 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 3
  store %struct.jpeg_compress_struct* %17, %struct.jpeg_compress_struct** %cinfo5, align 8, !tbaa !49
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 29
  %19 = load i32, i32* %restart_interval, align 4, !tbaa !36
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %20 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %20, i32 0, i32 2
  %21 = load i32, i32* %restarts_to_go, align 4, !tbaa !37
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then
  %22 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %22, i32 0, i32 3
  %23 = load i32, i32* %next_restart_num, align 4, !tbaa !38
  %call = call i32 @emit_restart(%struct.working_state* %state, i32 %23)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.6
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  store i32 0, i32* %blkn, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %24 = load i32, i32* %blkn, align 4, !tbaa !14
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %blocks_in_MCU = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 45
  %26 = load i32, i32* %blocks_in_MCU, align 4, !tbaa !39
  %cmp11 = icmp slt i32 %24, %26
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %blkn, align 4, !tbaa !14
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %MCU_membership = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 46
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %MCU_membership, i32 0, i64 %idxprom
  %29 = load i32, i32* %arrayidx, align 4, !tbaa !14
  store i32 %29, i32* %ci, align 4, !tbaa !14
  %30 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom12 = sext i32 %30 to i64
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cur_comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 42
  %arrayidx13 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %cur_comp_info, i32 0, i64 %idxprom12
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %arrayidx13, align 8, !tbaa !2
  store %struct.jpeg_component_info* %32, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %33 = load i32, i32* %blkn, align 4, !tbaa !14
  %idxprom14 = sext i32 %33 to i64
  %34 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds [64 x i16]*, [64 x i16]** %34, i64 %idxprom14
  %35 = load [64 x i16]*, [64 x i16]** %arrayidx15, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds [64 x i16], [64 x i16]* %35, i64 0
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx16, i32 0, i32 0
  %36 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom17 = sext i32 %36 to i64
  %cur18 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur18, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom17
  %37 = load i32, i32* %arrayidx19, align 4, !tbaa !14
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 5
  %39 = load i32, i32* %dc_tbl_no, align 4, !tbaa !31
  %idxprom20 = sext i32 %39 to i64
  %40 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %dc_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %40, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %dc_derived_tbls, i32 0, i64 %idxprom20
  %41 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx21, align 8, !tbaa !2
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 6
  %43 = load i32, i32* %ac_tbl_no, align 4, !tbaa !33
  %idxprom22 = sext i32 %43 to i64
  %44 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %ac_derived_tbls = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %44, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [4 x %struct.c_derived_tbl*], [4 x %struct.c_derived_tbl*]* %ac_derived_tbls, i32 0, i64 %idxprom22
  %45 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %arrayidx23, align 8, !tbaa !2
  %call24 = call i32 @encode_one_block(%struct.working_state* %state, i16* %arraydecay, i32 %37, %struct.c_derived_tbl* %41, %struct.c_derived_tbl* %45)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %for.body
  %46 = load i32, i32* %blkn, align 4, !tbaa !14
  %idxprom28 = sext i32 %46 to i64
  %47 = load [64 x i16]**, [64 x i16]*** %MCU_data.addr, align 8, !tbaa !2
  %arrayidx29 = getelementptr inbounds [64 x i16]*, [64 x i16]** %47, i64 %idxprom28
  %48 = load [64 x i16]*, [64 x i16]** %arrayidx29, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds [64 x i16], [64 x i16]* %48, i64 0
  %arrayidx31 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx30, i32 0, i64 0
  %49 = load i16, i16* %arrayidx31, align 2, !tbaa !40
  %conv = sext i16 %49 to i32
  %50 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom32 = sext i32 %50 to i64
  %cur33 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %last_dc_val34 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val34, i32 0, i64 %idxprom32
  store i32 %conv, i32* %arrayidx35, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %51 = load i32, i32* %blkn, align 4, !tbaa !14
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %blkn, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %next_output_byte36 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  %52 = load i8*, i8** %next_output_byte36, align 8, !tbaa !44
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 5
  %54 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest37, align 8, !tbaa !41
  %next_output_byte38 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %54, i32 0, i32 0
  store i8* %52, i8** %next_output_byte38, align 8, !tbaa !42
  %free_in_buffer39 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  %55 = load i64, i64* %free_in_buffer39, align 8, !tbaa !47
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 5
  %57 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest40, align 8, !tbaa !41
  %free_in_buffer41 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %57, i32 0, i32 1
  store i64 %55, i64* %free_in_buffer41, align 8, !tbaa !46
  %58 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved42 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %58, i32 0, i32 1
  %cur43 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %59 = bitcast %struct.savable_state* %saved42 to i8*
  %60 = bitcast %struct.savable_state* %cur43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 32, i32 8, i1 false), !tbaa.struct !48
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 29
  %62 = load i32, i32* %restart_interval44, align 4, !tbaa !36
  %tobool45 = icmp ne i32 %62, 0
  br i1 %tobool45, label %if.then.46, label %if.end.58

if.then.46:                                       ; preds = %for.end
  %63 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go47 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %63, i32 0, i32 2
  %64 = load i32, i32* %restarts_to_go47, align 4, !tbaa !37
  %cmp48 = icmp eq i32 %64, 0
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.then.46
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 29
  %66 = load i32, i32* %restart_interval51, align 4, !tbaa !36
  %67 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go52 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %67, i32 0, i32 2
  store i32 %66, i32* %restarts_to_go52, align 4, !tbaa !37
  %68 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num53 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %68, i32 0, i32 3
  %69 = load i32, i32* %next_restart_num53, align 4, !tbaa !38
  %inc54 = add nsw i32 %69, 1
  store i32 %inc54, i32* %next_restart_num53, align 4, !tbaa !38
  %70 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %next_restart_num55 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %70, i32 0, i32 3
  %71 = load i32, i32* %next_restart_num55, align 4, !tbaa !38
  %and = and i32 %71, 7
  store i32 %and, i32* %next_restart_num55, align 4, !tbaa !38
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.then.46
  %72 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %restarts_to_go57 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %72, i32 0, i32 2
  %73 = load i32, i32* %restarts_to_go57, align 4, !tbaa !37
  %dec = add i32 %73, -1
  store i32 %dec, i32* %restarts_to_go57, align 4, !tbaa !37
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.56, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.26, %if.then.8
  %74 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #6
  %75 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #6
  %76 = bitcast i32* %blkn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #6
  %77 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %77) #6
  %78 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #6
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind ssp uwtable
define internal void @finish_pass_huff(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %entropy = alloca %struct.huff_entropy_encoder*, align 8
  %state = alloca %struct.working_state, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %entropy1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 59
  %2 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %entropy1, align 8, !tbaa !23
  %3 = bitcast %struct.jpeg_entropy_encoder* %2 to %struct.huff_entropy_encoder*
  store %struct.huff_entropy_encoder* %3, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %4 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.start(i64 56, i8* %4) #6
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 5
  %6 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !41
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %6, i32 0, i32 0
  %7 = load i8*, i8** %next_output_byte, align 8, !tbaa !42
  %next_output_byte2 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  store i8* %7, i8** %next_output_byte2, align 8, !tbaa !44
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 5
  %9 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest3, align 8, !tbaa !41
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %9, i32 0, i32 1
  %10 = load i64, i64* %free_in_buffer, align 8, !tbaa !46
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  store i64 %10, i64* %free_in_buffer4, align 8, !tbaa !47
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %11 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %11, i32 0, i32 1
  %12 = bitcast %struct.savable_state* %cur to i8*
  %13 = bitcast %struct.savable_state* %saved to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false), !tbaa.struct !48
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %cinfo5 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 3
  store %struct.jpeg_compress_struct* %14, %struct.jpeg_compress_struct** %cinfo5, align 8, !tbaa !49
  %call = call i32 @flush_bits(%struct.working_state* %state)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !17
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 22, i32* %msg_code, align 4, !tbaa !18
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !17
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !20
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %next_output_byte7 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 0
  %22 = load i8*, i8** %next_output_byte7, align 8, !tbaa !44
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 5
  %24 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest8, align 8, !tbaa !41
  %next_output_byte9 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %24, i32 0, i32 0
  store i8* %22, i8** %next_output_byte9, align 8, !tbaa !42
  %free_in_buffer10 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 1
  %25 = load i64, i64* %free_in_buffer10, align 8, !tbaa !47
  %26 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dest11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %26, i32 0, i32 5
  %27 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest11, align 8, !tbaa !41
  %free_in_buffer12 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %27, i32 0, i32 1
  store i64 %25, i64* %free_in_buffer12, align 8, !tbaa !46
  %28 = load %struct.huff_entropy_encoder*, %struct.huff_entropy_encoder** %entropy, align 8, !tbaa !2
  %saved13 = getelementptr inbounds %struct.huff_entropy_encoder, %struct.huff_entropy_encoder* %28, i32 0, i32 1
  %cur14 = getelementptr inbounds %struct.working_state, %struct.working_state* %state, i32 0, i32 2
  %29 = bitcast %struct.savable_state* %saved13 to i8*
  %30 = bitcast %struct.savable_state* %cur14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 32, i32 8, i1 false), !tbaa.struct !48
  %31 = bitcast %struct.working_state* %state to i8*
  call void @llvm.lifetime.end(i64 56, i8* %31) #6
  %32 = bitcast %struct.huff_entropy_encoder** %entropy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @htest_one_block(i16* %block, i32 %last_dc_val, i64* %dc_counts, i64* %ac_counts) #0 {
entry:
  %block.addr = alloca i16*, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dc_counts.addr = alloca i64*, align 8
  %ac_counts.addr = alloca i64*, align 8
  %temp = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store i16* %block, i16** %block.addr, align 8, !tbaa !2
  store i32 %last_dc_val, i32* %last_dc_val.addr, align 4, !tbaa !14
  store i64* %dc_counts, i64** %dc_counts.addr, align 8, !tbaa !2
  store i64* %ac_counts, i64** %ac_counts.addr, align 8, !tbaa !2
  %0 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  %3 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %4 = load i16*, i16** %block.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !40
  %conv = sext i16 %5 to i32
  %6 = load i32, i32* %last_dc_val.addr, align 4, !tbaa !14
  %sub = sub nsw i32 %conv, %6
  store i32 %sub, i32* %temp, align 4, !tbaa !14
  %7 = load i32, i32* %temp, align 4, !tbaa !14
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %temp, align 4, !tbaa !14
  %sub2 = sub nsw i32 0, %8
  store i32 %sub2, i32* %temp, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %nbits, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %9 = load i32, i32* %temp, align 4, !tbaa !14
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %nbits, align 4, !tbaa !14
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !14
  %11 = load i32, i32* %temp, align 4, !tbaa !14
  %shr = ashr i32 %11, 1
  store i32 %shr, i32* %temp, align 4, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %nbits, align 4, !tbaa !14
  %idxprom = sext i32 %12 to i64
  %13 = load i64*, i64** %dc_counts.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i64, i64* %13, i64 %idxprom
  %14 = load i64, i64* %arrayidx3, align 8, !tbaa !16
  %inc4 = add nsw i64 %14, 1
  store i64 %inc4, i64* %arrayidx3, align 8, !tbaa !16
  store i32 0, i32* %r, align 4, !tbaa !14
  store i32 1, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %15 = load i32, i32* %k, align 4, !tbaa !14
  %cmp5 = icmp slt i32 %15, 64
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom7
  %17 = load i32, i32* %arrayidx8, align 4, !tbaa !14
  %idxprom9 = sext i32 %17 to i64
  %18 = load i16*, i16** %block.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i16, i16* %18, i64 %idxprom9
  %19 = load i16, i16* %arrayidx10, align 2, !tbaa !40
  %conv11 = sext i16 %19 to i32
  store i32 %conv11, i32* %temp, align 4, !tbaa !14
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.body
  %20 = load i32, i32* %r, align 4, !tbaa !14
  %inc15 = add nsw i32 %20, 1
  store i32 %inc15, i32* %r, align 4, !tbaa !14
  br label %if.end.38

if.else:                                          ; preds = %for.body
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.19, %if.else
  %21 = load i32, i32* %r, align 4, !tbaa !14
  %cmp17 = icmp sgt i32 %21, 15
  br i1 %cmp17, label %while.body.19, label %while.end.23

while.body.19:                                    ; preds = %while.cond.16
  %22 = load i64*, i64** %ac_counts.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i64, i64* %22, i64 240
  %23 = load i64, i64* %arrayidx20, align 8, !tbaa !16
  %inc21 = add nsw i64 %23, 1
  store i64 %inc21, i64* %arrayidx20, align 8, !tbaa !16
  %24 = load i32, i32* %r, align 4, !tbaa !14
  %sub22 = sub nsw i32 %24, 16
  store i32 %sub22, i32* %r, align 4, !tbaa !14
  br label %while.cond.16

while.end.23:                                     ; preds = %while.cond.16
  %25 = load i32, i32* %temp, align 4, !tbaa !14
  %cmp24 = icmp slt i32 %25, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %while.end.23
  %26 = load i32, i32* %temp, align 4, !tbaa !14
  %sub27 = sub nsw i32 0, %26
  store i32 %sub27, i32* %temp, align 4, !tbaa !14
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %while.end.23
  store i32 1, i32* %nbits, align 4, !tbaa !14
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.32, %if.end.28
  %27 = load i32, i32* %temp, align 4, !tbaa !14
  %shr30 = ashr i32 %27, 1
  store i32 %shr30, i32* %temp, align 4, !tbaa !14
  %tobool31 = icmp ne i32 %shr30, 0
  br i1 %tobool31, label %while.body.32, label %while.end.34

while.body.32:                                    ; preds = %while.cond.29
  %28 = load i32, i32* %nbits, align 4, !tbaa !14
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %nbits, align 4, !tbaa !14
  br label %while.cond.29

while.end.34:                                     ; preds = %while.cond.29
  %29 = load i32, i32* %r, align 4, !tbaa !14
  %shl = shl i32 %29, 4
  %30 = load i32, i32* %nbits, align 4, !tbaa !14
  %add = add nsw i32 %shl, %30
  %idxprom35 = sext i32 %add to i64
  %31 = load i64*, i64** %ac_counts.addr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds i64, i64* %31, i64 %idxprom35
  %32 = load i64, i64* %arrayidx36, align 8, !tbaa !16
  %inc37 = add nsw i64 %32, 1
  store i64 %inc37, i64* %arrayidx36, align 8, !tbaa !16
  store i32 0, i32* %r, align 4, !tbaa !14
  br label %if.end.38

if.end.38:                                        ; preds = %while.end.34, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %33 = load i32, i32* %k, align 4, !tbaa !14
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %r, align 4, !tbaa !14
  %cmp40 = icmp sgt i32 %34, 0
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %for.end
  %35 = load i64*, i64** %ac_counts.addr, align 8, !tbaa !2
  %arrayidx43 = getelementptr inbounds i64, i64* %35, i64 0
  %36 = load i64, i64* %arrayidx43, align 8, !tbaa !16
  %inc44 = add nsw i64 %36, 1
  store i64 %inc44, i64* %arrayidx43, align 8, !tbaa !16
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %for.end
  %37 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #6
  %38 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #6
  %39 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #6
  %40 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #6
  ret void
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #4

; Function Attrs: nounwind argmemonly
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @emit_restart(%struct.working_state* %state, i32 %restart_num) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %restart_num.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !2
  store i32 %restart_num, i32* %restart_num.addr, align 4, !tbaa !14
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %call = call i32 @flush_bits(%struct.working_state* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %next_output_byte = getelementptr inbounds %struct.working_state, %struct.working_state* %2, i32 0, i32 0
  %3 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !44
  store i8 -1, i8* %3, align 1, !tbaa !15
  %4 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %free_in_buffer = getelementptr inbounds %struct.working_state, %struct.working_state* %4, i32 0, i32 1
  %5 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %dec = add i64 %5, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !47
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %call2 = call i32 @dump_buffer(%struct.working_state* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %7 = load i32, i32* %restart_num.addr, align 4, !tbaa !14
  %add = add nsw i32 208, %7
  %conv = trunc i32 %add to i8
  %8 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %next_output_byte7 = getelementptr inbounds %struct.working_state, %struct.working_state* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_output_byte7, align 8, !tbaa !44
  %incdec.ptr8 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr8, i8** %next_output_byte7, align 8, !tbaa !44
  store i8 %conv, i8* %9, align 1, !tbaa !15
  %10 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %free_in_buffer9 = getelementptr inbounds %struct.working_state, %struct.working_state* %10, i32 0, i32 1
  %11 = load i64, i64* %free_in_buffer9, align 8, !tbaa !47
  %dec10 = add i64 %11, -1
  store i64 %dec10, i64* %free_in_buffer9, align 8, !tbaa !47
  %cmp11 = icmp eq i64 %dec10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.6
  %12 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %call14 = call i32 @dump_buffer(%struct.working_state* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  store i32 0, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %13 = load i32, i32* %ci, align 4, !tbaa !14
  %14 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %14, i32 0, i32 3
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !49
  %comps_in_scan = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 41
  %16 = load i32, i32* %comps_in_scan, align 4, !tbaa !30
  %cmp19 = icmp slt i32 %13, %16
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %ci, align 4, !tbaa !14
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %18, i32 0, i32 2
  %last_dc_val = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %last_dc_val, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %ci, align 4, !tbaa !14
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.16, %if.then.4, %if.then
  %20 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #6
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @encode_one_block(%struct.working_state* %state, i16* %block, i32 %last_dc_val, %struct.c_derived_tbl* %dctbl, %struct.c_derived_tbl* %actbl) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %block.addr = alloca i16*, align 8
  %last_dc_val.addr = alloca i32, align 4
  %dctbl.addr = alloca %struct.c_derived_tbl*, align 8
  %actbl.addr = alloca %struct.c_derived_tbl*, align 8
  %temp = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %nbits = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !2
  store i16* %block, i16** %block.addr, align 8, !tbaa !2
  store i32 %last_dc_val, i32* %last_dc_val.addr, align 4, !tbaa !14
  store %struct.c_derived_tbl* %dctbl, %struct.c_derived_tbl** %dctbl.addr, align 8, !tbaa !2
  store %struct.c_derived_tbl* %actbl, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !2
  %0 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %4 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #6
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #6
  %6 = load i16*, i16** %block.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !40
  %conv = sext i16 %7 to i32
  %8 = load i32, i32* %last_dc_val.addr, align 4, !tbaa !14
  %sub = sub nsw i32 %conv, %8
  store i32 %sub, i32* %temp2, align 4, !tbaa !14
  store i32 %sub, i32* %temp, align 4, !tbaa !14
  %9 = load i32, i32* %temp, align 4, !tbaa !14
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %temp, align 4, !tbaa !14
  %sub2 = sub nsw i32 0, %10
  store i32 %sub2, i32* %temp, align 4, !tbaa !14
  %11 = load i32, i32* %temp2, align 4, !tbaa !14
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %temp2, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %nbits, align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %12 = load i32, i32* %temp, align 4, !tbaa !14
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %nbits, align 4, !tbaa !14
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %nbits, align 4, !tbaa !14
  %14 = load i32, i32* %temp, align 4, !tbaa !14
  %shr = ashr i32 %14, 1
  store i32 %shr, i32* %temp, align 4, !tbaa !14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %16 = load i32, i32* %nbits, align 4, !tbaa !14
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dctbl.addr, align 8, !tbaa !2
  %ehufco = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %17, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx3, align 4, !tbaa !14
  %19 = load i32, i32* %nbits, align 4, !tbaa !14
  %idxprom4 = sext i32 %19 to i64
  %20 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %dctbl.addr, align 8, !tbaa !2
  %ehufsi = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %20, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi, i32 0, i64 %idxprom4
  %21 = load i8, i8* %arrayidx5, align 1, !tbaa !15
  %conv6 = sext i8 %21 to i32
  %call = call i32 @emit_bits(%struct.working_state* %15, i32 %18, i32 %conv6)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %while.end
  %22 = load i32, i32* %nbits, align 4, !tbaa !14
  %tobool10 = icmp ne i32 %22, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.9
  %23 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %24 = load i32, i32* %temp2, align 4, !tbaa !14
  %25 = load i32, i32* %nbits, align 4, !tbaa !14
  %call12 = call i32 @emit_bits(%struct.working_state* %23, i32 %24, i32 %25)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.9
  store i32 0, i32* %r, align 4, !tbaa !14
  store i32 1, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %26 = load i32, i32* %k, align 4, !tbaa !14
  %cmp17 = icmp slt i32 %26, 64
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %k, align 4, !tbaa !14
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i32 0, i64 %idxprom19
  %28 = load i32, i32* %arrayidx20, align 4, !tbaa !14
  %idxprom21 = sext i32 %28 to i64
  %29 = load i16*, i16** %block.addr, align 8, !tbaa !2
  %arrayidx22 = getelementptr inbounds i16, i16* %29, i64 %idxprom21
  %30 = load i16, i16* %arrayidx22, align 2, !tbaa !40
  %conv23 = sext i16 %30 to i32
  store i32 %conv23, i32* %temp, align 4, !tbaa !14
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.body
  %31 = load i32, i32* %r, align 4, !tbaa !14
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, i32* %r, align 4, !tbaa !14
  br label %if.end.70

if.else:                                          ; preds = %for.body
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.40, %if.else
  %32 = load i32, i32* %r, align 4, !tbaa !14
  %cmp29 = icmp sgt i32 %32, 15
  br i1 %cmp29, label %while.body.31, label %while.end.42

while.body.31:                                    ; preds = %while.cond.28
  %33 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %34 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !2
  %ehufco32 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %34, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco32, i32 0, i64 240
  %35 = load i32, i32* %arrayidx33, align 4, !tbaa !14
  %36 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !2
  %ehufsi34 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %36, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi34, i32 0, i64 240
  %37 = load i8, i8* %arrayidx35, align 1, !tbaa !15
  %conv36 = sext i8 %37 to i32
  %call37 = call i32 @emit_bits(%struct.working_state* %33, i32 %35, i32 %conv36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %while.body.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %while.body.31
  %38 = load i32, i32* %r, align 4, !tbaa !14
  %sub41 = sub nsw i32 %38, 16
  store i32 %sub41, i32* %r, align 4, !tbaa !14
  br label %while.cond.28

while.end.42:                                     ; preds = %while.cond.28
  %39 = load i32, i32* %temp, align 4, !tbaa !14
  store i32 %39, i32* %temp2, align 4, !tbaa !14
  %40 = load i32, i32* %temp, align 4, !tbaa !14
  %cmp43 = icmp slt i32 %40, 0
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %while.end.42
  %41 = load i32, i32* %temp, align 4, !tbaa !14
  %sub46 = sub nsw i32 0, %41
  store i32 %sub46, i32* %temp, align 4, !tbaa !14
  %42 = load i32, i32* %temp2, align 4, !tbaa !14
  %dec47 = add nsw i32 %42, -1
  store i32 %dec47, i32* %temp2, align 4, !tbaa !14
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %while.end.42
  store i32 1, i32* %nbits, align 4, !tbaa !14
  br label %while.cond.49

while.cond.49:                                    ; preds = %while.body.52, %if.end.48
  %43 = load i32, i32* %temp, align 4, !tbaa !14
  %shr50 = ashr i32 %43, 1
  store i32 %shr50, i32* %temp, align 4, !tbaa !14
  %tobool51 = icmp ne i32 %shr50, 0
  br i1 %tobool51, label %while.body.52, label %while.end.54

while.body.52:                                    ; preds = %while.cond.49
  %44 = load i32, i32* %nbits, align 4, !tbaa !14
  %inc53 = add nsw i32 %44, 1
  store i32 %inc53, i32* %nbits, align 4, !tbaa !14
  br label %while.cond.49

while.end.54:                                     ; preds = %while.cond.49
  %45 = load i32, i32* %r, align 4, !tbaa !14
  %shl = shl i32 %45, 4
  %46 = load i32, i32* %nbits, align 4, !tbaa !14
  %add = add nsw i32 %shl, %46
  store i32 %add, i32* %i, align 4, !tbaa !14
  %47 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %48 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom55 = sext i32 %48 to i64
  %49 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !2
  %ehufco56 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %49, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco56, i32 0, i64 %idxprom55
  %50 = load i32, i32* %arrayidx57, align 4, !tbaa !14
  %51 = load i32, i32* %i, align 4, !tbaa !14
  %idxprom58 = sext i32 %51 to i64
  %52 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !2
  %ehufsi59 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %52, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi59, i32 0, i64 %idxprom58
  %53 = load i8, i8* %arrayidx60, align 1, !tbaa !15
  %conv61 = sext i8 %53 to i32
  %call62 = call i32 @emit_bits(%struct.working_state* %47, i32 %50, i32 %conv61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %while.end.54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.65:                                        ; preds = %while.end.54
  %54 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %55 = load i32, i32* %temp2, align 4, !tbaa !14
  %56 = load i32, i32* %nbits, align 4, !tbaa !14
  %call66 = call i32 @emit_bits(%struct.working_state* %54, i32 %55, i32 %56)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %if.end.65
  store i32 0, i32* %r, align 4, !tbaa !14
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %57 = load i32, i32* %k, align 4, !tbaa !14
  %inc71 = add nsw i32 %57, 1
  store i32 %inc71, i32* %k, align 4, !tbaa !14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i32, i32* %r, align 4, !tbaa !14
  %cmp72 = icmp sgt i32 %58, 0
  br i1 %cmp72, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %for.end
  %59 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %60 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !2
  %ehufco75 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %60, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [256 x i32], [256 x i32]* %ehufco75, i32 0, i64 0
  %61 = load i32, i32* %arrayidx76, align 4, !tbaa !14
  %62 = load %struct.c_derived_tbl*, %struct.c_derived_tbl** %actbl.addr, align 8, !tbaa !2
  %ehufsi77 = getelementptr inbounds %struct.c_derived_tbl, %struct.c_derived_tbl* %62, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [256 x i8], [256 x i8]* %ehufsi77, i32 0, i64 0
  %63 = load i8, i8* %arrayidx78, align 1, !tbaa !15
  %conv79 = sext i8 %63 to i32
  %call80 = call i32 @emit_bits(%struct.working_state* %59, i32 %61, i32 %conv79)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.then.74
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.83:                                        ; preds = %if.then.74
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.84, %if.then.82, %if.then.68, %if.then.64, %if.then.39, %if.then.14, %if.then.8
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #6
  %65 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #6
  %66 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #6
  %67 = bitcast i32* %nbits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #6
  %68 = bitcast i32* %temp2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #6
  %69 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #6
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @flush_bits(%struct.working_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !2
  %0 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %call = call i32 @emit_bits(%struct.working_state* %0, i32 127, i32 7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %1, i32 0, i32 2
  %put_buffer = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 0
  store i64 0, i64* %put_buffer, align 8, !tbaa !50
  %2 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cur1 = getelementptr inbounds %struct.working_state, %struct.working_state* %2, i32 0, i32 2
  %put_bits = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur1, i32 0, i32 1
  store i32 0, i32* %put_bits, align 4, !tbaa !51
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @dump_buffer(%struct.working_state* %state) #0 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %dest = alloca %struct.jpeg_destination_mgr*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !2
  %0 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %1, i32 0, i32 3
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !49
  %dest1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 5
  %3 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest1, align 8, !tbaa !41
  store %struct.jpeg_destination_mgr* %3, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %4 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %empty_output_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %4, i32 0, i32 3
  %5 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %empty_output_buffer, align 8, !tbaa !52
  %6 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cinfo2 = getelementptr inbounds %struct.working_state, %struct.working_state* %6, i32 0, i32 3
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo2, align 8, !tbaa !49
  %call = call i32 %5(%struct.jpeg_compress_struct* %7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %next_output_byte = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %8, i32 0, i32 0
  %9 = load i8*, i8** %next_output_byte, align 8, !tbaa !42
  %10 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %next_output_byte3 = getelementptr inbounds %struct.working_state, %struct.working_state* %10, i32 0, i32 0
  store i8* %9, i8** %next_output_byte3, align 8, !tbaa !44
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %dest, align 8, !tbaa !2
  %free_in_buffer = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %11, i32 0, i32 1
  %12 = load i64, i64* %free_in_buffer, align 8, !tbaa !46
  %13 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %free_in_buffer4 = getelementptr inbounds %struct.working_state, %struct.working_state* %13, i32 0, i32 1
  store i64 %12, i64* %free_in_buffer4, align 8, !tbaa !47
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %14 = bitcast %struct.jpeg_destination_mgr** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #6
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: inlinehint nounwind ssp uwtable
define internal i32 @emit_bits(%struct.working_state* %state, i32 %code, i32 %size) #5 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.working_state*, align 8
  %code.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %put_buffer = alloca i64, align 8
  %put_bits = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.working_state* %state, %struct.working_state** %state.addr, align 8, !tbaa !2
  store i32 %code, i32* %code.addr, align 4, !tbaa !14
  store i32 %size, i32* %size.addr, align 4, !tbaa !14
  %0 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load i32, i32* %code.addr, align 4, !tbaa !14
  %conv = zext i32 %1 to i64
  store i64 %conv, i64* %put_buffer, align 8, !tbaa !16
  %2 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  %3 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cur = getelementptr inbounds %struct.working_state, %struct.working_state* %3, i32 0, i32 2
  %put_bits1 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur, i32 0, i32 1
  %4 = load i32, i32* %put_bits1, align 4, !tbaa !51
  store i32 %4, i32* %put_bits, align 4, !tbaa !14
  %5 = load i32, i32* %size.addr, align 4, !tbaa !14
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cinfo = getelementptr inbounds %struct.working_state, %struct.working_state* %6, i32 0, i32 3
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo, align 8, !tbaa !49
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !17
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 39, i32* %msg_code, align 4, !tbaa !18
  %9 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cinfo3 = getelementptr inbounds %struct.working_state, %struct.working_state* %9, i32 0, i32 3
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo3, align 8, !tbaa !49
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !17
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !20
  %13 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cinfo5 = getelementptr inbounds %struct.working_state, %struct.working_state* %13, i32 0, i32 3
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo5, align 8, !tbaa !49
  %15 = bitcast %struct.jpeg_compress_struct* %14 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %size.addr, align 4, !tbaa !14
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub nsw i64 %shl, 1
  %17 = load i64, i64* %put_buffer, align 8, !tbaa !16
  %and = and i64 %17, %sub
  store i64 %and, i64* %put_buffer, align 8, !tbaa !16
  %18 = load i32, i32* %size.addr, align 4, !tbaa !14
  %19 = load i32, i32* %put_bits, align 4, !tbaa !14
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %put_bits, align 4, !tbaa !14
  %20 = load i32, i32* %put_bits, align 4, !tbaa !14
  %sub6 = sub nsw i32 24, %20
  %21 = load i64, i64* %put_buffer, align 8, !tbaa !16
  %sh_prom7 = zext i32 %sub6 to i64
  %shl8 = shl i64 %21, %sh_prom7
  store i64 %shl8, i64* %put_buffer, align 8, !tbaa !16
  %22 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cur9 = getelementptr inbounds %struct.working_state, %struct.working_state* %22, i32 0, i32 2
  %put_buffer10 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur9, i32 0, i32 0
  %23 = load i64, i64* %put_buffer10, align 8, !tbaa !50
  %24 = load i64, i64* %put_buffer, align 8, !tbaa !16
  %or = or i64 %24, %23
  store i64 %or, i64* %put_buffer, align 8, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %25 = load i32, i32* %put_bits, align 4, !tbaa !14
  %cmp11 = icmp sge i32 %25, 8
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #6
  %27 = load i64, i64* %put_buffer, align 8, !tbaa !16
  %shr = ashr i64 %27, 16
  %and13 = and i64 %shr, 255
  %conv14 = trunc i64 %and13 to i32
  store i32 %conv14, i32* %c, align 4, !tbaa !14
  %28 = load i32, i32* %c, align 4, !tbaa !14
  %conv15 = trunc i32 %28 to i8
  %29 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %next_output_byte = getelementptr inbounds %struct.working_state, %struct.working_state* %29, i32 0, i32 0
  %30 = load i8*, i8** %next_output_byte, align 8, !tbaa !44
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %next_output_byte, align 8, !tbaa !44
  store i8 %conv15, i8* %30, align 1, !tbaa !15
  %31 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %free_in_buffer = getelementptr inbounds %struct.working_state, %struct.working_state* %31, i32 0, i32 1
  %32 = load i64, i64* %free_in_buffer, align 8, !tbaa !47
  %dec = add i64 %32, -1
  store i64 %dec, i64* %free_in_buffer, align 8, !tbaa !47
  %cmp16 = icmp eq i64 %dec, 0
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %while.body
  %33 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %call = call i32 @dump_buffer(%struct.working_state* %33)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %while.body
  %34 = load i32, i32* %c, align 4, !tbaa !14
  %cmp22 = icmp eq i32 %34, 255
  br i1 %cmp22, label %if.then.24, label %if.end.37

if.then.24:                                       ; preds = %if.end.21
  %35 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %next_output_byte25 = getelementptr inbounds %struct.working_state, %struct.working_state* %35, i32 0, i32 0
  %36 = load i8*, i8** %next_output_byte25, align 8, !tbaa !44
  %incdec.ptr26 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr26, i8** %next_output_byte25, align 8, !tbaa !44
  store i8 0, i8* %36, align 1, !tbaa !15
  %37 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %free_in_buffer27 = getelementptr inbounds %struct.working_state, %struct.working_state* %37, i32 0, i32 1
  %38 = load i64, i64* %free_in_buffer27, align 8, !tbaa !47
  %dec28 = add i64 %38, -1
  store i64 %dec28, i64* %free_in_buffer27, align 8, !tbaa !47
  %cmp29 = icmp eq i64 %dec28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.then.24
  %39 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %call32 = call i32 @dump_buffer(%struct.working_state* %39)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.21
  %40 = load i64, i64* %put_buffer, align 8, !tbaa !16
  %shl38 = shl i64 %40, 8
  store i64 %shl38, i64* %put_buffer, align 8, !tbaa !16
  %41 = load i32, i32* %put_bits, align 4, !tbaa !14
  %sub39 = sub nsw i32 %41, 8
  store i32 %sub39, i32* %put_bits, align 4, !tbaa !14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.34, %if.then.19
  %42 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #6
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load i64, i64* %put_buffer, align 8, !tbaa !16
  %44 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cur40 = getelementptr inbounds %struct.working_state, %struct.working_state* %44, i32 0, i32 2
  %put_buffer41 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur40, i32 0, i32 0
  store i64 %43, i64* %put_buffer41, align 8, !tbaa !50
  %45 = load i32, i32* %put_bits, align 4, !tbaa !14
  %46 = load %struct.working_state*, %struct.working_state** %state.addr, align 8, !tbaa !2
  %cur42 = getelementptr inbounds %struct.working_state, %struct.working_state* %46, i32 0, i32 2
  %put_bits43 = getelementptr inbounds %struct.savable_state, %struct.savable_state* %cur42, i32 0, i32 1
  store i32 %45, i32* %put_bits43, align 4, !tbaa !51
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.44

cleanup.44:                                       ; preds = %while.end, %cleanup
  %47 = bitcast i32* %put_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #6
  %48 = bitcast i64* %put_buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #6
  %49 = load i32, i32* %retval
  ret i32 %49
}

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
!14 = !{!8, !8, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!13, !13, i64 0}
!17 = !{!7, !3, i64 0}
!18 = !{!19, !8, i64 40}
!19 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !13, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!20 = !{!19, !3, i64 0}
!21 = !{!22, !8, i64 276}
!22 = !{!"", !4, i64 0, !4, i64 17, !8, i64 276}
!23 = !{!7, !3, i64 488}
!24 = !{!25, !3, i64 0}
!25 = !{!"", !26, i64 0, !27, i64 24, !8, i64 56, !8, i64 60, !4, i64 64, !4, i64 96, !4, i64 128, !4, i64 160}
!26 = !{!"jpeg_entropy_encoder", !3, i64 0, !3, i64 8, !3, i64 16}
!27 = !{!"", !13, i64 0, !8, i64 8, !4, i64 12}
!28 = !{!25, !3, i64 8}
!29 = !{!25, !3, i64 16}
!30 = !{!7, !8, i64 316}
!31 = !{!32, !8, i64 20}
!32 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !3, i64 80, !3, i64 88}
!33 = !{!32, !8, i64 24}
!34 = !{!25, !13, i64 24}
!35 = !{!25, !8, i64 32}
!36 = !{!7, !8, i64 272}
!37 = !{!25, !8, i64 56}
!38 = !{!25, !8, i64 60}
!39 = !{!7, !8, i64 360}
!40 = !{!10, !10, i64 0}
!41 = !{!7, !3, i64 32}
!42 = !{!43, !3, i64 0}
!43 = !{!"jpeg_destination_mgr", !3, i64 0, !13, i64 8, !3, i64 16, !3, i64 24, !3, i64 32}
!44 = !{!45, !3, i64 0}
!45 = !{!"", !3, i64 0, !13, i64 8, !27, i64 16, !3, i64 48}
!46 = !{!43, !13, i64 8}
!47 = !{!45, !13, i64 8}
!48 = !{i64 0, i64 8, !16, i64 8, i64 4, !14, i64 12, i64 16, !15}
!49 = !{!45, !3, i64 48}
!50 = !{!45, !13, i64 16}
!51 = !{!45, !8, i64 24}
!52 = !{!43, !3, i64 24}
