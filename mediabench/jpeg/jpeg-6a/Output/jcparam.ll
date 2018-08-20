; ModuleID = 'jcparam.c'
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
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
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

@jpeg_set_linear_quality.std_luminance_quant_tbl = internal constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 16
@jpeg_set_linear_quality.std_chrominance_quant_tbl = internal constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16
@std_huff_tables.bits_dc_luminance = internal constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16
@std_huff_tables.val_dc_luminance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_dc_chrominance = internal constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@std_huff_tables.val_dc_chrominance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16
@std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@std_huff_tables.bits_ac_chrominance = internal constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16
@std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16

; Function Attrs: nounwind ssp uwtable
define void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %cinfo, i32 %which_tbl, i32* %basic_table, i32 %scale_factor, i32 %force_baseline) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %which_tbl.addr = alloca i32, align 4
  %basic_table.addr = alloca i32*, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  %qtblptr = alloca %struct.JQUANT_TBL**, align 8
  %i = alloca i32, align 4
  %temp = alloca i64, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %which_tbl, i32* %which_tbl.addr, align 4, !tbaa !6
  store i32* %basic_table, i32** %basic_table.addr, align 8, !tbaa !2
  store i32 %scale_factor, i32* %scale_factor.addr, align 4, !tbaa !6
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !6
  %0 = bitcast %struct.JQUANT_TBL*** %qtblptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = load i32, i32* %which_tbl.addr, align 4, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %quant_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 15
  %arrayidx = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %quant_tbl_ptrs, i32 0, i64 %idxprom
  store %struct.JQUANT_TBL** %arrayidx, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 4
  %6 = load i32, i32* %global_state, align 4, !tbaa !8
  %cmp = icmp ne i32 %6, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !13
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 4
  %10 = load i32, i32* %global_state1, align 4, !tbaa !8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 6
  %i3 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %i3, i32 0, i64 0
  store i32 %10, i32* %arrayidx4, align 4, !tbaa !6
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err5, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %19 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %18, align 8, !tbaa !2
  %cmp6 = icmp eq %struct.JQUANT_TBL* %19, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  %call = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %21)
  %22 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  store %struct.JQUANT_TBL* %call, %struct.JQUANT_TBL** %22, align 8, !tbaa !2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %23 = load i32, i32* %i, align 4, !tbaa !6
  %cmp9 = icmp slt i32 %23, 64
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom10 = sext i32 %24 to i64
  %25 = load i32*, i32** %basic_table.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i32, i32* %25, i64 %idxprom10
  %26 = load i32, i32* %arrayidx11, align 4, !tbaa !6
  %conv = zext i32 %26 to i64
  %27 = load i32, i32* %scale_factor.addr, align 4, !tbaa !6
  %conv12 = sext i32 %27 to i64
  %mul = mul nsw i64 %conv, %conv12
  %add = add nsw i64 %mul, 50
  %div = sdiv i64 %add, 100
  store i64 %div, i64* %temp, align 8, !tbaa !17
  %28 = load i64, i64* %temp, align 8, !tbaa !17
  %cmp13 = icmp sle i64 %28, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  store i64 1, i64* %temp, align 8, !tbaa !17
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.body
  %29 = load i64, i64* %temp, align 8, !tbaa !17
  %cmp17 = icmp sgt i64 %29, 32767
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i64 32767, i64* %temp, align 8, !tbaa !17
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %30 = load i32, i32* %force_baseline.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.20
  %31 = load i64, i64* %temp, align 8, !tbaa !17
  %cmp21 = icmp sgt i64 %31, 255
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true
  store i64 255, i64* %temp, align 8, !tbaa !17
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true, %if.end.20
  %32 = load i64, i64* %temp, align 8, !tbaa !17
  %conv25 = trunc i64 %32 to i16
  %33 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom26 = sext i32 %33 to i64
  %34 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %35 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %34, align 8, !tbaa !2
  %quantval = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %35, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [64 x i16], [64 x i16]* %quantval, i32 0, i64 %idxprom26
  store i16 %conv25, i16* %arrayidx27, align 2, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %36 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %qtblptr, align 8, !tbaa !2
  %38 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %37, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %38, i32 0, i32 1
  store i32 0, i32* %sent_table, align 4, !tbaa !19
  %39 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #5
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #5
  %41 = bitcast %struct.JQUANT_TBL*** %qtblptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #5
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* %cinfo, i32 %scale_factor, i32 %force_baseline) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %scale_factor, i32* %scale_factor.addr, align 4, !tbaa !6
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !6
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %1 = load i32, i32* %scale_factor.addr, align 4, !tbaa !6
  %2 = load i32, i32* %force_baseline.addr, align 4, !tbaa !6
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %0, i32 0, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 0, i32 0), i32 %1, i32 %2)
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %4 = load i32, i32* %scale_factor.addr, align 4, !tbaa !6
  %5 = load i32, i32* %force_baseline.addr, align 4, !tbaa !6
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %3, i32 1, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 0, i32 0), i32 %4, i32 %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @jpeg_quality_scaling(i32 %quality) #0 {
entry:
  %quality.addr = alloca i32, align 4
  store i32 %quality, i32* %quality.addr, align 4, !tbaa !6
  %0 = load i32, i32* %quality.addr, align 4, !tbaa !6
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %quality.addr, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %quality.addr, align 4, !tbaa !6
  %cmp1 = icmp sgt i32 %1, 100
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 100, i32* %quality.addr, align 4, !tbaa !6
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load i32, i32* %quality.addr, align 4, !tbaa !6
  %cmp4 = icmp slt i32 %2, 50
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %3 = load i32, i32* %quality.addr, align 4, !tbaa !6
  %div = sdiv i32 5000, %3
  store i32 %div, i32* %quality.addr, align 4, !tbaa !6
  br label %if.end.6

