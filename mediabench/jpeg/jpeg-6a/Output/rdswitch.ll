; ModuleID = 'rdswitch.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
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
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @read_quant_tables(%struct.jpeg_compress_struct* %cinfo, i8* %filename, i32 %scale_factor, i32 %force_baseline) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %filename.addr = alloca i8*, align 8
  %scale_factor.addr = alloca i32, align 4
  %force_baseline.addr = alloca i32, align 4
  %fp = alloca %struct.__sFILE*, align 8
  %tblno = alloca i32, align 4
  %i = alloca i32, align 4
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %table = alloca [64 x i32], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !2
  store i32 %scale_factor, i32* %scale_factor.addr, align 4, !tbaa !6
  store i32 %force_baseline, i32* %force_baseline.addr, align 4, !tbaa !6
  %0 = bitcast %struct.__sFILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast i32* %tblno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  %3 = bitcast i32* %termchar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %4 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  %5 = bitcast [64 x i32]* %table to i8*
  call void @llvm.lifetime.start(i64 256, i8* %5) #6
  %6 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct.__sFILE* %call, %struct.__sFILE** %fp, align 8, !tbaa !2
  %cmp = icmp eq %struct.__sFILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %8 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* %8)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %tblno, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %9 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call2 = call i32 @read_text_integer(%struct.__sFILE* %9, i64* %val, i32* %termchar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %tblno, align 4, !tbaa !6
  %cmp3 = icmp sge i32 %10, 4
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %while.body
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %12 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* %12)
  %13 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call6 = call i32 @fclose(%struct.__sFILE* %13)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %while.body
  %14 = load i64, i64* %val, align 8, !tbaa !8
  %conv = trunc i64 %14 to i32
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %table, i32 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !6
  store i32 1, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %15 = load i32, i32* %i, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %15, 64
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call10 = call i32 @read_text_integer(%struct.__sFILE* %16, i64* %val, i32* %termchar)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %for.body
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %18 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* %18)
  %19 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call14 = call i32 @fclose(%struct.__sFILE* %19)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %for.body
  %20 = load i64, i64* %val, align 8, !tbaa !8
  %conv16 = trunc i64 %20 to i32
  %21 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* %table, i32 0, i64 %idxprom
  store i32 %conv16, i32* %arrayidx17, align 4, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %22 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = load i32, i32* %tblno, align 4, !tbaa !6
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %table, i32 0, i32 0
  %25 = load i32, i32* %scale_factor.addr, align 4, !tbaa !6
  %26 = load i32, i32* %force_baseline.addr, align 4, !tbaa !6
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* %23, i32 %24, i32* %arraydecay, i32 %25, i32 %26)
  %27 = load i32, i32* %tblno, align 4, !tbaa !6
  %inc18 = add nsw i32 %27, 1
  store i32 %inc18, i32* %tblno, align 4, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %28 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp19 = icmp ne i32 %28, -1
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %while.end
  %29 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %30 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %30)
  %31 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call23 = call i32 @fclose(%struct.__sFILE* %31)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %while.end
  %32 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call25 = call i32 @fclose(%struct.__sFILE* %32)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.21, %if.then.12, %if.then.4, %if.then
  %33 = bitcast [64 x i32]* %table to i8*
  call void @llvm.lifetime.end(i64 256, i8* %33) #6
  %34 = bitcast i64* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #6
  %35 = bitcast i32* %termchar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #6
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #6
  %37 = bitcast i32* %tblno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #6
  %38 = bitcast %struct.__sFILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #6
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_text_integer(%struct.__sFILE* %file, i64* %result, i32* %termchar) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.__sFILE*, align 8
  %result.addr = alloca i64*, align 8
  %termchar.addr = alloca i32*, align 8
  %ch = alloca i32, align 4
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.__sFILE* %file, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  store i64* %result, i64** %result.addr, align 8, !tbaa !2
  store i32* %termchar, i32** %termchar.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #6
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %call = call i32 @text_getc(%struct.__sFILE* %2)
  store i32 %call, i32* %ch, align 4, !tbaa !6
  %3 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i32, i32* %ch, align 4, !tbaa !6
  %5 = load i32*, i32** %termchar.addr, align 8, !tbaa !2
  store i32 %4, i32* %5, align 4, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %6 = load i32, i32* %ch, align 4, !tbaa !6
  %call1 = call i32 @isspace(i32 %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i32, i32* %ch, align 4, !tbaa !6
  %call2 = call i32 @isdigit(i32 %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %do.end
  %8 = load i32, i32* %ch, align 4, !tbaa !6
  %9 = load i32*, i32** %termchar.addr, align 8, !tbaa !2
  store i32 %8, i32* %9, align 4, !tbaa !6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %do.end
  %10 = load i32, i32* %ch, align 4, !tbaa !6
  %sub = sub nsw i32 %10, 48
  %conv = sext i32 %sub to i64
  store i64 %conv, i64* %val, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %if.end.5
  %11 = load %struct.__sFILE*, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %call6 = call i32 @text_getc(%struct.__sFILE* %11)
  store i32 %call6, i32* %ch, align 4, !tbaa !6
  %cmp7 = icmp ne i32 %call6, -1
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %ch, align 4, !tbaa !6
  %call9 = call i32 @isdigit(i32 %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %while.body
  br label %while.end

if.end.12:                                        ; preds = %while.body
  %13 = load i64, i64* %val, align 8, !tbaa !8
  %mul = mul nsw i64 %13, 10
  store i64 %mul, i64* %val, align 8, !tbaa !8
  %14 = load i32, i32* %ch, align 4, !tbaa !6
  %sub13 = sub nsw i32 %14, 48
  %conv14 = sext i32 %sub13 to i64
  %15 = load i64, i64* %val, align 8, !tbaa !8
  %add = add nsw i64 %15, %conv14
  store i64 %add, i64* %val, align 8, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %if.then.11, %while.cond
  %16 = load i64, i64* %val, align 8, !tbaa !8
  %17 = load i64*, i64** %result.addr, align 8, !tbaa !2
  store i64 %16, i64* %17, align 8, !tbaa !8
  %18 = load i32, i32* %ch, align 4, !tbaa !6
  %19 = load i32*, i32** %termchar.addr, align 8, !tbaa !2
  store i32 %18, i32* %19, align 4, !tbaa !6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.4, %if.then
  %20 = bitcast i64* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #6
  %21 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #6
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @fclose(%struct.__sFILE*) #2

declare void @jpeg_add_quant_table(%struct.jpeg_compress_struct*, i32, i32*, i32, i32) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @read_scan_script(%struct.jpeg_compress_struct* %cinfo, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct.__sFILE*, align 8
  %scanno = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %termchar = alloca i32, align 4
  %val = alloca i64, align 8
  %scanptr = alloca %struct.jpeg_scan_info*, align 8
  %scans = alloca [100 x %struct.jpeg_scan_info], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !2
  %0 = bitcast %struct.__sFILE** %fp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast i32* %scanno to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  %3 = bitcast i32* %termchar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %4 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  %5 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #6
  %6 = bitcast [100 x %struct.jpeg_scan_info]* %scans to i8*
  call void @llvm.lifetime.start(i64 3600, i8* %6) #6
  %7 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct.__sFILE* %call, %struct.__sFILE** %fp, align 8, !tbaa !2
  %cmp = icmp eq %struct.__sFILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %9 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8* %9)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [100 x %struct.jpeg_scan_info], [100 x %struct.jpeg_scan_info]* %scans, i32 0, i32 0
  store %struct.jpeg_scan_info* %arraydecay, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  store i32 0, i32* %scanno, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %if.end.68, %if.end
  %10 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call2 = call i32 @read_scan_integer(%struct.__sFILE* %10, i64* %val, i32* %termchar)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end.70

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %scanno, align 4, !tbaa !6
  %cmp3 = icmp sge i32 %11, 100
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %while.body
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %13 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i8* %13)
  %14 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call6 = call i32 @fclose(%struct.__sFILE* %14)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %while.body
  %15 = load i64, i64* %val, align 8, !tbaa !8
  %conv = trunc i64 %15 to i32
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %component_index = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %16, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %component_index, i32 0, i64 0
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !6
  store i32 1, i32* %ncomps, align 4, !tbaa !6
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.21, %if.end.7
  %17 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp9 = icmp eq i32 %17, 32
  br i1 %cmp9, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.8
  %18 = load i32, i32* %ncomps, align 4, !tbaa !6
  %cmp12 = icmp sge i32 %18, 4
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %while.body.11
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %20 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call15 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i32 0, i32 0), i8* %20)
  %21 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call16 = call i32 @fclose(%struct.__sFILE* %21)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %while.body.11
  %22 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call18 = call i32 @read_scan_integer(%struct.__sFILE* %22, i64* %val, i32* %termchar)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  br label %bogus