if.else:                                          ; preds = %if.end.3
  %4 = load i32, i32* %quality.addr, align 4, !tbaa !6
  %mul = mul nsw i32 %4, 2
  %sub = sub nsw i32 200, %mul
  store i32 %sub, i32* %quality.addr, align 4, !tbaa !6
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %5 = load i32, i32* %quality.addr, align 4, !tbaa !6
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_quality(%struct.jpeg_compress_struct* %cinfo, i32 %quality, i32 %force_baseline) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %quality.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %quality, i32* %quality.addr, align 4, !tbaa !6
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !6
  %0 = load i32, i32* %quality.addr, align 4, !tbaa !6
  %call = call i32 @jpeg_quality_scaling(i32 %0)
  store i32 %call, i32* %quality.addr, align 4, !tbaa !6
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %2 = load i32, i32* %quality.addr, align 4, !tbaa !6
  %3 = load i32, i32* %force_baseline.addr, align 4, !tbaa !6
  call void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_defaults(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %i = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 4
  %2 = load i32, i32* %global_state, align 4, !tbaa !8
  %cmp = icmp ne i32 %2, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !13
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 4
  %6 = load i32, i32* %global_state1, align 4, !tbaa !8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 6
  %i3 = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i3, i32 0, i64 0
  store i32 %6, i32* %arrayidx, align 4, !tbaa !6
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 0
  %11 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  call void %11(%struct.jpeg_common_struct* %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 14
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  %cmp5 = icmp eq %struct.jpeg_component_info* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !22
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i32 0, i32 0
  %18 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !23
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %20 = bitcast %struct.jpeg_compress_struct* %19 to %struct.jpeg_common_struct*
  %call = call i8* %18(%struct.jpeg_common_struct* %20, i32 0, i64 960)
  %21 = bitcast i8* %call to %struct.jpeg_component_info*
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 14
  store %struct.jpeg_component_info* %21, %struct.jpeg_component_info** %comp_info7, align 8, !tbaa !21
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 11
  store i32 8, i32* %data_precision, align 4, !tbaa !25
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* %24, i32 75, i32 1)
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @std_huff_tables(%struct.jpeg_compress_struct* %25)
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %26 = load i32, i32* %i, align 4, !tbaa !6
  %cmp9 = icmp slt i32 %26, 16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_L = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 18
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_L, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx10, align 1, !tbaa !26
  %29 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom11 = sext i32 %29 to i64
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_dc_U = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 19
  %arrayidx12 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_dc_U, i32 0, i64 %idxprom11
  store i8 1, i8* %arrayidx12, align 1, !tbaa !26
  %31 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom13 = sext i32 %31 to i64
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_ac_K = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 20
  %arrayidx14 = getelementptr inbounds [16 x i8], [16 x i8]* %arith_ac_K, i32 0, i64 %idxprom13
  store i8 5, i8* %arrayidx14, align 1, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 22
  store %struct.jpeg_scan_info* null, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !27
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 21
  store i32 0, i32* %num_scans, align 4, !tbaa !28
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %raw_data_in = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 23
  store i32 0, i32* %raw_data_in, align 4, !tbaa !29
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %arith_code = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 24
  store i32 0, i32* %arith_code, align 4, !tbaa !30
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 25
  store i32 0, i32* %optimize_coding, align 4, !tbaa !31
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %data_precision15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 11
  %40 = load i32, i32* %data_precision15, align 4, !tbaa !25
  %cmp16 = icmp sgt i32 %40, 8
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.end
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %optimize_coding18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 25
  store i32 1, i32* %optimize_coding18, align 4, !tbaa !31
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %for.end
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %CCIR601_sampling = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 26
  store i32 0, i32* %CCIR601_sampling, align 4, !tbaa !32
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 27
  store i32 0, i32* %smoothing_factor, align 4, !tbaa !33
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 28
  store i32 0, i32* %dct_method, align 4, !tbaa !34
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 29
  store i32 0, i32* %restart_interval, align 4, !tbaa !35
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 30
  store i32 0, i32* %restart_in_rows, align 4, !tbaa !36
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %density_unit = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 32
  store i8 0, i8* %density_unit, align 1, !tbaa !37
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %X_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 33
  store i16 1, i16* %X_density, align 2, !tbaa !38
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %Y_density = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 34
  store i16 1, i16* %Y_density, align 2, !tbaa !39
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_default_colorspace(%struct.jpeg_compress_struct* %50)
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @std_huff_tables(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 16
  %arrayidx = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs, i32 0, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* %0, %struct.JHUFF_TBL** %arrayidx, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_luminance, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_luminance, i32 0, i32 0))
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 17
  %arrayidx1 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs, i32 0, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* %2, %struct.JHUFF_TBL** %arrayidx1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_luminance, i32 0, i32 0), i8* getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_luminance, i32 0, i32 0))
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %dc_huff_tbl_ptrs2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 16
  %arrayidx3 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %dc_huff_tbl_ptrs2, i32 0, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* %4, %struct.JHUFF_TBL** %arrayidx3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_chrominance, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_chrominance, i32 0, i32 0))
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %ac_huff_tbl_ptrs4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 17
  %arrayidx5 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %ac_huff_tbl_ptrs4, i32 0, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* %6, %struct.JHUFF_TBL** %arrayidx5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_chrominance, i32 0, i32 0), i8* getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_chrominance, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_default_colorspace(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i32 0, i32 9
  %1 = load i32, i32* %in_color_space, align 4, !tbaa !40
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 5, label %sw.bb.4
    i32 0, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %2, i32 1)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %3, i32 3)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %4, i32 3)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %5, i32 4)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %6, i32 5)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %7, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 5
  store i32 7, i32* %msg_code, align 4, !tbaa !13
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err6, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %cinfo, i32 %colorspace) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %colorspace.addr = alloca i32, align 4
  %compptr = alloca %struct.jpeg_component_info*, align 8
  %ci = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %colorspace, i32* %colorspace.addr, align 4, !tbaa !26
  %0 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #5
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %global_state, align 4, !tbaa !8
  %cmp = icmp ne i32 %3, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !13
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 4
  %7 = load i32, i32* %global_state1, align 4, !tbaa !8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %7, i32* %arrayidx, align 4, !tbaa !6
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 0
  %12 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  call void %12(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %colorspace.addr, align 4, !tbaa !26
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 13
  store i32 %15, i32* %jpeg_color_space, align 4, !tbaa !41
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_JFIF_header = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 31
  store i32 0, i32* %write_JFIF_header, align 4, !tbaa !42
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_Adobe_marker = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 35
  store i32 0, i32* %write_Adobe_marker, align 4, !tbaa !43
  %19 = load i32, i32* %colorspace.addr, align 4, !tbaa !26
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.33
    i32 4, label %sw.bb.60
    i32 5, label %sw.bb.95
    i32 0, label %sw.bb.130
  ]

sw.bb:                                            ; preds = %if.end
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_JFIF_header4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 31
  store i32 1, i32* %write_JFIF_header4, align 4, !tbaa !42
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 12
  store i32 1, i32* %num_components, align 4, !tbaa !44
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 14
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !21
  %arrayidx5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i64 0
  store %struct.jpeg_component_info* %arrayidx5, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 0
  store i32 1, i32* %component_id, align 4, !tbaa !45
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i32 0, i32 2
  store i32 1, i32* %h_samp_factor, align 4, !tbaa !47
  %26 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %26, i32 0, i32 3
  store i32 1, i32* %v_samp_factor, align 4, !tbaa !48
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no, align 4, !tbaa !49
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no, align 4, !tbaa !50
  %29 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %29, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no, align 4, !tbaa !51
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_Adobe_marker7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 35
  store i32 1, i32* %write_Adobe_marker7, align 4, !tbaa !43
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 12
  store i32 3, i32* %num_components8, align 4, !tbaa !44
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 14
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info9, align 8, !tbaa !21
  %arrayidx10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i64 0
  store %struct.jpeg_component_info* %arrayidx10, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id11 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 0
  store i32 82, i32* %component_id11, align 4, !tbaa !45
  %35 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor12 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %35, i32 0, i32 2
  store i32 1, i32* %h_samp_factor12, align 4, !tbaa !47
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor13 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %36, i32 0, i32 3
  store i32 1, i32* %v_samp_factor13, align 4, !tbaa !48
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no14, align 4, !tbaa !49
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no15 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no15, align 4, !tbaa !50
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no16, align 4, !tbaa !51
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 14
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info17, align 8, !tbaa !21
  %arrayidx18 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i64 1
  store %struct.jpeg_component_info* %arrayidx18, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 0
  store i32 71, i32* %component_id19, align 4, !tbaa !45
  %43 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %43, i32 0, i32 2
  store i32 1, i32* %h_samp_factor20, align 4, !tbaa !47
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor21 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i32 0, i32 3
  store i32 1, i32* %v_samp_factor21, align 4, !tbaa !48
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no22, align 4, !tbaa !49
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no23, align 4, !tbaa !50
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no24, align 4, !tbaa !51
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 14
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info25, align 8, !tbaa !21
  %arrayidx26 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i64 2
  store %struct.jpeg_component_info* %arrayidx26, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id27 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 0
  store i32 66, i32* %component_id27, align 4, !tbaa !45
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 2
  store i32 1, i32* %h_samp_factor28, align 4, !tbaa !47
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 3
  store i32 1, i32* %v_samp_factor29, align 4, !tbaa !48
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no30 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no30, align 4, !tbaa !49
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no31, align 4, !tbaa !50
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no32, align 4, !tbaa !51
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_JFIF_header34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 31
  store i32 1, i32* %write_JFIF_header34, align 4, !tbaa !42
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 12
  store i32 3, i32* %num_components35, align 4, !tbaa !44
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 14
  %59 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info36, align 8, !tbaa !21
  %arrayidx37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %59, i64 0
  store %struct.jpeg_component_info* %arrayidx37, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i32 0, i32 0
  store i32 1, i32* %component_id38, align 4, !tbaa !45
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 2
  store i32 2, i32* %h_samp_factor39, align 4, !tbaa !47
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i32 0, i32 3
  store i32 2, i32* %v_samp_factor40, align 4, !tbaa !48
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no41, align 4, !tbaa !49
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no42, align 4, !tbaa !50
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no43, align 4, !tbaa !51
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 14
  %67 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info44, align 8, !tbaa !21
  %arrayidx45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %67, i64 1
  store %struct.jpeg_component_info* %arrayidx45, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %68 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %68, i32 0, i32 0
  store i32 2, i32* %component_id46, align 4, !tbaa !45
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 2
  store i32 1, i32* %h_samp_factor47, align 4, !tbaa !47
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 0, i32 3
  store i32 1, i32* %v_samp_factor48, align 4, !tbaa !48
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no49, align 4, !tbaa !49
  %72 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %72, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no50, align 4, !tbaa !50
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no51, align 4, !tbaa !51
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 14
  %75 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info52, align 8, !tbaa !21
  %arrayidx53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %75, i64 2
  store %struct.jpeg_component_info* %arrayidx53, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %76 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %76, i32 0, i32 0
  store i32 3, i32* %component_id54, align 4, !tbaa !45
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 2
  store i32 1, i32* %h_samp_factor55, align 4, !tbaa !47
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 3
  store i32 1, i32* %v_samp_factor56, align 4, !tbaa !48
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no57, align 4, !tbaa !49
  %80 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %80, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no58, align 4, !tbaa !50
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no59 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no59, align 4, !tbaa !51
  br label %sw.epilog