if.end.21:                                        ; preds = %if.end.17
  %23 = load i64, i64* %val, align 8, !tbaa !8
  %conv22 = trunc i64 %23 to i32
  %24 = load i32, i32* %ncomps, align 4, !tbaa !6
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %component_index23 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %25, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %component_index23, i32 0, i64 %idxprom
  store i32 %conv22, i32* %arrayidx24, align 4, !tbaa !6
  %26 = load i32, i32* %ncomps, align 4, !tbaa !6
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %ncomps, align 4, !tbaa !6
  br label %while.cond.8

while.end:                                        ; preds = %while.cond.8
  %27 = load i32, i32* %ncomps, align 4, !tbaa !6
  %28 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %comps_in_scan = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %28, i32 0, i32 0
  store i32 %27, i32* %comps_in_scan, align 4, !tbaa !10
  %29 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp25 = icmp eq i32 %29, 58
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %while.end
  %30 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call28 = call i32 @read_scan_integer(%struct.__sFILE* %30, i64* %val, i32* %termchar)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false, label %if.then.32

lor.lhs.false:                                    ; preds = %if.then.27
  %31 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp30 = icmp ne i32 %31, 32
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.then.27
  br label %bogus

if.end.33:                                        ; preds = %lor.lhs.false
  %32 = load i64, i64* %val, align 8, !tbaa !8
  %conv34 = trunc i64 %32 to i32
  %33 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ss = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %33, i32 0, i32 2
  store i32 %conv34, i32* %Ss, align 4, !tbaa !12
  %34 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call35 = call i32 @read_scan_integer(%struct.__sFILE* %34, i64* %val, i32* %termchar)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.40