sw.bb.60:                                         ; preds = %if.end
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_Adobe_marker61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 35
  store i32 1, i32* %write_Adobe_marker61, align 4, !tbaa !43
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 12
  store i32 4, i32* %num_components62, align 4, !tbaa !44
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 14
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info63, align 8, !tbaa !21
  %arrayidx64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i64 0
  store %struct.jpeg_component_info* %arrayidx64, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id65 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i32 0, i32 0
  store i32 67, i32* %component_id65, align 4, !tbaa !45
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 2
  store i32 1, i32* %h_samp_factor66, align 4, !tbaa !47
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 3
  store i32 1, i32* %v_samp_factor67, align 4, !tbaa !48
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no68 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no68, align 4, !tbaa !49
  %90 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no69 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %90, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no69, align 4, !tbaa !50
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no70 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no70, align 4, !tbaa !51
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 14
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info71, align 8, !tbaa !21
  %arrayidx72 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i64 1
  store %struct.jpeg_component_info* %arrayidx72, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id73 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 0
  store i32 77, i32* %component_id73, align 4, !tbaa !45
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor74 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 2
  store i32 1, i32* %h_samp_factor74, align 4, !tbaa !47
  %96 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %96, i32 0, i32 3
  store i32 1, i32* %v_samp_factor75, align 4, !tbaa !48
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no76 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %97, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no76, align 4, !tbaa !49
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no77 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no77, align 4, !tbaa !50
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no78 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no78, align 4, !tbaa !51
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 14
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info79, align 8, !tbaa !21
  %arrayidx80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i64 2
  store %struct.jpeg_component_info* %arrayidx80, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %102 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id81 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %102, i32 0, i32 0
  store i32 89, i32* %component_id81, align 4, !tbaa !45
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor82 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 2
  store i32 1, i32* %h_samp_factor82, align 4, !tbaa !47
  %104 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor83 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %104, i32 0, i32 3
  store i32 1, i32* %v_samp_factor83, align 4, !tbaa !48
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no84 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no84, align 4, !tbaa !49
  %106 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no85 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %106, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no85, align 4, !tbaa !50
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no86 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no86, align 4, !tbaa !51
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %108, i32 0, i32 14
  %109 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info87, align 8, !tbaa !21
  %arrayidx88 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %109, i64 3
  store %struct.jpeg_component_info* %arrayidx88, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %110 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %110, i32 0, i32 0
  store i32 75, i32* %component_id89, align 4, !tbaa !45
  %111 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor90 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %111, i32 0, i32 2
  store i32 1, i32* %h_samp_factor90, align 4, !tbaa !47
  %112 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor91 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %112, i32 0, i32 3
  store i32 1, i32* %v_samp_factor91, align 4, !tbaa !48
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no92 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %113, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no92, align 4, !tbaa !49
  %114 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no93 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %114, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no93, align 4, !tbaa !50
  %115 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %115, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no94, align 4, !tbaa !51
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %write_Adobe_marker96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 35
  store i32 1, i32* %write_Adobe_marker96, align 4, !tbaa !43
  %117 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %117, i32 0, i32 12
  store i32 4, i32* %num_components97, align 4, !tbaa !44
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 14
  %119 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info98, align 8, !tbaa !21
  %arrayidx99 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %119, i64 0
  store %struct.jpeg_component_info* %arrayidx99, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %120 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id100 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %120, i32 0, i32 0
  store i32 1, i32* %component_id100, align 4, !tbaa !45
  %121 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor101 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %121, i32 0, i32 2
  store i32 2, i32* %h_samp_factor101, align 4, !tbaa !47
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor102 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 0, i32 3
  store i32 2, i32* %v_samp_factor102, align 4, !tbaa !48
  %123 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no103 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %123, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no103, align 4, !tbaa !49
  %124 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %124, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no104, align 4, !tbaa !50
  %125 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no105 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %125, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no105, align 4, !tbaa !51
  %126 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info106 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %126, i32 0, i32 14
  %127 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info106, align 8, !tbaa !21
  %arrayidx107 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 1
  store %struct.jpeg_component_info* %arrayidx107, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %128 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id108 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %128, i32 0, i32 0
  store i32 2, i32* %component_id108, align 4, !tbaa !45
  %129 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor109 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %129, i32 0, i32 2
  store i32 1, i32* %h_samp_factor109, align 4, !tbaa !47
  %130 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %130, i32 0, i32 3
  store i32 1, i32* %v_samp_factor110, align 4, !tbaa !48
  %131 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %131, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no111, align 4, !tbaa !49
  %132 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no112 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %132, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no112, align 4, !tbaa !50
  %133 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no113 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %133, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no113, align 4, !tbaa !51
  %134 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info114 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %134, i32 0, i32 14
  %135 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info114, align 8, !tbaa !21
  %arrayidx115 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 2
  store %struct.jpeg_component_info* %arrayidx115, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %136 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id116 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %136, i32 0, i32 0
  store i32 3, i32* %component_id116, align 4, !tbaa !45
  %137 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor117 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %137, i32 0, i32 2
  store i32 1, i32* %h_samp_factor117, align 4, !tbaa !47
  %138 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor118 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %138, i32 0, i32 3
  store i32 1, i32* %v_samp_factor118, align 4, !tbaa !48
  %139 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no119 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %139, i32 0, i32 4
  store i32 1, i32* %quant_tbl_no119, align 4, !tbaa !49
  %140 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no120 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %140, i32 0, i32 5
  store i32 1, i32* %dc_tbl_no120, align 4, !tbaa !50
  %141 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no121 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %141, i32 0, i32 6
  store i32 1, i32* %ac_tbl_no121, align 4, !tbaa !51
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %142, i32 0, i32 14
  %143 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info122, align 8, !tbaa !21
  %arrayidx123 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 3
  store %struct.jpeg_component_info* %arrayidx123, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %144 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id124 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %144, i32 0, i32 0
  store i32 4, i32* %component_id124, align 4, !tbaa !45
  %145 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor125 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %145, i32 0, i32 2
  store i32 2, i32* %h_samp_factor125, align 4, !tbaa !47
  %146 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor126 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %146, i32 0, i32 3
  store i32 2, i32* %v_samp_factor126, align 4, !tbaa !48
  %147 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no127 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %147, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no127, align 4, !tbaa !49
  %148 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no128 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %148, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no128, align 4, !tbaa !50
  %149 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no129 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %149, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no129, align 4, !tbaa !51
  br label %sw.epilog

sw.bb.130:                                        ; preds = %if.end
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %input_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 8
  %151 = load i32, i32* %input_components, align 4, !tbaa !52
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %152, i32 0, i32 12
  store i32 %151, i32* %num_components131, align 4, !tbaa !44
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %153, i32 0, i32 12
  %154 = load i32, i32* %num_components132, align 4, !tbaa !44
  %cmp133 = icmp slt i32 %154, 1
  br i1 %cmp133, label %if.then.136, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.130
  %155 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components134 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %155, i32 0, i32 12
  %156 = load i32, i32* %num_components134, align 4, !tbaa !44
  %cmp135 = icmp sgt i32 %156, 10
  br i1 %cmp135, label %if.then.136, label %if.end.150

if.then.136:                                      ; preds = %lor.lhs.false, %sw.bb.130
  %157 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err137 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %157, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err137, align 8, !tbaa !12
  %msg_code138 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 5
  store i32 24, i32* %msg_code138, align 4, !tbaa !13
  %159 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components139 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %159, i32 0, i32 12
  %160 = load i32, i32* %num_components139, align 4, !tbaa !44
  %161 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err140 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %161, i32 0, i32 0
  %162 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err140, align 8, !tbaa !12
  %msg_parm141 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %162, i32 0, i32 6
  %i142 = bitcast %union.anon* %msg_parm141 to [8 x i32]*
  %arrayidx143 = getelementptr inbounds [8 x i32], [8 x i32]* %i142, i32 0, i64 0
  store i32 %160, i32* %arrayidx143, align 4, !tbaa !6
  %163 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err144 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %163, i32 0, i32 0
  %164 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err144, align 8, !tbaa !12
  %msg_parm145 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %164, i32 0, i32 6
  %i146 = bitcast %union.anon* %msg_parm145 to [8 x i32]*
  %arrayidx147 = getelementptr inbounds [8 x i32], [8 x i32]* %i146, i32 0, i64 1
  store i32 10, i32* %arrayidx147, align 4, !tbaa !6
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err148 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %165, i32 0, i32 0
  %166 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err148, align 8, !tbaa !12
  %error_exit149 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %166, i32 0, i32 0
  %167 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit149, align 8, !tbaa !16
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %169 = bitcast %struct.jpeg_compress_struct* %168 to %struct.jpeg_common_struct*
  call void %167(%struct.jpeg_common_struct* %169)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.136, %lor.lhs.false
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.150
  %170 = load i32, i32* %ci, align 4, !tbaa !6
  %171 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components151 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %171, i32 0, i32 12
  %172 = load i32, i32* %num_components151, align 4, !tbaa !44
  %cmp152 = icmp slt i32 %170, %172
  br i1 %cmp152, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %173 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %173 to i64
  %174 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info153 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %174, i32 0, i32 14
  %175 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info153, align 8, !tbaa !21
  %arrayidx154 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %175, i64 %idxprom
  store %struct.jpeg_component_info* %arrayidx154, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %176 = load i32, i32* %ci, align 4, !tbaa !6
  %177 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %component_id155 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %177, i32 0, i32 0
  store i32 %176, i32* %component_id155, align 4, !tbaa !45
  %178 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %h_samp_factor156 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %178, i32 0, i32 2
  store i32 1, i32* %h_samp_factor156, align 4, !tbaa !47
  %179 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %v_samp_factor157 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %179, i32 0, i32 3
  store i32 1, i32* %v_samp_factor157, align 4, !tbaa !48
  %180 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %quant_tbl_no158 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %180, i32 0, i32 4
  store i32 0, i32* %quant_tbl_no158, align 4, !tbaa !49
  %181 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %dc_tbl_no159 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %181, i32 0, i32 5
  store i32 0, i32* %dc_tbl_no159, align 4, !tbaa !50
  %182 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %compptr, align 8, !tbaa !2
  %ac_tbl_no160 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %182, i32 0, i32 6
  store i32 0, i32* %ac_tbl_no160, align 4, !tbaa !51
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %183 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %183, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %184 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err161 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %184, i32 0, i32 0
  %185 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err161, align 8, !tbaa !12
  %msg_code162 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %185, i32 0, i32 5
  store i32 8, i32* %msg_code162, align 4, !tbaa !13
  %186 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err163 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %186, i32 0, i32 0
  %187 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err163, align 8, !tbaa !12
  %error_exit164 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %187, i32 0, i32 0
  %188 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit164, align 8, !tbaa !16
  %189 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %190 = bitcast %struct.jpeg_compress_struct* %189 to %struct.jpeg_common_struct*
  call void %188(%struct.jpeg_common_struct* %190)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end, %sw.bb.95, %sw.bb.60, %sw.bb.33, %sw.bb.6, %sw.bb
  %191 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #5
  %192 = bitcast %struct.jpeg_component_info** %compptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_simple_progression(%struct.jpeg_compress_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %ncomps = alloca i32, align 4
  %nscans = alloca i32, align 4
  %scanptr = alloca %struct.jpeg_scan_info*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_components = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i32 0, i32 12
  %2 = load i32, i32* %num_components, align 4, !tbaa !44
  store i32 %2, i32* %ncomps, align 4, !tbaa !6
  %3 = bitcast i32* %nscans to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 4
  %6 = load i32, i32* %global_state, align 4, !tbaa !8
  %cmp = icmp ne i32 %6, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !12
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 5
  store i32 18, i32* %msg_code, align 4, !tbaa !13
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state1 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 4
  %10 = load i32, i32* %global_state1, align 4, !tbaa !8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !12
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %10, i32* %arrayidx, align 4, !tbaa !6
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !12
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 0
  %15 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !16
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %17 = bitcast %struct.jpeg_compress_struct* %16 to %struct.jpeg_common_struct*
  call void %15(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp4 = icmp eq i32 %18, 3
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 13
  %20 = load i32, i32* %jpeg_color_space, align 4, !tbaa !41
  %cmp5 = icmp eq i32 %20, 3
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  store i32 10, i32* %nscans, align 4, !tbaa !6
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %if.end
  %21 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp7 = icmp sgt i32 %21, 4
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  %22 = load i32, i32* %ncomps, align 4, !tbaa !6
  %mul = mul nsw i32 6, %22
  store i32 %mul, i32* %nscans, align 4, !tbaa !6
  br label %if.end.11

if.else.9:                                        ; preds = %if.else
  %23 = load i32, i32* %ncomps, align 4, !tbaa !6
  %mul10 = mul nsw i32 4, %23
  %add = add nsw i32 2, %mul10
  store i32 %add, i32* %nscans, align 4, !tbaa !6
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.6
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !22
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i32 0, i32 0
  %26 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !23
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %28 = bitcast %struct.jpeg_compress_struct* %27 to %struct.jpeg_common_struct*
  %29 = load i32, i32* %nscans, align 4, !tbaa !6
  %conv = sext i32 %29 to i64
  %mul13 = mul i64 %conv, 36
  %call = call i8* %26(%struct.jpeg_common_struct* %28, i32 0, i64 %mul13)
  %30 = bitcast i8* %call to %struct.jpeg_scan_info*
  store %struct.jpeg_scan_info* %30, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %31 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 22
  store %struct.jpeg_scan_info* %31, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !27
  %33 = load i32, i32* %nscans, align 4, !tbaa !6
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 21
  store i32 %33, i32* %num_scans, align 4, !tbaa !28
  %35 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp14 = icmp eq i32 %35, 3
  br i1 %cmp14, label %land.lhs.true.16, label %if.else.31

land.lhs.true.16:                                 ; preds = %if.end.12
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %jpeg_color_space17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 13
  %37 = load i32, i32* %jpeg_color_space17, align 4, !tbaa !41
  %cmp18 = icmp eq i32 %37, 3
  br i1 %cmp18, label %if.then.20, label %if.else.31

if.then.20:                                       ; preds = %land.lhs.true.16
  %38 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %39 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call21 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* %38, i32 %39, i32 0, i32 1)
  store %struct.jpeg_scan_info* %call21, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %40 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call22 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %40, i32 0, i32 1, i32 5, i32 0, i32 2)
  store %struct.jpeg_scan_info* %call22, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %41 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call23 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %41, i32 2, i32 1, i32 63, i32 0, i32 1)
  store %struct.jpeg_scan_info* %call23, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %42 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call24 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %42, i32 1, i32 1, i32 63, i32 0, i32 1)
  store %struct.jpeg_scan_info* %call24, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %43 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call25 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %43, i32 0, i32 6, i32 63, i32 0, i32 2)
  store %struct.jpeg_scan_info* %call25, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %44 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call26 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %44, i32 0, i32 1, i32 63, i32 2, i32 1)
  store %struct.jpeg_scan_info* %call26, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %45 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %46 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call27 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* %45, i32 %46, i32 1, i32 0)
  store %struct.jpeg_scan_info* %call27, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %47 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call28 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %47, i32 2, i32 1, i32 63, i32 1, i32 0)
  store %struct.jpeg_scan_info* %call28, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %48 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call29 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %48, i32 1, i32 1, i32 63, i32 1, i32 0)
  store %struct.jpeg_scan_info* %call29, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %49 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %call30 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %49, i32 0, i32 1, i32 63, i32 1, i32 0)
  store %struct.jpeg_scan_info* %call30, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  br label %if.end.38