lor.lhs.false.37:                                 ; preds = %if.end.33
  %35 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp38 = icmp ne i32 %35, 32
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.37, %if.end.33
  br label %bogus

if.end.41:                                        ; preds = %lor.lhs.false.37
  %36 = load i64, i64* %val, align 8, !tbaa !8
  %conv42 = trunc i64 %36 to i32
  %37 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Se = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %37, i32 0, i32 3
  store i32 %conv42, i32* %Se, align 4, !tbaa !13
  %38 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call43 = call i32 @read_scan_integer(%struct.__sFILE* %38, i64* %val, i32* %termchar)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %lor.lhs.false.45, label %if.then.48

lor.lhs.false.45:                                 ; preds = %if.end.41
  %39 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp46 = icmp ne i32 %39, 32
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.45, %if.end.41
  br label %bogus

if.end.49:                                        ; preds = %lor.lhs.false.45
  %40 = load i64, i64* %val, align 8, !tbaa !8
  %conv50 = trunc i64 %40 to i32
  %41 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ah = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %41, i32 0, i32 4
  store i32 %conv50, i32* %Ah, align 4, !tbaa !14
  %42 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call51 = call i32 @read_scan_integer(%struct.__sFILE* %42, i64* %val, i32* %termchar)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  br label %bogus

if.end.54:                                        ; preds = %if.end.49
  %43 = load i64, i64* %val, align 8, !tbaa !8
  %conv55 = trunc i64 %43 to i32
  %44 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Al = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %44, i32 0, i32 5
  store i32 %conv55, i32* %Al, align 4, !tbaa !15
  br label %if.end.60