if.else.31:                                       ; preds = %land.lhs.true.16, %if.end.12
  %50 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %51 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call32 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* %50, i32 %51, i32 0, i32 1)
  store %struct.jpeg_scan_info* %call32, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %52 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %53 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call33 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* %52, i32 %53, i32 1, i32 5, i32 0, i32 2)
  store %struct.jpeg_scan_info* %call33, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %54 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %55 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call34 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* %54, i32 %55, i32 6, i32 63, i32 0, i32 2)
  store %struct.jpeg_scan_info* %call34, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %56 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %57 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call35 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* %56, i32 %57, i32 1, i32 63, i32 2, i32 1)
  store %struct.jpeg_scan_info* %call35, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %58 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %59 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call36 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* %58, i32 %59, i32 1, i32 0)
  store %struct.jpeg_scan_info* %call36, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %60 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %61 = load i32, i32* %ncomps, align 4, !tbaa !6
  %call37 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* %60, i32 %61, i32 1, i32 63, i32 1, i32 0)
  store %struct.jpeg_scan_info* %call37, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.31, %if.then.20
  %62 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #5
  %63 = bitcast i32* %nscans to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #5
  %64 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* %scanptr, i32 %ncomps, i32 %Ah, i32 %Al) #0 {
entry:
  %scanptr.addr = alloca %struct.jpeg_scan_info*, align 8
  %ncomps.addr = alloca i32, align 4
  %Ah.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.jpeg_scan_info* %scanptr, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  store i32 %ncomps, i32* %ncomps.addr, align 4, !tbaa !6
  store i32 %Ah, i32* %Ah.addr, align 4, !tbaa !6
  store i32 %Al, i32* %Al.addr, align 4, !tbaa !6
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = load i32, i32* %ncomps.addr, align 4, !tbaa !6
  %cmp = icmp sle i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ncomps.addr, align 4, !tbaa !6
  %3 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %3, i32 0, i32 0
  store i32 %2, i32* %comps_in_scan, align 4, !tbaa !53
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %ci, align 4, !tbaa !6
  %5 = load i32, i32* %ncomps.addr, align 4, !tbaa !6
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %ci, align 4, !tbaa !6
  %7 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 %idxprom
  store i32 %6, i32* %arrayidx, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Se = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %10, i32 0, i32 3
  store i32 0, i32* %Se, align 4, !tbaa !55
  %11 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %11, i32 0, i32 2
  store i32 0, i32* %Ss, align 4, !tbaa !56
  %12 = load i32, i32* %Ah.addr, align 4, !tbaa !6
  %13 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Ah2 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %13, i32 0, i32 4
  store i32 %12, i32* %Ah2, align 4, !tbaa !57
  %14 = load i32, i32* %Al.addr, align 4, !tbaa !6
  %15 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Al3 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %15, i32 0, i32 5
  store i32 %14, i32* %Al3, align 4, !tbaa !58
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %16, i32 1
  store %struct.jpeg_scan_info* %incdec.ptr, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  %17 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %18 = load i32, i32* %ncomps.addr, align 4, !tbaa !6
  %19 = load i32, i32* %Ah.addr, align 4, !tbaa !6
  %20 = load i32, i32* %Al.addr, align 4, !tbaa !6
  %call = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* %17, i32 %18, i32 0, i32 0, i32 %19, i32 %20)
  store %struct.jpeg_scan_info* %call, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %21 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %22 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #5
  ret %struct.jpeg_scan_info* %21
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* %scanptr, i32 %ci, i32 %Ss, i32 %Se, i32 %Ah, i32 %Al) #0 {
entry:
  %scanptr.addr = alloca %struct.jpeg_scan_info*, align 8
  %ci.addr = alloca i32, align 4
  %Ss.addr = alloca i32, align 4
  %Se.addr = alloca i32, align 4
  %Ah.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  store %struct.jpeg_scan_info* %scanptr, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  store i32 %ci, i32* %ci.addr, align 4, !tbaa !6
  store i32 %Ss, i32* %Ss.addr, align 4, !tbaa !6
  store i32 %Se, i32* %Se.addr, align 4, !tbaa !6
  store i32 %Ah, i32* %Ah.addr, align 4, !tbaa !6
  store i32 %Al, i32* %Al.addr, align 4, !tbaa !6
  %0 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i32 0, i32 0
  store i32 1, i32* %comps_in_scan, align 4, !tbaa !53
  %1 = load i32, i32* %ci.addr, align 4, !tbaa !6
  %2 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 0
  store i32 %1, i32* %arrayidx, align 4, !tbaa !6
  %3 = load i32, i32* %Ss.addr, align 4, !tbaa !6
  %4 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Ss1 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %4, i32 0, i32 2
  store i32 %3, i32* %Ss1, align 4, !tbaa !56
  %5 = load i32, i32* %Se.addr, align 4, !tbaa !6
  %6 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Se2 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %6, i32 0, i32 3
  store i32 %5, i32* %Se2, align 4, !tbaa !55
  %7 = load i32, i32* %Ah.addr, align 4, !tbaa !6
  %8 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Ah3 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %8, i32 0, i32 4
  store i32 %7, i32* %Ah3, align 4, !tbaa !57
  %9 = load i32, i32* %Al.addr, align 4, !tbaa !6
  %10 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Al4 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %10, i32 0, i32 5
  store i32 %9, i32* %Al4, align 4, !tbaa !58
  %11 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %11, i32 1
  store %struct.jpeg_scan_info* %incdec.ptr, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %12 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  ret %struct.jpeg_scan_info* %12
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* %scanptr, i32 %ncomps, i32 %Ss, i32 %Se, i32 %Ah, i32 %Al) #0 {
entry:
  %scanptr.addr = alloca %struct.jpeg_scan_info*, align 8
  %ncomps.addr = alloca i32, align 4
  %Ss.addr = alloca i32, align 4
  %Se.addr = alloca i32, align 4
  %Ah.addr = alloca i32, align 4
  %Al.addr = alloca i32, align 4
  %ci = alloca i32, align 4
  store %struct.jpeg_scan_info* %scanptr, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  store i32 %ncomps, i32* %ncomps.addr, align 4, !tbaa !6
  store i32 %Ss, i32* %Ss.addr, align 4, !tbaa !6
  store i32 %Se, i32* %Se.addr, align 4, !tbaa !6
  store i32 %Ah, i32* %Ah.addr, align 4, !tbaa !6
  store i32 %Al, i32* %Al.addr, align 4, !tbaa !6
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %ci, align 4, !tbaa !6
  %2 = load i32, i32* %ncomps.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %3, i32 0, i32 0
  store i32 1, i32* %comps_in_scan, align 4, !tbaa !53
  %4 = load i32, i32* %ci, align 4, !tbaa !6
  %5 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !6
  %6 = load i32, i32* %Ss.addr, align 4, !tbaa !6
  %7 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Ss1 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %7, i32 0, i32 2
  store i32 %6, i32* %Ss1, align 4, !tbaa !56
  %8 = load i32, i32* %Se.addr, align 4, !tbaa !6
  %9 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Se2 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %9, i32 0, i32 3
  store i32 %8, i32* %Se2, align 4, !tbaa !55
  %10 = load i32, i32* %Ah.addr, align 4, !tbaa !6
  %11 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Ah3 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %11, i32 0, i32 4
  store i32 %10, i32* %Ah3, align 4, !tbaa !57
  %12 = load i32, i32* %Al.addr, align 4, !tbaa !6
  %13 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %Al4 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %13, i32 0, i32 5
  store i32 %12, i32* %Al4, align 4, !tbaa !58
  %14 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %14, i32 1
  store %struct.jpeg_scan_info* %incdec.ptr, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr.addr, align 8, !tbaa !2
  %17 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #5
  ret %struct.jpeg_scan_info* %16
}