if.else:                                          ; preds = %while.end
  %45 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ss56 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %45, i32 0, i32 2
  store i32 0, i32* %Ss56, align 4, !tbaa !12
  %46 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Se57 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %46, i32 0, i32 3
  store i32 63, i32* %Se57, align 4, !tbaa !13
  %47 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Ah58 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %47, i32 0, i32 4
  store i32 0, i32* %Ah58, align 4, !tbaa !14
  %48 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %Al59 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %48, i32 0, i32 5
  store i32 0, i32* %Al59, align 4, !tbaa !15
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.end.54
  %49 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp61 = icmp ne i32 %49, 59
  br i1 %cmp61, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end.60
  %50 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp63 = icmp ne i32 %50, -1
  br i1 %cmp63, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %land.lhs.true
  br label %bogus

bogus:                                            ; preds = %if.then.65, %if.then.53, %if.then.48, %if.then.40, %if.then.32, %if.then.20
  %51 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %52 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call66 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i8* %52)
  %53 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call67 = call i32 @fclose(%struct.__sFILE* %53)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %land.lhs.true, %if.end.60
  %54 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %54, i32 1
  store %struct.jpeg_scan_info* %incdec.ptr, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %55 = load i32, i32* %scanno, align 4, !tbaa !6
  %inc69 = add nsw i32 %55, 1
  store i32 %inc69, i32* %scanno, align 4, !tbaa !6
  br label %while.cond

while.end.70:                                     ; preds = %while.cond
  %56 = load i32, i32* %termchar, align 4, !tbaa !6
  %cmp71 = icmp ne i32 %56, -1
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %while.end.70
  %57 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %58 = load i8*, i8** %filename.addr, align 8, !tbaa !2
  %call74 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0), i8* %58)
  %59 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call75 = call i32 @fclose(%struct.__sFILE* %59)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %while.end.70
  %60 = load i32, i32* %scanno, align 4, !tbaa !6
  %cmp77 = icmp sgt i32 %60, 0
  br i1 %cmp77, label %if.then.79, label %if.end.86