; Function Attrs: nounwind ssp uwtable
define internal void @add_huff_table(%struct.jpeg_compress_struct* %cinfo, %struct.JHUFF_TBL** %htblptr, i8* %bits, i8* %val) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %htblptr.addr = alloca %struct.JHUFF_TBL**, align 8
  %bits.addr = alloca i8*, align 8
  %val.addr = alloca i8*, align 8
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.JHUFF_TBL** %htblptr, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  store i8* %bits, i8** %bits.addr, align 8, !tbaa !2
  store i8* %val, i8** %val.addr, align 8, !tbaa !2
  %0 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  %1 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %0, align 8, !tbaa !2
  %cmp = icmp eq %struct.JHUFF_TBL* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %3 = bitcast %struct.jpeg_compress_struct* %2 to %struct.jpeg_common_struct*
  %call = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %3)
  %4 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  store %struct.JHUFF_TBL* %call, %struct.JHUFF_TBL** %4, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  %6 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %5, align 8, !tbaa !2
  %bits1 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %6, i32 0, i32 0
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %bits1, i32 0, i32 0
  %7 = load i8*, i8** %bits.addr, align 8, !tbaa !2
  %8 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  %9 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %8, align 8, !tbaa !2
  %bits2 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %9, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [17 x i8], [17 x i8]* %bits2, i32 0, i32 0
  %10 = call i64 @llvm.objectsize.i64.p0i8(i8* %arraydecay3, i1 false)
  %call4 = call i8* @__memcpy_chk(i8* %arraydecay, i8* %7, i64 17, i64 %10) #5
  %11 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  %12 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %11, align 8, !tbaa !2
  %huffval = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %12, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval, i32 0, i32 0
  %13 = load i8*, i8** %val.addr, align 8, !tbaa !2
  %14 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  %15 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %14, align 8, !tbaa !2
  %huffval6 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %15, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %huffval6, i32 0, i32 0
  %16 = call i64 @llvm.objectsize.i64.p0i8(i8* %arraydecay7, i1 false)
  %call8 = call i8* @__memcpy_chk(i8* %arraydecay5, i8* %13, i64 256, i64 %16) #5
  %17 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %htblptr.addr, align 8, !tbaa !2
  %18 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %17, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %18, i32 0, i32 2
  store i32 0, i32* %sent_table, align 4, !tbaa !59
  ret void
}

declare %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

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
!8 = !{!9, !7, i64 28}
!9 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !10, i64 56, !7, i64 64, !7, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !7, i64 232, !3, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !4, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !4, i64 284, !11, i64 286, !11, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !4, i64 320, !7, i64 352, !7, i64 356, !7, i64 360, !4, i64 364, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!10 = !{!"double", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!9, !3, i64 0}
!13 = !{!14, !7, i64 40}
!14 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !7, i64 40, !4, i64 44, !7, i64 124, !15, i64 128, !3, i64 136, !7, i64 144, !3, i64 152, !7, i64 160, !7, i64 164}
!15 = !{!"long", !4, i64 0}
!16 = !{!14, !3, i64 0}
!17 = !{!15, !15, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !7, i64 128}
!20 = !{!"", !4, i64 0, !7, i64 128}
!21 = !{!9, !3, i64 80}
!22 = !{!9, !3, i64 8}
!23 = !{!24, !3, i64 0}
!24 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !15, i64 88}
!25 = !{!9, !7, i64 64}
!26 = !{!4, !4, i64 0}
!27 = !{!9, !3, i64 240}
!28 = !{!9, !7, i64 232}
!29 = !{!9, !7, i64 248}
!30 = !{!9, !7, i64 252}
!31 = !{!9, !7, i64 256}
!32 = !{!9, !7, i64 260}
!33 = !{!9, !7, i64 264}
!34 = !{!9, !4, i64 268}
!35 = !{!9, !7, i64 272}
!36 = !{!9, !7, i64 276}
!37 = !{!9, !4, i64 284}
!38 = !{!9, !11, i64 286}
!39 = !{!9, !11, i64 288}
!40 = !{!9, !4, i64 52}
!41 = !{!9, !4, i64 72}
!42 = !{!9, !7, i64 280}
!43 = !{!9, !7, i64 292}
!44 = !{!9, !7, i64 68}
!45 = !{!46, !7, i64 0}
!46 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!47 = !{!46, !7, i64 8}
!48 = !{!46, !7, i64 12}
!49 = !{!46, !7, i64 16}
!50 = !{!46, !7, i64 20}
!51 = !{!46, !7, i64 24}
!52 = !{!9, !7, i64 48}
!53 = !{!54, !7, i64 0}
!54 = !{!"", !7, i64 0, !4, i64 4, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!55 = !{!54, !7, i64 24}
!56 = !{!54, !7, i64 20}
!57 = !{!54, !7, i64 28}
!58 = !{!54, !7, i64 32}
!59 = !{!60, !7, i64 276}
!60 = !{!"", !4, i64 0, !4, i64 17, !7, i64 276}