if.then.79:                                       ; preds = %if.end.76
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 1
  %62 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !16
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %62, i32 0, i32 0
  %63 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !20
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %65 = bitcast %struct.jpeg_compress_struct* %64 to %struct.jpeg_common_struct*
  %66 = load i32, i32* %scanno, align 4, !tbaa !6
  %conv80 = sext i32 %66 to i64
  %mul = mul i64 %conv80, 36
  %call81 = call i8* %63(%struct.jpeg_common_struct* %65, i32 1, i64 %mul)
  %67 = bitcast i8* %call81 to %struct.jpeg_scan_info*
  store %struct.jpeg_scan_info* %67, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %68 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %69 = bitcast %struct.jpeg_scan_info* %68 to i8*
  %arraydecay82 = getelementptr inbounds [100 x %struct.jpeg_scan_info], [100 x %struct.jpeg_scan_info]* %scans, i32 0, i32 0
  %70 = bitcast %struct.jpeg_scan_info* %arraydecay82 to i8*
  %71 = load i32, i32* %scanno, align 4, !tbaa !6
  %conv83 = sext i32 %71 to i64
  %mul84 = mul i64 %conv83, 36
  %72 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %73 = bitcast %struct.jpeg_scan_info* %72 to i8*
  %74 = call i64 @llvm.objectsize.i64.p0i8(i8* %73, i1 false)
  %call85 = call i8* @__memcpy_chk(i8* %69, i8* %70, i64 %mul84, i64 %74) #6
  %75 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %scanptr, align 8, !tbaa !2
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %scan_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 22
  store %struct.jpeg_scan_info* %75, %struct.jpeg_scan_info** %scan_info, align 8, !tbaa !22
  %77 = load i32, i32* %scanno, align 4, !tbaa !6
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %num_scans = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 21
  store i32 %77, i32* %num_scans, align 4, !tbaa !23
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.79, %if.end.76
  %79 = load %struct.__sFILE*, %struct.__sFILE** %fp, align 8, !tbaa !2
  %call87 = call i32 @fclose(%struct.__sFILE* %79)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.86, %if.then.73, %bogus, %if.then.14, %if.then.4, %if.then
  %80 = bitcast [100 x %struct.jpeg_scan_info]* %scans to i8*
  call void @llvm.lifetime.end(i64 3600, i8* %80) #6
  %81 = bitcast %struct.jpeg_scan_info** %scanptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #6
  %82 = bitcast i64* %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #6
  %83 = bitcast i32* %termchar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #6
  %84 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #6
  %85 = bitcast i32* %scanno to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #6
  %86 = bitcast %struct.__sFILE** %fp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #6
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @read_scan_integer(%struct.__sFILE* %file, i64* %result, i32* %termchar) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.__sFILE*, align 8
  %result.addr = alloca i64*, align 8
  %termchar.addr = alloca i32*, align 8
  %ch = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.__sFILE* %file, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  store i64* %result, i64** %result.addr, align 8, !tbaa !2
  store i32* %termchar, i32** %termchar.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = load %struct.__sFILE*, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %2 = load i64*, i64** %result.addr, align 8, !tbaa !2
  %3 = load i32*, i32** %termchar.addr, align 8, !tbaa !2
  %call = call i32 @read_text_integer(%struct.__sFILE* %1, i64* %2, i32* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %termchar.addr, align 8, !tbaa !2
  %5 = load i32, i32* %4, align 4, !tbaa !6
  store i32 %5, i32* %ch, align 4, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %ch, align 4, !tbaa !6
  %call1 = call i32 @isspace(i32 %7)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.__sFILE*, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %call3 = call i32 @text_getc(%struct.__sFILE* %9)
  store i32 %call3, i32* %ch, align 4, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i32, i32* %ch, align 4, !tbaa !6
  %call4 = call i32 @isdigit(i32 %10)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.end
  %11 = load i32, i32* %ch, align 4, !tbaa !6
  %12 = load %struct.__sFILE*, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %call7 = call i32 @ungetc(i32 %11, %struct.__sFILE* %12)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.6
  store i32 32, i32* %ch, align 4, !tbaa !6
  br label %if.end.17

if.else:                                          ; preds = %while.end
  %13 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp11 = icmp ne i32 %13, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.else
  %14 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp12 = icmp ne i32 %14, 59
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.16

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %15 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp14 = icmp ne i32 %15, 58
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.13
  store i32 32, i32* %ch, align 4, !tbaa !6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.13, %land.lhs.true, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %16 = load i32, i32* %ch, align 4, !tbaa !6
  %17 = load i32*, i32** %termchar.addr, align 8, !tbaa !2
  store i32 %16, i32* %17, align 4, !tbaa !6
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.9, %if.then
  %18 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #6
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind ssp uwtable
define i32 @set_quant_slots(%struct.jpeg_compress_struct* %cinfo, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %arg.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  %ci = alloca i32, align 4
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !2
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  store i32 0, i32* %val, align 4, !tbaa !6
  %1 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  call void @llvm.lifetime.start(i64 1, i8* %ch) #6
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %ci, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %4 = load i8, i8* %3, align 1, !tbaa !24
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 44, i8* %ch, align 1, !tbaa !24
  %5 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32* %val, i8* %ch)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = load i8, i8* %ch, align 1, !tbaa !24
  %conv = sext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, 44
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* %val, align 4, !tbaa !6
  %cmp7 = icmp slt i32 %7, 0
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %8 = load i32, i32* %val, align 4, !tbaa !6
  %cmp9 = icmp sge i32 %8, 4
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.6
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %call12 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i32 0, i32 0), i32 3)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %val, align 4, !tbaa !6
  %11 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 14
  %13 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %13, i64 %idxprom
  %quant_tbl_no = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 4
  store i32 %10, i32* %quant_tbl_no, align 4, !tbaa !26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %14 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %15 = load i8, i8* %14, align 1, !tbaa !24
  %conv14 = sext i8 %15 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8, !tbaa !2
  %17 = load i8, i8* %16, align 1, !tbaa !24
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp ne i32 %conv16, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.23

if.else:                                          ; preds = %for.body
  %19 = load i32, i32* %val, align 4, !tbaa !6
  %20 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom19 = sext i32 %20 to i64
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info20, align 8, !tbaa !25
  %arrayidx21 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i64 %idxprom19
  %quant_tbl_no22 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx21, i32 0, i32 4
  store i32 %19, i32* %quant_tbl_no22, align 4, !tbaa !26
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %23 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.11, %if.then.5, %if.then.2
  call void @llvm.lifetime.end(i64 1, i8* %ch) #6
  %24 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #6
  %25 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #6
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define i32 @set_sample_factors(%struct.jpeg_compress_struct* %cinfo, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %arg.addr = alloca i8*, align 8
  %ci = alloca i32, align 4
  %val1 = alloca i32, align 4
  %val2 = alloca i32, align 4
  %ch1 = alloca i8, align 1
  %ch2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = bitcast i32* %val1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = bitcast i32* %val2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #6
  call void @llvm.lifetime.start(i64 1, i8* %ch1) #6
  call void @llvm.lifetime.start(i64 1, i8* %ch2) #6
  store i32 0, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %ci, align 4, !tbaa !6
  %cmp = icmp slt i32 %3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %5 = load i8, i8* %4, align 1, !tbaa !24
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 44, i8* %ch2, align 1, !tbaa !24
  %6 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32* %val1, i8* %ch1, i32* %val2, i8* %ch2)
  %cmp1 = icmp slt i32 %call, 3
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load i8, i8* %ch1, align 1, !tbaa !24
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 120
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8, i8* %ch1, align 1, !tbaa !24
  %conv5 = sext i8 %8 to i32
  %cmp6 = icmp ne i32 %conv5, 88
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %9 = load i8, i8* %ch2, align 1, !tbaa !24
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv8, 44
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false
  %10 = load i32, i32* %val1, align 4, !tbaa !6
  %cmp13 = icmp sle i32 %10, 0
  br i1 %cmp13, label %if.then.24, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.12
  %11 = load i32, i32* %val1, align 4, !tbaa !6
  %cmp16 = icmp sgt i32 %11, 4
  br i1 %cmp16, label %if.then.24, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.15
  %12 = load i32, i32* %val2, align 4, !tbaa !6
  %cmp19 = icmp sle i32 %12, 0
  br i1 %cmp19, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %13 = load i32, i32* %val2, align 4, !tbaa !6
  %cmp22 = icmp sgt i32 %13, 4
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %lor.lhs.false.15, %if.end.12
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %call25 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false.21
  %15 = load i32, i32* %val1, align 4, !tbaa !6
  %16 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 14
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i64 %idxprom
  %h_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx, i32 0, i32 2
  store i32 %15, i32* %h_samp_factor, align 4, !tbaa !28
  %19 = load i32, i32* %val2, align 4, !tbaa !6
  %20 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom27 = sext i32 %20 to i64
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info28, align 8, !tbaa !25
  %arrayidx29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i64 %idxprom27
  %v_samp_factor = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx29, i32 0, i32 3
  store i32 %19, i32* %v_samp_factor, align 4, !tbaa !29
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.26
  %23 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %24 = load i8, i8* %23, align 1, !tbaa !24
  %conv30 = sext i8 %24 to i32
  %tobool31 = icmp ne i32 %conv30, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load i8*, i8** %arg.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8, !tbaa !2
  %26 = load i8, i8* %25, align 1, !tbaa !24
  %conv32 = sext i8 %26 to i32
  %cmp33 = icmp ne i32 %conv32, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.43

if.else:                                          ; preds = %for.body
  %28 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 14
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info36, align 8, !tbaa !25
  %arrayidx37 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i64 %idxprom35
  %h_samp_factor38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx37, i32 0, i32 2
  store i32 1, i32* %h_samp_factor38, align 4, !tbaa !28
  %31 = load i32, i32* %ci, align 4, !tbaa !6
  %idxprom39 = sext i32 %31 to i64
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !2
  %comp_info40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 14
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %comp_info40, align 8, !tbaa !25
  %arrayidx41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i64 %idxprom39
  %v_samp_factor42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %arrayidx41, i32 0, i32 3
  store i32 1, i32* %v_samp_factor42, align 4, !tbaa !29
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %34 = load i32, i32* %ci, align 4, !tbaa !6
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %ci, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.24, %if.then.11, %if.then.2
  call void @llvm.lifetime.end(i64 1, i8* %ch2) #6
  call void @llvm.lifetime.end(i64 1, i8* %ch1) #6
  %35 = bitcast i32* %val2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #6
  %36 = bitcast i32* %val1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #6
  %37 = bitcast i32* %ci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #6
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @text_getc(%struct.__sFILE* %file) #0 {
entry:
  %file.addr = alloca %struct.__sFILE*, align 8
  %ch = alloca i32, align 4
  store %struct.__sFILE* %file, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %0 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = load %struct.__sFILE*, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %call = call i32 @getc(%struct.__sFILE* %1)
  store i32 %call, i32* %ch, align 4, !tbaa !6
  %2 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp = icmp eq i32 %2, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %3 = load %struct.__sFILE*, %struct.__sFILE** %file.addr, align 8, !tbaa !2
  %call1 = call i32 @getc(%struct.__sFILE* %3)
  store i32 %call1, i32* %ch, align 4, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp2 = icmp ne i32 %4, 10
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %5 = load i32, i32* %ch, align 4, !tbaa !6
  %cmp3 = icmp ne i32 %5, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %6 = phi i1 [ false, %do.cond ], [ %cmp3, %land.rhs ]
  br i1 %6, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %7 = load i32, i32* %ch, align 4, !tbaa !6
  %8 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #6
  ret i32 %7
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isspace(i32 %_c) #5 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %call = call i32 @__istype(i32 %0, i64 16384)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isdigit(i32 %_c) #5 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %call = call i32 @__isctype(i32 %0, i64 1024)
  ret i32 %call
}

declare i32 @getc(%struct.__sFILE*) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__istype(i32 %_c, i64 %_f) #5 {
entry:
  %_c.addr = alloca i32, align 4
  %_f.addr = alloca i64, align 8
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  store i64 %_f, i64* %_f.addr, align 8, !tbaa !8
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %call = call i32 @isascii(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %conv = zext i32 %2 to i64
  %3 = load i64, i64* %_f.addr, align 8, !tbaa !8
  %and = and i64 %conv, %3
  %tobool1 = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool1, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %5 = load i64, i64* %_f.addr, align 8, !tbaa !8
  %call3 = call i32 @__maskrune(i32 %4, i64 %5)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  %lnot7 = xor i1 %lnot5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ %lnot.ext8, %cond.false ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @isascii(i32 %_c) #5 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %and = and i32 %0, -128
  %cmp = icmp eq i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @__maskrune(i32, i64) #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @__isctype(i32 %_c, i64 %_f) #5 {
entry:
  %_c.addr = alloca i32, align 4
  %_f.addr = alloca i64, align 8
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !6
  store i64 %_f, i64* %_f.addr, align 8, !tbaa !8
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %cmp1 = icmp sge i32 %1, 256
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %2 = load i32, i32* %_c.addr, align 4, !tbaa !6
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* getelementptr inbounds (%struct._RuneLocale, %struct._RuneLocale* @_DefaultRuneLocale, i32 0, i32 5), i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %conv = zext i32 %3 to i64
  %4 = load i64, i64* %_f.addr, align 8, !tbaa !8
  %and = and i64 %conv, %4
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %lnot.ext, %cond.false ]
  ret i32 %cond
}

declare i32 @ungetc(i32, %struct.__sFILE*) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!11, !7, i64 0}
!11 = !{!"", !7, i64 0, !4, i64 4, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!12 = !{!11, !7, i64 20}
!13 = !{!11, !7, i64 24}
!14 = !{!11, !7, i64 28}
!15 = !{!11, !7, i64 32}
!16 = !{!17, !3, i64 8}
!17 = !{!"jpeg_compress_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 52, !18, i64 56, !7, i64 64, !7, i64 68, !4, i64 72, !3, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !7, i64 232, !3, i64 240, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !4, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !4, i64 284, !19, i64 286, !19, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !4, i64 320, !7, i64 352, !7, i64 356, !7, i64 360, !4, i64 364, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488}
!18 = !{!"double", !4, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!21, !3, i64 0}
!21 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !9, i64 88}
!22 = !{!17, !3, i64 240}
!23 = !{!17, !7, i64 232}
!24 = !{!4, !4, i64 0}
!25 = !{!17, !3, i64 80}
!26 = !{!27, !7, i64 16}
!27 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !3, i64 80, !3, i64 88}
!28 = !{!27, !7, i64 8}
!29 = !{!27, !7, i64 12}
