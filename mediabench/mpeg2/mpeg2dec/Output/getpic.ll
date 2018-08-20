; ModuleID = 'getpic.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@picture_structure = external global i32, align 4
@Second_Field = external global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"odd number of field pictures\0A\00", align 1
@Ersatz_Flag = external global i32, align 4
@base = external global %struct.layer_data, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"last frame incomplete, not stored\0A\00", align 1
@backward_reference_frame = external global [3 x i8*], align 16
@mb_width = external global i32, align 4
@mb_height = external global i32, align 4
@Two_Streams = external global i32, align 4
@enhan = external global %struct.layer_data, align 8
@Fault_Flag = external global i32, align 4
@ld = external global %struct.layer_data*, align 8
@Quiet_Flag = external global i32, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Too many macroblocks in picture\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"start_of_slice(): Premature end of picture\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DP: Premature end of picture\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"start_of_slice(): MBAinc unsuccessful\0A\00", align 1
@Non_Linear_quantizer_scale = external global [32 x i8], align 16
@concealment_motion_vectors = external global i32, align 4
@f_code = external global [2 x [2 x i32]], align 16
@forward_f_code = external global i32, align 4
@full_pel_forward_vector = external global i32, align 4
@backward_f_code = external global i32, align 4
@full_pel_backward_vector = external global i32, align 4
@chroma_format = external global i32, align 4
@block_count = external global i32, align 4
@picture_coding_type = external global i32, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"D picture end_of_macroblock bit\00", align 1
@macroblock_modes.stwc_table = internal global [3 x [4 x i8]] [[4 x i8] c"\06\03\07\04", [4 x i8] c"\02\01\05\04", [4 x i8] c"\02\05\07\04"], align 1
@macroblock_modes.stwclass_table = internal global [9 x i8] c"\00\01\02\01\01\02\03\03\04", align 1
@spatial_temporal_weight_code_table_index = external global i32, align 4
@frame_pred_frame_dct = external global i32, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"SNR: Premature end of picture\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Cant't synchronize streams\0A\00", align 1
@Reference_IDCT_Flag = external global i32, align 4
@current_frame = external global [3 x i8*], align 16
@Coded_Picture_Width = external global i32, align 4
@Chroma_Width = external global i32, align 4
@Clip = external global i8*, align 8
@auxframe = external global [3 x i8*], align 16
@forward_reference_frame = external global [3 x i8*], align 16
@frame_reorder.Oldref_progressive_frame = internal global i32 0, align 4
@frame_reorder.Newref_progressive_frame = internal global i32 0, align 4
@progressive_frame = external global i32, align 4

; Function Attrs: nounwind ssp uwtable
define void @Decode_Picture(i32 %bitstream_framenum, i32 %sequence_framenum) #0 {
entry:
  %bitstream_framenum.addr = alloca i32, align 4
  %sequence_framenum.addr = alloca i32, align 4
  store i32 %bitstream_framenum, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  store i32 %sequence_framenum, i32* %sequence_framenum.addr, align 4, !tbaa !2
  %0 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* @Second_Field, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @Update_Picture_Buffers()
  %2 = load i32, i32* @Ersatz_Flag, align 4, !tbaa !2
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  %4 = load i32, i32* %sequence_framenum.addr, align 4, !tbaa !2
  call void @Substitute_Frame_Buffer(i32 %3, i32 %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 20), align 4, !tbaa !6
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %if.end.3
  %6 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.5
  call void @Spatial_Prediction()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true.5, %if.end.3
  %7 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  call void @picture_data(i32 %7)
  %8 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  %9 = load i32, i32* %sequence_framenum.addr, align 4, !tbaa !2
  call void @frame_reorder(i32 %8, i32 %9)
  %10 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp9 = icmp ne i32 %10, 3
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %11 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool11 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @Second_Field, align 4, !tbaa !2
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Update_Picture_Buffers() #0 {
entry:
  %cc = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %0 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  store i32 0, i32* %cc, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8, !tbaa !9
  %6 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom2
  store i8* %5, i8** %arrayidx3, align 8, !tbaa !9
  br label %if.end.17

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.else
  %8 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i64 %idxprom5
  %9 = load i8*, i8** %arrayidx6, align 8, !tbaa !9
  store i8* %9, i8** %tmp, align 8, !tbaa !9
  %10 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom7
  %11 = load i8*, i8** %arrayidx8, align 8, !tbaa !9
  %12 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i64 %idxprom9
  store i8* %11, i8** %arrayidx10, align 8, !tbaa !9
  %13 = load i8*, i8** %tmp, align 8, !tbaa !9
  %14 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom11
  store i8* %13, i8** %arrayidx12, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %15 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom13
  %16 = load i8*, i8** %arrayidx14, align 8, !tbaa !9
  %17 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom15
  store i8* %16, i8** %arrayidx16, align 8, !tbaa !9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  %18 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp18 = icmp eq i32 %18, 2
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.17
  %19 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp20 = icmp eq i32 %19, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %20 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  %21 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  %22 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom21
  %23 = load i8*, i8** %arrayidx22, align 8, !tbaa !9
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %arrayidx22, align 8, !tbaa !9
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %24 = load i32, i32* %cc, align 4, !tbaa !2
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %cc, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #3
  %26 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #3
  ret void
}

declare void @Substitute_Frame_Buffer(i32, i32) #1

declare void @Spatial_Prediction() #1

; Function Attrs: nounwind ssp uwtable
define internal void @picture_data(i32 %framenum) #0 {
entry:
  %framenum.addr = alloca i32, align 4
  %MBAmax = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %framenum, i32* %framenum.addr, align 4, !tbaa !2
  %0 = bitcast i32* %MBAmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load i32, i32* @mb_width, align 4, !tbaa !2
  %3 = load i32, i32* @mb_height, align 4, !tbaa !2
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %MBAmax, align 4, !tbaa !2
  %4 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp = icmp ne i32 %4, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %MBAmax, align 4, !tbaa !2
  %shr = ashr i32 %5, 1
  store i32 %shr, i32* %MBAmax, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.3, %if.end
  %6 = load i32, i32* %framenum.addr, align 4, !tbaa !2
  %7 = load i32, i32* %MBAmax, align 4, !tbaa !2
  %call = call i32 @slice(i32 %6, i32 %7)
  store i32 %call, i32* %ret, align 4, !tbaa !2
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.cond
  %8 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #3
  %9 = bitcast i32* %MBAmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #3
  ret void

if.end.3:                                         ; preds = %for.cond
  br label %for.cond
}

; Function Attrs: nounwind ssp uwtable
define internal void @frame_reorder(i32 %Bitstream_Framenum, i32 %Sequence_Framenum) #0 {
entry:
  %Bitstream_Framenum.addr = alloca i32, align 4
  %Sequence_Framenum.addr = alloca i32, align 4
  store i32 %Bitstream_Framenum, i32* %Bitstream_Framenum.addr, align 4, !tbaa !2
  store i32 %Sequence_Framenum, i32* %Sequence_Framenum.addr, align 4, !tbaa !2
  %0 = load i32, i32* %Sequence_Framenum.addr, align 4, !tbaa !2
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %lor.lhs.false, %if.then
  %3 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp3 = icmp eq i32 %3, 3
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %4 = load i32, i32* %Bitstream_Framenum.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %4, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @auxframe, i32 0, i32 0), i32 %sub)
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %5 = load i32, i32* @progressive_frame, align 4, !tbaa !2
  store i32 %5, i32* @frame_reorder.Newref_progressive_frame, align 4, !tbaa !2
  %6 = load i32, i32* @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !2
  store i32 %6, i32* @progressive_frame, align 4, !tbaa !2
  %7 = load i32, i32* %Bitstream_Framenum.addr, align 4, !tbaa !2
  %sub5 = sub nsw i32 %7, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %sub5)
  %8 = load i32, i32* @frame_reorder.Newref_progressive_frame, align 4, !tbaa !2
  store i32 %8, i32* @progressive_frame, align 4, !tbaa !2
  store i32 %8, i32* @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %lor.lhs.false
  br label %if.end.8

if.else.7:                                        ; preds = %entry
  %9 = load i32, i32* @progressive_frame, align 4, !tbaa !2
  store i32 %9, i32* @frame_reorder.Oldref_progressive_frame, align 4, !tbaa !2
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.end.6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Output_Last_Frame_of_Sequence(i32 %Framenum) #0 {
entry:
  %Framenum.addr = alloca i32, align 4
  store i32 %Framenum, i32* %Framenum.addr, align 4, !tbaa !2
  %0 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %Framenum.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %1, 1
  call void @Write_Frame(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @Write_Frame(i8**, i32) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @slice(i32 %framenum, i32 %MBAmax) #0 {
entry:
  %retval = alloca i32, align 4
  %framenum.addr = alloca i32, align 4
  %MBAmax.addr = alloca i32, align 4
  %MBA = alloca i32, align 4
  %MBAinc = alloca i32, align 4
  %macroblock_type = alloca i32, align 4
  %motion_type = alloca i32, align 4
  %dct_type = alloca i32, align 4
  %dc_dct_pred = alloca [3 x i32], align 4
  %PMV = alloca [2 x [2 x [2 x i32]]], align 16
  %motion_vertical_field_select = alloca [2 x [2 x i32]], align 16
  %dmvector = alloca [2 x i32], align 4
  %stwtype = alloca i32, align 4
  %stwclass = alloca i32, align 4
  %SNRMBA = alloca i32, align 4
  %SNRMBAinc = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %framenum, i32* %framenum.addr, align 4, !tbaa !2
  store i32 %MBAmax, i32* %MBAmax.addr, align 4, !tbaa !2
  %0 = bitcast i32* %MBA to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %MBAinc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %macroblock_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %motion_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %dct_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast [3 x i32]* %dc_dct_pred to i8*
  call void @llvm.lifetime.start(i64 12, i8* %5) #3
  %6 = bitcast [2 x [2 x [2 x i32]]]* %PMV to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #3
  %7 = bitcast [2 x [2 x i32]]* %motion_vertical_field_select to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #3
  %8 = bitcast [2 x i32]* %dmvector to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i32* %stwtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %stwclass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %SNRMBA to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %12 = bitcast i32* %SNRMBAinc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  %13 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  store i32 0, i32* %MBA, align 4, !tbaa !2
  store i32 0, i32* %MBAinc, align 4, !tbaa !2
  %14 = load i32, i32* %MBAmax.addr, align 4, !tbaa !2
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %dc_dct_pred, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %call = call i32 @start_of_slice(i32 %14, i32* %MBA, i32* %MBAinc, i32* %arraydecay, [2 x [2 x i32]]* %arraydecay1)
  store i32 %call, i32* %ret, align 4, !tbaa !2
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %ret, align 4, !tbaa !2
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4, !tbaa !10
  %cmp2 = icmp eq i32 %17, 3
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 0, i32* %SNRMBA, align 4, !tbaa !2
  store i32 0, i32* %SNRMBAinc, align 4, !tbaa !2
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  store i32 0, i32* @Fault_Flag, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %if.end.72, %if.end.4
  %18 = load i32, i32* %MBA, align 4, !tbaa !2
  %19 = load i32, i32* %MBAmax.addr, align 4, !tbaa !2
  %cmp5 = icmp sge i32 %18, %19
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %for.cond
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  %20 = load i32, i32* %MBAinc, align 4, !tbaa !2
  %cmp8 = icmp eq i32 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.end.29

if.then.9:                                        ; preds = %if.end.7
  %21 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp10 = icmp eq i32 %21, 1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.14

land.lhs.true.11:                                 ; preds = %if.then.9
  %22 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !11
  %cmp12 = icmp eq i32 %22, 1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %land.lhs.true.11, %if.then.9
  %call15 = call i32 @Show_Bits(i32 23)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then.18

lor.lhs.false:                                    ; preds = %if.end.14
  %23 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.14
  br label %resync

resync:                                           ; preds = %if.then.48, %if.then.26, %if.then.18
  store i32 0, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp19 = icmp eq i32 %24, 1
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %if.else
  %25 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !11
  %cmp21 = icmp eq i32 %25, 1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.20
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true.20, %if.else
  %call24 = call i32 @Get_macroblock_address_increment()
  store i32 %call24, i32* %MBAinc, align 4, !tbaa !2
  %26 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  br label %resync

if.end.27:                                        ; preds = %if.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.7
  %27 = load i32, i32* %MBA, align 4, !tbaa !2
  %28 = load i32, i32* %MBAmax.addr, align 4, !tbaa !2
  %cmp30 = icmp sge i32 %27, %28
  br i1 %cmp30, label %if.then.31, label %if.end.36

if.then.31:                                       ; preds = %if.end.29
  %29 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool32 = icmp ne i32 %29, 0
  br i1 %tobool32, label %if.end.35, label %if.then.33

if.then.33:                                       ; preds = %if.then.31
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.31
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.end.29
  %30 = load i32, i32* %MBAinc, align 4, !tbaa !2
  %cmp37 = icmp eq i32 %30, 1
  br i1 %cmp37, label %if.then.38, label %if.else.50

if.then.38:                                       ; preds = %if.end.36
  %arraydecay39 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [3 x i32], [3 x i32]* %dc_dct_pred, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i32 0, i32 0
  %arraydecay42 = getelementptr inbounds [2 x i32], [2 x i32]* %dmvector, i32 0, i32 0
  %call43 = call i32 @decode_macroblock(i32* %macroblock_type, i32* %stwtype, i32* %stwclass, i32* %motion_type, i32* %dct_type, [2 x [2 x i32]]* %arraydecay39, i32* %arraydecay40, [2 x i32]* %arraydecay41, i32* %arraydecay42)
  store i32 %call43, i32* %ret, align 4, !tbaa !2
  %31 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp44 = icmp eq i32 %31, -1
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.38
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.46:                                        ; preds = %if.then.38
  %32 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp47 = icmp eq i32 %32, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  br label %resync

if.end.49:                                        ; preds = %if.end.46
  br label %if.end.54

if.else.50:                                       ; preds = %if.end.36
  %arraydecay51 = getelementptr inbounds [3 x i32], [3 x i32]* %dc_dct_pred, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i32 0, i32 0
  call void @skipped_macroblock(i32* %arraydecay51, [2 x [2 x i32]]* %arraydecay52, i32* %motion_type, [2 x i32]* %arraydecay53, i32* %stwtype, i32* %macroblock_type)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.50, %if.end.49
  %33 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool55 = icmp ne i32 %33, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.59

land.lhs.true.56:                                 ; preds = %if.end.54
  %34 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4, !tbaa !10
  %cmp57 = icmp eq i32 %34, 3
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.56
  %35 = load i32, i32* %MBA, align 4, !tbaa !2
  %36 = load i32, i32* %MBAmax.addr, align 4, !tbaa !2
  call void @Decode_SNR_Macroblock(i32* %SNRMBA, i32* %SNRMBAinc, i32 %35, i32 %36, i32* %dct_type)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true.56, %if.end.54
  %37 = load i32, i32* %MBA, align 4, !tbaa !2
  %38 = load i32, i32* %macroblock_type, align 4, !tbaa !2
  %39 = load i32, i32* %motion_type, align 4, !tbaa !2
  %arraydecay60 = getelementptr inbounds [2 x [2 x [2 x i32]]], [2 x [2 x [2 x i32]]]* %PMV, i32 0, i32 0
  %arraydecay61 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %motion_vertical_field_select, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [2 x i32], [2 x i32]* %dmvector, i32 0, i32 0
  %40 = load i32, i32* %stwtype, align 4, !tbaa !2
  %41 = load i32, i32* %dct_type, align 4, !tbaa !2
  call void @motion_compensation(i32 %37, i32 %38, i32 %39, [2 x [2 x i32]]* %arraydecay60, [2 x i32]* %arraydecay61, i32* %arraydecay62, i32 %40, i32 %41)
  %42 = load i32, i32* %MBA, align 4, !tbaa !2
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %MBA, align 4, !tbaa !2
  %43 = load i32, i32* %MBAinc, align 4, !tbaa !2
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %MBAinc, align 4, !tbaa !2
  %44 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool63 = icmp ne i32 %44, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.69

land.lhs.true.64:                                 ; preds = %if.end.59
  %45 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4, !tbaa !10
  %cmp65 = icmp eq i32 %45, 3
  br i1 %cmp65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %land.lhs.true.64
  %46 = load i32, i32* %SNRMBA, align 4, !tbaa !2
  %inc67 = add nsw i32 %46, 1
  store i32 %inc67, i32* %SNRMBA, align 4, !tbaa !2
  %47 = load i32, i32* %SNRMBAinc, align 4, !tbaa !2
  %dec68 = add nsw i32 %47, -1
  store i32 %dec68, i32* %SNRMBAinc, align 4, !tbaa !2
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %land.lhs.true.64, %if.end.59
  %48 = load i32, i32* %MBA, align 4, !tbaa !2
  %49 = load i32, i32* %MBAmax.addr, align 4, !tbaa !2
  %cmp70 = icmp sge i32 %48, %49
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.69
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.69
  br label %for.cond

cleanup:                                          ; preds = %if.then.71, %if.then.45, %if.end.35, %resync, %if.then.6, %if.then
  %50 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = bitcast i32* %SNRMBAinc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i32* %SNRMBA to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast i32* %stwclass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  %54 = bitcast i32* %stwtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #3
  %55 = bitcast [2 x i32]* %dmvector to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  %56 = bitcast [2 x [2 x i32]]* %motion_vertical_field_select to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #3
  %57 = bitcast [2 x [2 x [2 x i32]]]* %PMV to i8*
  call void @llvm.lifetime.end(i64 32, i8* %57) #3
  %58 = bitcast [3 x i32]* %dc_dct_pred to i8*
  call void @llvm.lifetime.end(i64 12, i8* %58) #3
  %59 = bitcast i32* %dct_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #3
  %60 = bitcast i32* %motion_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  %61 = bitcast i32* %macroblock_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #3
  %62 = bitcast i32* %MBAinc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = bitcast i32* %MBA to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @start_of_slice(i32 %MBAmax, i32* %MBA, i32* %MBAinc, i32* %dc_dct_pred, [2 x [2 x i32]]* %PMV) #0 {
entry:
  %retval = alloca i32, align 4
  %MBAmax.addr = alloca i32, align 4
  %MBA.addr = alloca i32*, align 8
  %MBAinc.addr = alloca i32*, align 8
  %dc_dct_pred.addr = alloca i32*, align 8
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %code = alloca i32, align 4
  %slice_vert_pos_ext = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %MBAmax, i32* %MBAmax.addr, align 4, !tbaa !2
  store i32* %MBA, i32** %MBA.addr, align 8, !tbaa !9
  store i32* %MBAinc, i32** %MBAinc.addr, align 8, !tbaa !9
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %slice_vert_pos_ext to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  store i32 0, i32* @Fault_Flag, align 4, !tbaa !2
  call void @next_start_code()
  %call = call i32 @Show_Bits(i32 32)
  store i32 %call, i32* %code, align 4, !tbaa !2
  %2 = load i32, i32* %code, align 4, !tbaa !2
  %cmp = icmp ult i32 %2, 257
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !2
  %cmp1 = icmp ugt i32 %3, 431
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %lor.lhs.false
  call void @Flush_Buffer32()
  %call5 = call i32 @slice_header()
  store i32 %call5, i32* %slice_vert_pos_ext, align 4, !tbaa !2
  %5 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then.7, label %if.end.22

if.then.7:                                        ; preds = %if.end.4
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !9
  call void @next_start_code()
  %call8 = call i32 @Show_Bits(i32 32)
  store i32 %call8, i32* %code, align 4, !tbaa !2
  %6 = load i32, i32* %code, align 4, !tbaa !2
  %cmp9 = icmp ult i32 %6, 257
  br i1 %cmp9, label %if.then.12, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.then.7
  %7 = load i32, i32* %code, align 4, !tbaa !2
  %cmp11 = icmp ugt i32 %7, 431
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %lor.lhs.false.10, %if.then.7
  %8 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool13 = icmp ne i32 %8, 0
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false.10
  call void @Flush_Buffer32()
  %call18 = call i32 @slice_header()
  store i32 %call18, i32* %slice_vert_pos_ext, align 4, !tbaa !2
  %9 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !11
  %cmp19 = icmp ne i32 %9, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.4
  %call23 = call i32 @Get_macroblock_address_increment()
  %10 = load i32*, i32** %MBAinc.addr, align 8, !tbaa !9
  store i32 %call23, i32* %10, align 4, !tbaa !2
  %11 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool24 = icmp ne i32 %11, 0
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.22
  %12 = load i32, i32* %slice_vert_pos_ext, align 4, !tbaa !2
  %shl = shl i32 %12, 7
  %13 = load i32, i32* %code, align 4, !tbaa !2
  %and = and i32 %13, 255
  %add = add i32 %shl, %and
  %sub = sub i32 %add, 1
  %14 = load i32, i32* @mb_width, align 4, !tbaa !2
  %mul = mul i32 %sub, %14
  %15 = load i32*, i32** %MBAinc.addr, align 8, !tbaa !9
  %16 = load i32, i32* %15, align 4, !tbaa !2
  %add28 = add i32 %mul, %16
  %sub29 = sub i32 %add28, 1
  %17 = load i32*, i32** %MBA.addr, align 8, !tbaa !9
  store i32 %sub29, i32* %17, align 4, !tbaa !2
  %18 = load i32*, i32** %MBAinc.addr, align 8, !tbaa !9
  store i32 1, i32* %18, align 4, !tbaa !2
  %19 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 2
  store i32 0, i32* %arrayidx, align 4, !tbaa !2
  %20 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %arrayidx30, align 4, !tbaa !2
  %21 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx31 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %arrayidx31, align 4, !tbaa !2
  %22 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx32 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %22, i64 1
  %arrayidx33 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx32, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx33, i32 0, i64 1
  store i32 0, i32* %arrayidx34, align 4, !tbaa !2
  %23 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx35 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i64 1
  %arrayidx36 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx35, i32 0, i64 0
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx36, i32 0, i64 0
  store i32 0, i32* %arrayidx37, align 4, !tbaa !2
  %24 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %24, i64 0
  %arrayidx39 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx38, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx39, i32 0, i64 1
  store i32 0, i32* %arrayidx40, align 4, !tbaa !2
  %25 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx41 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %25, i64 0
  %arrayidx42 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx41, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx42, i32 0, i64 0
  store i32 0, i32* %arrayidx43, align 4, !tbaa !2
  %26 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx44 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %26, i64 1
  %arrayidx45 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx44, i32 0, i64 1
  %arrayidx46 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx45, i32 0, i64 1
  store i32 0, i32* %arrayidx46, align 4, !tbaa !2
  %27 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx47 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %27, i64 1
  %arrayidx48 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx47, i32 0, i64 1
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx48, i32 0, i64 0
  store i32 0, i32* %arrayidx49, align 4, !tbaa !2
  %28 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx50 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %28, i64 0
  %arrayidx51 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx51, i32 0, i64 1
  store i32 0, i32* %arrayidx52, align 4, !tbaa !2
  %29 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx53 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %29, i64 0
  %arrayidx54 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx53, i32 0, i64 1
  %arrayidx55 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx54, i32 0, i64 0
  store i32 0, i32* %arrayidx55, align 4, !tbaa !2
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.25, %if.end.16, %if.end
  %30 = bitcast i32* %slice_vert_pos_ext to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #3
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #3
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i32 @Show_Bits(i32) #1

declare i32 @Get_macroblock_address_increment() #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @decode_macroblock(i32* %macroblock_type, i32* %stwtype, i32* %stwclass, i32* %motion_type, i32* %dct_type, [2 x [2 x i32]]* %PMV, i32* %dc_dct_pred, [2 x i32]* %motion_vertical_field_select, i32* %dmvector) #0 {
entry:
  %retval = alloca i32, align 4
  %macroblock_type.addr = alloca i32*, align 8
  %stwtype.addr = alloca i32*, align 8
  %stwclass.addr = alloca i32*, align 8
  %motion_type.addr = alloca i32*, align 8
  %dct_type.addr = alloca i32*, align 8
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %dc_dct_pred.addr = alloca i32*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %quantizer_scale_code = alloca i32, align 4
  %comp = alloca i32, align 4
  %motion_vector_count = alloca i32, align 4
  %mv_format = alloca i32, align 4
  %dmv = alloca i32, align 4
  %mvscale = alloca i32, align 4
  %coded_block_pattern = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %macroblock_type, i32** %macroblock_type.addr, align 8, !tbaa !9
  store i32* %stwtype, i32** %stwtype.addr, align 8, !tbaa !9
  store i32* %stwclass, i32** %stwclass.addr, align 8, !tbaa !9
  store i32* %motion_type, i32** %motion_type.addr, align 8, !tbaa !9
  store i32* %dct_type, i32** %dct_type.addr, align 8, !tbaa !9
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  store i32* %dmvector, i32** %dmvector.addr, align 8, !tbaa !9
  %0 = bitcast i32* %quantizer_scale_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %motion_vector_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %mv_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %dmv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %mvscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %coded_block_pattern to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %8 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !11
  %cmp1 = icmp sle i32 %8, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %9 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %10 = load i32*, i32** %stwtype.addr, align 8, !tbaa !9
  %11 = load i32*, i32** %stwclass.addr, align 8, !tbaa !9
  %12 = load i32*, i32** %motion_type.addr, align 8, !tbaa !9
  %13 = load i32*, i32** %dct_type.addr, align 8, !tbaa !9
  call void @macroblock_modes(i32* %9, i32* %10, i32* %11, i32* %12, i32* %motion_vector_count, i32* %mv_format, i32* %dmv, i32* %mvscale, i32* %13)
  %14 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end.3
  %15 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %16 = load i32, i32* %15, align 4, !tbaa !2
  %and = and i32 %16, 16
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.19

if.then.7:                                        ; preds = %if.end.5
  %call = call i32 @Get_Bits(i32 5)
  store i32 %call, i32* %quantizer_scale_code, align 4, !tbaa !2
  %17 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %MPEG2_Flag = getelementptr inbounds %struct.layer_data, %struct.layer_data* %17, i32 0, i32 16
  %18 = load i32, i32* %MPEG2_Flag, align 4, !tbaa !12
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.then.7
  %19 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %q_scale_type = getelementptr inbounds %struct.layer_data, %struct.layer_data* %19, i32 0, i32 18
  %20 = load i32, i32* %q_scale_type, align 4, !tbaa !13
  %tobool10 = icmp ne i32 %20, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %21 = load i32, i32* %quantizer_scale_code, align 4, !tbaa !2
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i32 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv = zext i8 %22 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  %23 = load i32, i32* %quantizer_scale_code, align 4, !tbaa !2
  %shl = shl i32 %23, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %shl, %cond.false ]
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 22
  store i32 %cond, i32* %quantizer_scale, align 4, !tbaa !15
  br label %if.end.13

if.else.11:                                       ; preds = %if.then.7
  %25 = load i32, i32* %quantizer_scale_code, align 4, !tbaa !2
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %quantizer_scale12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i32 0, i32 22
  store i32 %25, i32* %quantizer_scale12, align 4, !tbaa !15
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %cond.end
  %27 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp14 = icmp eq i32 %27, 1
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %28 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %quantizer_scale17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %28, i32 0, i32 22
  %29 = load i32, i32* %quantizer_scale17, align 4, !tbaa !15
  store i32 %29, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 22), align 4, !tbaa !15
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.5
  %30 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %31 = load i32, i32* %30, align 4, !tbaa !2
  %and20 = and i32 %31, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %32 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %33 = load i32, i32* %32, align 4, !tbaa !2
  %and22 = and i32 %33, 1
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %lor.lhs.false
  %34 = load i32, i32* @concealment_motion_vectors, align 4, !tbaa !2
  %tobool24 = icmp ne i32 %34, 0
  br i1 %tobool24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %land.lhs.true, %if.end.19
  %35 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %MPEG2_Flag26 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %35, i32 0, i32 16
  %36 = load i32, i32* %MPEG2_Flag26, align 4, !tbaa !12
  %tobool27 = icmp ne i32 %36, 0
  br i1 %tobool27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.then.25
  %37 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %38 = load i32*, i32** %dmvector.addr, align 8, !tbaa !9
  %39 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  %40 = load i32, i32* %motion_vector_count, align 4, !tbaa !2
  %41 = load i32, i32* %mv_format, align 4, !tbaa !2
  %42 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 0, i64 0), align 4, !tbaa !2
  %sub = sub nsw i32 %42, 1
  %43 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 0, i64 1), align 4, !tbaa !2
  %sub29 = sub nsw i32 %43, 1
  %44 = load i32, i32* %dmv, align 4, !tbaa !2
  %45 = load i32, i32* %mvscale, align 4, !tbaa !2
  call void @motion_vectors([2 x [2 x i32]]* %37, i32* %38, [2 x i32]* %39, i32 0, i32 %40, i32 %41, i32 %sub, i32 %sub29, i32 %44, i32 %45)
  br label %if.end.35

if.else.30:                                       ; preds = %if.then.25
  %46 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx31 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %46, i64 0
  %arrayidx32 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx31, i32 0, i64 0
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx32, i32 0, i32 0
  %47 = load i32*, i32** %dmvector.addr, align 8, !tbaa !9
  %48 = load i32, i32* @forward_f_code, align 4, !tbaa !2
  %sub33 = sub nsw i32 %48, 1
  %49 = load i32, i32* @forward_f_code, align 4, !tbaa !2
  %sub34 = sub nsw i32 %49, 1
  %50 = load i32, i32* @full_pel_forward_vector, align 4, !tbaa !2
  call void @motion_vector(i32* %arraydecay, i32* %47, i32 %sub33, i32 %sub34, i32 0, i32 0, i32 %50)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.30, %if.then.28
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %lor.lhs.false
  %51 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool37 = icmp ne i32 %51, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.36
  %52 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %53 = load i32, i32* %52, align 4, !tbaa !2
  %and40 = and i32 %53, 4
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %if.end.39
  %54 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %MPEG2_Flag43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %54, i32 0, i32 16
  %55 = load i32, i32* %MPEG2_Flag43, align 4, !tbaa !12
  %tobool44 = icmp ne i32 %55, 0
  br i1 %tobool44, label %if.then.45, label %if.else.48

if.then.45:                                       ; preds = %if.then.42
  %56 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %57 = load i32*, i32** %dmvector.addr, align 8, !tbaa !9
  %58 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  %59 = load i32, i32* %motion_vector_count, align 4, !tbaa !2
  %60 = load i32, i32* %mv_format, align 4, !tbaa !2
  %61 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 1, i64 0), align 4, !tbaa !2
  %sub46 = sub nsw i32 %61, 1
  %62 = load i32, i32* getelementptr inbounds ([2 x [2 x i32]], [2 x [2 x i32]]* @f_code, i32 0, i64 1, i64 1), align 4, !tbaa !2
  %sub47 = sub nsw i32 %62, 1
  %63 = load i32, i32* %mvscale, align 4, !tbaa !2
  call void @motion_vectors([2 x [2 x i32]]* %56, i32* %57, [2 x i32]* %58, i32 1, i32 %59, i32 %60, i32 %sub46, i32 %sub47, i32 0, i32 %63)
  br label %if.end.54

if.else.48:                                       ; preds = %if.then.42
  %64 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx49 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %64, i64 0
  %arrayidx50 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx49, i32 0, i64 1
  %arraydecay51 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx50, i32 0, i32 0
  %65 = load i32*, i32** %dmvector.addr, align 8, !tbaa !9
  %66 = load i32, i32* @backward_f_code, align 4, !tbaa !2
  %sub52 = sub nsw i32 %66, 1
  %67 = load i32, i32* @backward_f_code, align 4, !tbaa !2
  %sub53 = sub nsw i32 %67, 1
  %68 = load i32, i32* @full_pel_backward_vector, align 4, !tbaa !2
  call void @motion_vector(i32* %arraydecay51, i32* %65, i32 %sub52, i32 %sub53, i32 0, i32 0, i32 %68)
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.48, %if.then.45
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.39
  %69 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool56 = icmp ne i32 %69, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.55
  %70 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %71 = load i32, i32* %70, align 4, !tbaa !2
  %and59 = and i32 %71, 1
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.64

land.lhs.true.61:                                 ; preds = %if.end.58
  %72 = load i32, i32* @concealment_motion_vectors, align 4, !tbaa !2
  %tobool62 = icmp ne i32 %72, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true.61
  call void @Flush_Buffer(i32 1)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true.61, %if.end.58
  %73 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp65 = icmp eq i32 %73, 1
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.71

land.lhs.true.67:                                 ; preds = %if.end.64
  %74 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !11
  %cmp68 = icmp eq i32 %74, 3
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %land.lhs.true.67
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %land.lhs.true.67, %if.end.64
  %75 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %76 = load i32, i32* %75, align 4, !tbaa !2
  %and72 = and i32 %76, 2
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.else.90

if.then.74:                                       ; preds = %if.end.71
  %call75 = call i32 @Get_coded_block_pattern()
  store i32 %call75, i32* %coded_block_pattern, align 4, !tbaa !2
  %77 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp76 = icmp eq i32 %77, 2
  br i1 %cmp76, label %if.then.78, label %if.else.81

if.then.78:                                       ; preds = %if.then.74
  %78 = load i32, i32* %coded_block_pattern, align 4, !tbaa !2
  %shl79 = shl i32 %78, 2
  %call80 = call i32 @Get_Bits(i32 2)
  %or = or i32 %shl79, %call80
  store i32 %or, i32* %coded_block_pattern, align 4, !tbaa !2
  br label %if.end.89

if.else.81:                                       ; preds = %if.then.74
  %79 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp82 = icmp eq i32 %79, 3
  br i1 %cmp82, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.else.81
  %80 = load i32, i32* %coded_block_pattern, align 4, !tbaa !2
  %shl85 = shl i32 %80, 6
  %call86 = call i32 @Get_Bits(i32 6)
  %or87 = or i32 %shl85, %call86
  store i32 %or87, i32* %coded_block_pattern, align 4, !tbaa !2
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.else.81
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.78
  br label %if.end.99

if.else.90:                                       ; preds = %if.end.71
  %81 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %82 = load i32, i32* %81, align 4, !tbaa !2
  %and91 = and i32 %82, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %if.else.90
  %83 = load i32, i32* @block_count, align 4, !tbaa !2
  %shl94 = shl i32 1, %83
  %sub95 = sub nsw i32 %shl94, 1
  br label %cond.end.97

cond.false.96:                                    ; preds = %if.else.90
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.true.93
  %cond98 = phi i32 [ %sub95, %cond.true.93 ], [ 0, %cond.false.96 ]
  store i32 %cond98, i32* %coded_block_pattern, align 4, !tbaa !2
  br label %if.end.99

if.end.99:                                        ; preds = %cond.end.97, %if.end.89
  %84 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool100 = icmp ne i32 %84, 0
  br i1 %tobool100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.99
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.102:                                       ; preds = %if.end.99
  store i32 0, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.102
  %85 = load i32, i32* %comp, align 4, !tbaa !2
  %86 = load i32, i32* @block_count, align 4, !tbaa !2
  %cmp103 = icmp slt i32 %85, %86
  br i1 %cmp103, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp105 = icmp eq i32 %87, 1
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.body
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %for.body
  %88 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Clear_Block(i32 %88)
  %89 = load i32, i32* %coded_block_pattern, align 4, !tbaa !2
  %90 = load i32, i32* @block_count, align 4, !tbaa !2
  %sub109 = sub nsw i32 %90, 1
  %91 = load i32, i32* %comp, align 4, !tbaa !2
  %sub110 = sub nsw i32 %sub109, %91
  %shl111 = shl i32 1, %sub110
  %and112 = and i32 %89, %shl111
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.133

if.then.114:                                      ; preds = %if.end.108
  %92 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %93 = load i32, i32* %92, align 4, !tbaa !2
  %and115 = and i32 %93, 1
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.else.123

if.then.117:                                      ; preds = %if.then.114
  %94 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %MPEG2_Flag118 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %94, i32 0, i32 16
  %95 = load i32, i32* %MPEG2_Flag118, align 4, !tbaa !12
  %tobool119 = icmp ne i32 %95, 0
  br i1 %tobool119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.then.117
  %96 = load i32, i32* %comp, align 4, !tbaa !2
  %97 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  call void @Decode_MPEG2_Intra_Block(i32 %96, i32* %97)
  br label %if.end.122

if.else.121:                                      ; preds = %if.then.117
  %98 = load i32, i32* %comp, align 4, !tbaa !2
  %99 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  call void @Decode_MPEG1_Intra_Block(i32 %98, i32* %99)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  br label %if.end.129

if.else.123:                                      ; preds = %if.then.114
  %100 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %MPEG2_Flag124 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %100, i32 0, i32 16
  %101 = load i32, i32* %MPEG2_Flag124, align 4, !tbaa !12
  %tobool125 = icmp ne i32 %101, 0
  br i1 %tobool125, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %if.else.123
  %102 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Decode_MPEG2_Non_Intra_Block(i32 %102)
  br label %if.end.128

if.else.127:                                      ; preds = %if.else.123
  %103 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Decode_MPEG1_Non_Intra_Block(i32 %103)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.127, %if.then.126
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.122
  %104 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool130 = icmp ne i32 %104, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.129
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %if.end.129
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.end.108
  br label %for.inc

for.inc:                                          ; preds = %if.end.133
  %105 = load i32, i32* %comp, align 4, !tbaa !2
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %106 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp134 = icmp eq i32 %106, 4
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.end
  call void @marker_bit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.136, %for.end
  %107 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %108 = load i32, i32* %107, align 4, !tbaa !2
  %and138 = and i32 %108, 1
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.end.144, label %if.then.140

if.then.140:                                      ; preds = %if.end.137
  %109 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx141 = getelementptr inbounds i32, i32* %109, i64 2
  store i32 0, i32* %arrayidx141, align 4, !tbaa !2
  %110 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx142 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 0, i32* %arrayidx142, align 4, !tbaa !2
  %111 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx143 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 0, i32* %arrayidx143, align 4, !tbaa !2
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.140, %if.end.137
  %112 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %113 = load i32, i32* %112, align 4, !tbaa !2
  %and145 = and i32 %113, 1
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %land.lhs.true.147, label %if.end.174

land.lhs.true.147:                                ; preds = %if.end.144
  %114 = load i32, i32* @concealment_motion_vectors, align 4, !tbaa !2
  %tobool148 = icmp ne i32 %114, 0
  br i1 %tobool148, label %if.end.174, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.147
  %115 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx150 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %115, i64 1
  %arrayidx151 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx150, i32 0, i64 0
  %arrayidx152 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx151, i32 0, i64 1
  store i32 0, i32* %arrayidx152, align 4, !tbaa !2
  %116 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx153 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %116, i64 1
  %arrayidx154 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx153, i32 0, i64 0
  %arrayidx155 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx154, i32 0, i64 0
  store i32 0, i32* %arrayidx155, align 4, !tbaa !2
  %117 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx156 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %117, i64 0
  %arrayidx157 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx156, i32 0, i64 0
  %arrayidx158 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx157, i32 0, i64 1
  store i32 0, i32* %arrayidx158, align 4, !tbaa !2
  %118 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx159 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %118, i64 0
  %arrayidx160 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx159, i32 0, i64 0
  %arrayidx161 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx160, i32 0, i64 0
  store i32 0, i32* %arrayidx161, align 4, !tbaa !2
  %119 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx162 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %119, i64 1
  %arrayidx163 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx162, i32 0, i64 1
  %arrayidx164 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx163, i32 0, i64 1
  store i32 0, i32* %arrayidx164, align 4, !tbaa !2
  %120 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx165 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %120, i64 1
  %arrayidx166 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx165, i32 0, i64 1
  %arrayidx167 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx166, i32 0, i64 0
  store i32 0, i32* %arrayidx167, align 4, !tbaa !2
  %121 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx168 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %121, i64 0
  %arrayidx169 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx168, i32 0, i64 1
  %arrayidx170 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx169, i32 0, i64 1
  store i32 0, i32* %arrayidx170, align 4, !tbaa !2
  %122 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx171 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %122, i64 0
  %arrayidx172 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx171, i32 0, i64 1
  %arrayidx173 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx172, i32 0, i64 0
  store i32 0, i32* %arrayidx173, align 4, !tbaa !2
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.149, %land.lhs.true.147, %if.end.144
  %123 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp175 = icmp eq i32 %123, 2
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.202

land.lhs.true.177:                                ; preds = %if.end.174
  %124 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %125 = load i32, i32* %124, align 4, !tbaa !2
  %and178 = and i32 %125, 9
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %if.end.202, label %if.then.180

if.then.180:                                      ; preds = %land.lhs.true.177
  %126 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx181 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %126, i64 1
  %arrayidx182 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx181, i32 0, i64 0
  %arrayidx183 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx182, i32 0, i64 1
  store i32 0, i32* %arrayidx183, align 4, !tbaa !2
  %127 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx184 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %127, i64 1
  %arrayidx185 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx184, i32 0, i64 0
  %arrayidx186 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx185, i32 0, i64 0
  store i32 0, i32* %arrayidx186, align 4, !tbaa !2
  %128 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx187 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %128, i64 0
  %arrayidx188 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx187, i32 0, i64 0
  %arrayidx189 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx188, i32 0, i64 1
  store i32 0, i32* %arrayidx189, align 4, !tbaa !2
  %129 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx190 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %129, i64 0
  %arrayidx191 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx190, i32 0, i64 0
  %arrayidx192 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx191, i32 0, i64 0
  store i32 0, i32* %arrayidx192, align 4, !tbaa !2
  %130 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp193 = icmp eq i32 %130, 3
  br i1 %cmp193, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %if.then.180
  %131 = load i32*, i32** %motion_type.addr, align 8, !tbaa !9
  store i32 2, i32* %131, align 4, !tbaa !2
  br label %if.end.201

if.else.196:                                      ; preds = %if.then.180
  %132 = load i32*, i32** %motion_type.addr, align 8, !tbaa !9
  store i32 1, i32* %132, align 4, !tbaa !2
  %133 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp197 = icmp eq i32 %133, 2
  %conv198 = zext i1 %cmp197 to i32
  %134 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  %arrayidx199 = getelementptr inbounds [2 x i32], [2 x i32]* %134, i64 0
  %arrayidx200 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx199, i32 0, i64 0
  store i32 %conv198, i32* %arrayidx200, align 4, !tbaa !2
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.196, %if.then.195
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %land.lhs.true.177, %if.end.174
  %135 = load i32*, i32** %stwclass.addr, align 8, !tbaa !9
  %136 = load i32, i32* %135, align 4, !tbaa !2
  %cmp203 = icmp eq i32 %136, 4
  br i1 %cmp203, label %if.then.205, label %if.end.230

if.then.205:                                      ; preds = %if.end.202
  %137 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx206 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %137, i64 1
  %arrayidx207 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx206, i32 0, i64 0
  %arrayidx208 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx207, i32 0, i64 1
  store i32 0, i32* %arrayidx208, align 4, !tbaa !2
  %138 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx209 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %138, i64 1
  %arrayidx210 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx209, i32 0, i64 0
  %arrayidx211 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx210, i32 0, i64 0
  store i32 0, i32* %arrayidx211, align 4, !tbaa !2
  %139 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx212 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %139, i64 0
  %arrayidx213 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx212, i32 0, i64 0
  %arrayidx214 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx213, i32 0, i64 1
  store i32 0, i32* %arrayidx214, align 4, !tbaa !2
  %140 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx215 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %140, i64 0
  %arrayidx216 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx215, i32 0, i64 0
  %arrayidx217 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx216, i32 0, i64 0
  store i32 0, i32* %arrayidx217, align 4, !tbaa !2
  %141 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx218 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %141, i64 1
  %arrayidx219 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx218, i32 0, i64 1
  %arrayidx220 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx219, i32 0, i64 1
  store i32 0, i32* %arrayidx220, align 4, !tbaa !2
  %142 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx221 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %142, i64 1
  %arrayidx222 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx221, i32 0, i64 1
  %arrayidx223 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx222, i32 0, i64 0
  store i32 0, i32* %arrayidx223, align 4, !tbaa !2
  %143 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx224 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %143, i64 0
  %arrayidx225 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx224, i32 0, i64 1
  %arrayidx226 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx225, i32 0, i64 1
  store i32 0, i32* %arrayidx226, align 4, !tbaa !2
  %144 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx227 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %144, i64 0
  %arrayidx228 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx227, i32 0, i64 1
  %arrayidx229 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx228, i32 0, i64 0
  store i32 0, i32* %arrayidx229, align 4, !tbaa !2
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.205, %if.end.202
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.230, %if.then.131, %if.then.101, %if.then.57, %if.then.38, %if.then.4
  %145 = bitcast i32* %coded_block_pattern to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #3
  %146 = bitcast i32* %mvscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #3
  %147 = bitcast i32* %dmv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #3
  %148 = bitcast i32* %mv_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #3
  %149 = bitcast i32* %motion_vector_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #3
  %150 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #3
  %151 = bitcast i32* %quantizer_scale_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #3
  %152 = load i32, i32* %retval
  ret i32 %152
}

; Function Attrs: nounwind ssp uwtable
define internal void @skipped_macroblock(i32* %dc_dct_pred, [2 x [2 x i32]]* %PMV, i32* %motion_type, [2 x i32]* %motion_vertical_field_select, i32* %stwtype, i32* %macroblock_type) #0 {
entry:
  %dc_dct_pred.addr = alloca i32*, align 8
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %motion_type.addr = alloca i32*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %stwtype.addr = alloca i32*, align 8
  %macroblock_type.addr = alloca i32*, align 8
  %comp = alloca i32, align 4
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  store i32* %motion_type, i32** %motion_type.addr, align 8, !tbaa !9
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  store i32* %stwtype, i32** %stwtype.addr, align 8, !tbaa !9
  store i32* %macroblock_type, i32** %macroblock_type.addr, align 8, !tbaa !9
  %0 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %comp, align 4, !tbaa !2
  %3 = load i32, i32* @block_count, align 4, !tbaa !2
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Clear_Block(i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %comp, align 4, !tbaa !2
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 2
  store i32 0, i32* %arrayidx, align 4, !tbaa !2
  %7 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 0, i32* %arrayidx2, align 4, !tbaa !2
  %8 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 0, i32* %arrayidx3, align 4, !tbaa !2
  %9 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %for.end
  %10 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %10, i64 1
  %arrayidx7 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx7, i32 0, i64 1
  store i32 0, i32* %arrayidx8, align 4, !tbaa !2
  %11 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %11, i64 1
  %arrayidx10 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx9, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  store i32 0, i32* %arrayidx11, align 4, !tbaa !2
  %12 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %12, i64 0
  %arrayidx13 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 1
  store i32 0, i32* %arrayidx14, align 4, !tbaa !2
  %13 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0
  %arrayidx16 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx15, i32 0, i64 0
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 0
  store i32 0, i32* %arrayidx17, align 4, !tbaa !2
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.5, %for.end
  %14 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp19 = icmp eq i32 %14, 3
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %15 = load i32*, i32** %motion_type.addr, align 8, !tbaa !9
  store i32 2, i32* %15, align 4, !tbaa !2
  br label %if.end.26

if.else:                                          ; preds = %if.end.18
  %16 = load i32*, i32** %motion_type.addr, align 8, !tbaa !9
  store i32 1, i32* %16, align 4, !tbaa !2
  %17 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp21 = icmp eq i32 %17, 2
  %conv = zext i1 %cmp21 to i32
  %18 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  %arrayidx22 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx22, i32 0, i64 1
  store i32 %conv, i32* %arrayidx23, align 4, !tbaa !2
  %19 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  %arrayidx24 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx24, i32 0, i64 0
  store i32 %conv, i32* %arrayidx25, align 4, !tbaa !2
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.20
  %20 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp27 = icmp eq i32 %20, 1
  %cond = select i1 %cmp27, i32 8, i32 0
  %21 = load i32*, i32** %stwtype.addr, align 8, !tbaa !9
  store i32 %cond, i32* %21, align 4, !tbaa !2
  %22 = load i32*, i32** %macroblock_type.addr, align 8, !tbaa !9
  %23 = load i32, i32* %22, align 4, !tbaa !2
  %and = and i32 %23, -2
  store i32 %and, i32* %22, align 4, !tbaa !2
  %24 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Decode_SNR_Macroblock(i32* %SNRMBA, i32* %SNRMBAinc, i32 %MBA, i32 %MBAmax, i32* %dct_type) #0 {
entry:
  %SNRMBA.addr = alloca i32*, align 8
  %SNRMBAinc.addr = alloca i32*, align 8
  %MBA.addr = alloca i32, align 4
  %MBAmax.addr = alloca i32, align 4
  %dct_type.addr = alloca i32*, align 8
  %SNRmacroblock_type = alloca i32, align 4
  %SNRcoded_block_pattern = alloca i32, align 4
  %SNRdct_type = alloca i32, align 4
  %dummy = alloca i32, align 4
  %slice_vert_pos_ext = alloca i32, align 4
  %quantizer_scale_code = alloca i32, align 4
  %comp = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %SNRMBA, i32** %SNRMBA.addr, align 8, !tbaa !9
  store i32* %SNRMBAinc, i32** %SNRMBAinc.addr, align 8, !tbaa !9
  store i32 %MBA, i32* %MBA.addr, align 4, !tbaa !2
  store i32 %MBAmax, i32* %MBAmax.addr, align 4, !tbaa !2
  store i32* %dct_type, i32** %dct_type.addr, align 8, !tbaa !9
  %0 = bitcast i32* %SNRmacroblock_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %SNRcoded_block_pattern to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %SNRdct_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %slice_vert_pos_ext to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %quantizer_scale_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !9
  %8 = load i32*, i32** %SNRMBAinc.addr, align 8, !tbaa !9
  %9 = load i32, i32* %8, align 4, !tbaa !2
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %call = call i32 @Show_Bits(i32 23)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then.1

if.then.1:                                        ; preds = %if.then
  call void @next_start_code()
  %call2 = call i32 @Show_Bits(i32 32)
  store i32 %call2, i32* %code, align 4, !tbaa !2
  %10 = load i32, i32* %code, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %10, 257
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.1
  %11 = load i32, i32* %code, align 4, !tbaa !2
  %cmp4 = icmp sgt i32 %11, 431
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %lor.lhs.false, %if.then.1
  %12 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then.5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  call void @Flush_Buffer32()
  %call10 = call i32 @slice_header()
  store i32 %call10, i32* %slice_vert_pos_ext, align 4, !tbaa !2
  %call11 = call i32 @Get_macroblock_address_increment()
  %13 = load i32*, i32** %SNRMBAinc.addr, align 8, !tbaa !9
  store i32 %call11, i32* %13, align 4, !tbaa !2
  %14 = load i32, i32* %slice_vert_pos_ext, align 4, !tbaa !2
  %shl = shl i32 %14, 7
  %15 = load i32, i32* %code, align 4, !tbaa !2
  %and = and i32 %15, 255
  %add = add nsw i32 %shl, %and
  %sub = sub nsw i32 %add, 1
  %16 = load i32, i32* @mb_width, align 4, !tbaa !2
  %mul = mul nsw i32 %sub, %16
  %17 = load i32*, i32** %SNRMBAinc.addr, align 8, !tbaa !9
  %18 = load i32, i32* %17, align 4, !tbaa !2
  %add12 = add nsw i32 %mul, %18
  %sub13 = sub nsw i32 %add12, 1
  %19 = load i32*, i32** %SNRMBA.addr, align 8, !tbaa !9
  store i32 %sub13, i32* %19, align 4, !tbaa !2
  %20 = load i32*, i32** %SNRMBAinc.addr, align 8, !tbaa !9
  store i32 1, i32* %20, align 4, !tbaa !2
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %21 = load i32*, i32** %SNRMBA.addr, align 8, !tbaa !9
  %22 = load i32, i32* %21, align 4, !tbaa !2
  %23 = load i32, i32* %MBAmax.addr, align 4, !tbaa !2
  %cmp14 = icmp sge i32 %22, %23
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.else
  %24 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %if.then.15
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.15
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.else
  %call21 = call i32 @Get_macroblock_address_increment()
  %25 = load i32*, i32** %SNRMBAinc.addr, align 8, !tbaa !9
  store i32 %call21, i32* %25, align 4, !tbaa !2
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %if.end.9
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %26 = load i32*, i32** %SNRMBA.addr, align 8, !tbaa !9
  %27 = load i32, i32* %26, align 4, !tbaa !2
  %28 = load i32, i32* %MBA.addr, align 4, !tbaa !2
  %cmp24 = icmp ne i32 %27, %28
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.23
  %29 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.end.29, label %if.then.27

if.then.27:                                       ; preds = %if.then.25
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.25
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.23
  %30 = load i32*, i32** %SNRMBAinc.addr, align 8, !tbaa !9
  %31 = load i32, i32* %30, align 4, !tbaa !2
  %cmp31 = icmp eq i32 %31, 1
  br i1 %cmp31, label %if.then.32, label %if.else.73

if.then.32:                                       ; preds = %if.end.30
  call void @macroblock_modes(i32* %SNRmacroblock_type, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %dummy, i32* %SNRdct_type)
  %32 = load i32, i32* %SNRmacroblock_type, align 4, !tbaa !2
  %and33 = and i32 %32, 2
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %33 = load i32, i32* %SNRdct_type, align 4, !tbaa !2
  %34 = load i32*, i32** %dct_type.addr, align 8, !tbaa !9
  store i32 %33, i32* %34, align 4, !tbaa !2
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.32
  %35 = load i32, i32* %SNRmacroblock_type, align 4, !tbaa !2
  %and37 = and i32 %35, 16
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.36
  %call40 = call i32 @Get_Bits(i32 5)
  store i32 %call40, i32* %quantizer_scale_code, align 4, !tbaa !2
  %36 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %q_scale_type = getelementptr inbounds %struct.layer_data, %struct.layer_data* %36, i32 0, i32 18
  %37 = load i32, i32* %q_scale_type, align 4, !tbaa !13
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.39
  %38 = load i32, i32* %quantizer_scale_code, align 4, !tbaa !2
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* @Non_Linear_quantizer_scale, i32 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %conv = zext i8 %39 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.39
  %40 = load i32, i32* %quantizer_scale_code, align 4, !tbaa !2
  %shl42 = shl i32 %40, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %shl42, %cond.false ]
  %41 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %41, i32 0, i32 22
  store i32 %cond, i32* %quantizer_scale, align 4, !tbaa !15
  br label %if.end.43

if.end.43:                                        ; preds = %cond.end, %if.end.36
  %42 = load i32, i32* %SNRmacroblock_type, align 4, !tbaa !2
  %and44 = and i32 %42, 2
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.62

if.then.46:                                       ; preds = %if.end.43
  %call47 = call i32 @Get_coded_block_pattern()
  store i32 %call47, i32* %SNRcoded_block_pattern, align 4, !tbaa !2
  %43 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp48 = icmp eq i32 %43, 2
  br i1 %cmp48, label %if.then.50, label %if.else.53

if.then.50:                                       ; preds = %if.then.46
  %44 = load i32, i32* %SNRcoded_block_pattern, align 4, !tbaa !2
  %shl51 = shl i32 %44, 2
  %call52 = call i32 @Get_Bits(i32 2)
  %or = or i32 %shl51, %call52
  store i32 %or, i32* %SNRcoded_block_pattern, align 4, !tbaa !2
  br label %if.end.61

if.else.53:                                       ; preds = %if.then.46
  %45 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp54 = icmp eq i32 %45, 3
  br i1 %cmp54, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.else.53
  %46 = load i32, i32* %SNRcoded_block_pattern, align 4, !tbaa !2
  %shl57 = shl i32 %46, 6
  %call58 = call i32 @Get_Bits(i32 6)
  %or59 = or i32 %shl57, %call58
  store i32 %or59, i32* %SNRcoded_block_pattern, align 4, !tbaa !2
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.else.53
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.50
  br label %if.end.63

if.else.62:                                       ; preds = %if.end.43
  store i32 0, i32* %SNRcoded_block_pattern, align 4, !tbaa !2
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.62, %if.end.61
  store i32 0, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %47 = load i32, i32* %comp, align 4, !tbaa !2
  %48 = load i32, i32* @block_count, align 4, !tbaa !2
  %cmp64 = icmp slt i32 %47, %48
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Clear_Block(i32 %49)
  %50 = load i32, i32* %SNRcoded_block_pattern, align 4, !tbaa !2
  %51 = load i32, i32* @block_count, align 4, !tbaa !2
  %sub66 = sub nsw i32 %51, 1
  %52 = load i32, i32* %comp, align 4, !tbaa !2
  %sub67 = sub nsw i32 %sub66, %52
  %shl68 = shl i32 1, %sub67
  %and69 = and i32 %50, %shl68
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body
  %53 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Decode_MPEG2_Non_Intra_Block(i32 %53)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %54 = load i32, i32* %comp, align 4, !tbaa !2
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.81

if.else.73:                                       ; preds = %if.end.30
  store i32 0, i32* %comp, align 4, !tbaa !2
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.78, %if.else.73
  %55 = load i32, i32* %comp, align 4, !tbaa !2
  %56 = load i32, i32* @block_count, align 4, !tbaa !2
  %cmp75 = icmp slt i32 %55, %56
  br i1 %cmp75, label %for.body.77, label %for.end.80

for.body.77:                                      ; preds = %for.cond.74
  %57 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Clear_Block(i32 %57)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.77
  %58 = load i32, i32* %comp, align 4, !tbaa !2
  %inc79 = add nsw i32 %58, 1
  store i32 %inc79, i32* %comp, align 4, !tbaa !2
  br label %for.cond.74

for.end.80:                                       ; preds = %for.cond.74
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.80, %for.end
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.81, %if.end.29, %if.end.19, %if.end
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #3
  %60 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  %61 = bitcast i32* %quantizer_scale_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #3
  %62 = bitcast i32* %slice_vert_pos_ext to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = bitcast i32* %dummy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  %64 = bitcast i32* %SNRdct_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #3
  %65 = bitcast i32* %SNRcoded_block_pattern to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #3
  %66 = bitcast i32* %SNRmacroblock_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #3
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
define internal void @motion_compensation(i32 %MBA, i32 %macroblock_type, i32 %motion_type, [2 x [2 x i32]]* %PMV, [2 x i32]* %motion_vertical_field_select, i32* %dmvector, i32 %stwtype, i32 %dct_type) #0 {
entry:
  %MBA.addr = alloca i32, align 4
  %macroblock_type.addr = alloca i32, align 4
  %motion_type.addr = alloca i32, align 4
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %stwtype.addr = alloca i32, align 4
  %dct_type.addr = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %comp = alloca i32, align 4
  store i32 %MBA, i32* %MBA.addr, align 4, !tbaa !2
  store i32 %macroblock_type, i32* %macroblock_type.addr, align 4, !tbaa !2
  store i32 %motion_type, i32* %motion_type.addr, align 4, !tbaa !2
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  store i32* %dmvector, i32** %dmvector.addr, align 8, !tbaa !9
  store i32 %stwtype, i32* %stwtype.addr, align 4, !tbaa !2
  store i32 %dct_type, i32* %dct_type.addr, align 4, !tbaa !2
  %0 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %by to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load i32, i32* %MBA.addr, align 4, !tbaa !2
  %4 = load i32, i32* @mb_width, align 4, !tbaa !2
  %rem = srem i32 %3, %4
  %mul = mul nsw i32 16, %rem
  store i32 %mul, i32* %bx, align 4, !tbaa !2
  %5 = load i32, i32* %MBA.addr, align 4, !tbaa !2
  %6 = load i32, i32* @mb_width, align 4, !tbaa !2
  %div = sdiv i32 %5, %6
  %mul1 = mul nsw i32 16, %div
  store i32 %mul1, i32* %by, align 4, !tbaa !2
  %7 = load i32, i32* %macroblock_type.addr, align 4, !tbaa !2
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %bx, align 4, !tbaa !2
  %9 = load i32, i32* %by, align 4, !tbaa !2
  %10 = load i32, i32* %macroblock_type.addr, align 4, !tbaa !2
  %11 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %12 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !9
  %13 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !9
  %14 = load i32*, i32** %dmvector.addr, align 8, !tbaa !9
  %15 = load i32, i32* %stwtype.addr, align 4, !tbaa !2
  call void @form_predictions(i32 %8, i32 %9, i32 %10, i32 %11, [2 x [2 x i32]]* %12, [2 x i32]* %13, i32* %14, i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !10
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !9
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %17 = load i32, i32* %comp, align 4, !tbaa !2
  %18 = load i32, i32* @block_count, align 4, !tbaa !2
  %cmp4 = icmp slt i32 %17, %18
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool5 = icmp ne i32 %19, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %20 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4, !tbaa !10
  %cmp6 = icmp eq i32 %20, 3
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %21 = load i32, i32* %comp, align 4, !tbaa !2
  call void @Sum_Block(i32 %21)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true, %for.body
  %22 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool9 = icmp ne i32 %22, 0
  br i1 %tobool9, label %land.lhs.true.10, label %lor.lhs.false

land.lhs.true.10:                                 ; preds = %if.end.8
  %23 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4, !tbaa !10
  %cmp11 = icmp eq i32 %23, 3
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.10, %if.end.8
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %MPEG2_Flag = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 16
  %25 = load i32, i32* %MPEG2_Flag, align 4, !tbaa !12
  %tobool12 = icmp ne i32 %25, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true.10
  %26 = load i32, i32* %comp, align 4, !tbaa !2
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %27, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  call void @Saturate(i16* %arraydecay)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %lor.lhs.false
  %28 = load i32, i32* @Reference_IDCT_Flag, align 4, !tbaa !2
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.14
  %29 = load i32, i32* %comp, align 4, !tbaa !2
  %idxprom17 = sext i32 %29 to i64
  %30 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %block18 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %30, i32 0, i32 24
  %arrayidx19 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block18, i32 0, i64 %idxprom17
  %arraydecay20 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx19, i32 0, i32 0
  call void @Reference_IDCT(i16* %arraydecay20)
  br label %if.end.25

if.else:                                          ; preds = %if.end.14
  %31 = load i32, i32* %comp, align 4, !tbaa !2
  %idxprom21 = sext i32 %31 to i64
  %32 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %block22 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %32, i32 0, i32 24
  %arrayidx23 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block22, i32 0, i64 %idxprom21
  %arraydecay24 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx23, i32 0, i32 0
  call void @Fast_IDCT(i16* %arraydecay24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.16
  %33 = load i32, i32* %comp, align 4, !tbaa !2
  %34 = load i32, i32* %bx, align 4, !tbaa !2
  %35 = load i32, i32* %by, align 4, !tbaa !2
  %36 = load i32, i32* %dct_type.addr, align 4, !tbaa !2
  %37 = load i32, i32* %macroblock_type.addr, align 4, !tbaa !2
  %and26 = and i32 %37, 1
  %cmp27 = icmp eq i32 %and26, 0
  %conv = zext i1 %cmp27 to i32
  call void @Add_Block(i32 %33, i32 %34, i32 %35, i32 %36, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %38 = load i32, i32* %comp, align 4, !tbaa !2
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %comp, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #3
  %40 = bitcast i32* %by to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #3
  %41 = bitcast i32* %bx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #3
  ret void
}

declare void @next_start_code() #1

declare void @Flush_Buffer32() #1

declare i32 @slice_header() #1

; Function Attrs: nounwind ssp uwtable
define internal void @macroblock_modes(i32* %pmacroblock_type, i32* %pstwtype, i32* %pstwclass, i32* %pmotion_type, i32* %pmotion_vector_count, i32* %pmv_format, i32* %pdmv, i32* %pmvscale, i32* %pdct_type) #0 {
entry:
  %pmacroblock_type.addr = alloca i32*, align 8
  %pstwtype.addr = alloca i32*, align 8
  %pstwclass.addr = alloca i32*, align 8
  %pmotion_type.addr = alloca i32*, align 8
  %pmotion_vector_count.addr = alloca i32*, align 8
  %pmv_format.addr = alloca i32*, align 8
  %pdmv.addr = alloca i32*, align 8
  %pmvscale.addr = alloca i32*, align 8
  %pdct_type.addr = alloca i32*, align 8
  %macroblock_type = alloca i32, align 4
  %stwtype = alloca i32, align 4
  %stwcode = alloca i32, align 4
  %stwclass = alloca i32, align 4
  %motion_type = alloca i32, align 4
  %motion_vector_count = alloca i32, align 4
  %mv_format = alloca i32, align 4
  %dmv = alloca i32, align 4
  %mvscale = alloca i32, align 4
  %dct_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %pmacroblock_type, i32** %pmacroblock_type.addr, align 8, !tbaa !9
  store i32* %pstwtype, i32** %pstwtype.addr, align 8, !tbaa !9
  store i32* %pstwclass, i32** %pstwclass.addr, align 8, !tbaa !9
  store i32* %pmotion_type, i32** %pmotion_type.addr, align 8, !tbaa !9
  store i32* %pmotion_vector_count, i32** %pmotion_vector_count.addr, align 8, !tbaa !9
  store i32* %pmv_format, i32** %pmv_format.addr, align 8, !tbaa !9
  store i32* %pdmv, i32** %pdmv.addr, align 8, !tbaa !9
  store i32* %pmvscale, i32** %pmvscale.addr, align 8, !tbaa !9
  store i32* %pdct_type, i32** %pdct_type.addr, align 8, !tbaa !9
  %0 = bitcast i32* %macroblock_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %stwtype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %stwcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %stwclass to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %motion_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  store i32 0, i32* %motion_type, align 4, !tbaa !2
  %5 = bitcast i32* %motion_vector_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %mv_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %dmv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %mvscale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %dct_type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %call = call i32 @Get_macroblock_type()
  store i32 %call, i32* %macroblock_type, align 4, !tbaa !2
  %10 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %macroblock_type, align 4, !tbaa !2
  %and = and i32 %11, 32
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.else.8

if.then.2:                                        ; preds = %if.end
  %12 = load i32, i32* @spatial_temporal_weight_code_table_index, align 4, !tbaa !2
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then.2
  store i32 4, i32* %stwtype, align 4, !tbaa !2
  br label %if.end.7

if.else:                                          ; preds = %if.then.2
  %call4 = call i32 @Get_Bits(i32 2)
  store i32 %call4, i32* %stwcode, align 4, !tbaa !2
  %13 = load i32, i32* %stwcode, align 4, !tbaa !2
  %idxprom = sext i32 %13 to i64
  %14 = load i32, i32* @spatial_temporal_weight_code_table_index, align 4, !tbaa !2
  %sub = sub nsw i32 %14, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x [4 x i8]], [3 x [4 x i8]]* @macroblock_modes.stwc_table, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i32 0, i64 %idxprom
  %15 = load i8, i8* %arrayidx6, align 1, !tbaa !14
  %conv = zext i8 %15 to i32
  store i32 %conv, i32* %stwtype, align 4, !tbaa !2
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.3
  br label %if.end.11

if.else.8:                                        ; preds = %if.end
  %16 = load i32, i32* %macroblock_type, align 4, !tbaa !2
  %and9 = and i32 %16, 64
  %tobool10 = icmp ne i32 %and9, 0
  %cond = select i1 %tobool10, i32 8, i32 0
  store i32 %cond, i32* %stwtype, align 4, !tbaa !2
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.8, %if.end.7
  %17 = load i32, i32* %stwtype, align 4, !tbaa !2
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [9 x i8], [9 x i8]* @macroblock_modes.stwclass_table, i32 0, i64 %idxprom12
  %18 = load i8, i8* %arrayidx13, align 1, !tbaa !14
  %conv14 = zext i8 %18 to i32
  store i32 %conv14, i32* %stwclass, align 4, !tbaa !2
  %19 = load i32, i32* %macroblock_type, align 4, !tbaa !2
  %and15 = and i32 %19, 12
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.else.27

if.then.17:                                       ; preds = %if.end.11
  %20 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp18 = icmp eq i32 %20, 3
  br i1 %cmp18, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %if.then.17
  %21 = load i32, i32* @frame_pred_frame_dct, align 4, !tbaa !2
  %tobool21 = icmp ne i32 %21, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  %call22 = call i32 @Get_Bits(i32 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i32 [ 2, %cond.true ], [ %call22, %cond.false ]
  store i32 %cond23, i32* %motion_type, align 4, !tbaa !2
  br label %if.end.26

if.else.24:                                       ; preds = %if.then.17
  %call25 = call i32 @Get_Bits(i32 2)
  store i32 %call25, i32* %motion_type, align 4, !tbaa !2
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %cond.end
  br label %if.end.36

if.else.27:                                       ; preds = %if.end.11
  %22 = load i32, i32* %macroblock_type, align 4, !tbaa !2
  %and28 = and i32 %22, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.else.27
  %23 = load i32, i32* @concealment_motion_vectors, align 4, !tbaa !2
  %tobool30 = icmp ne i32 %23, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp32 = icmp eq i32 %24, 3
  %cond34 = select i1 %cmp32, i32 2, i32 1
  store i32 %cond34, i32* %motion_type, align 4, !tbaa !2
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %land.lhs.true, %if.else.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.26
  %25 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp37 = icmp eq i32 %25, 3
  br i1 %cmp37, label %if.then.39, label %if.else.48

if.then.39:                                       ; preds = %if.end.36
  %26 = load i32, i32* %motion_type, align 4, !tbaa !2
  %cmp40 = icmp eq i32 %26, 1
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.39
  %27 = load i32, i32* %stwclass, align 4, !tbaa !2
  %cmp42 = icmp slt i32 %27, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.39
  %28 = phi i1 [ false, %if.then.39 ], [ %cmp42, %land.rhs ]
  %cond44 = select i1 %28, i32 2, i32 1
  store i32 %cond44, i32* %motion_vector_count, align 4, !tbaa !2
  %29 = load i32, i32* %motion_type, align 4, !tbaa !2
  %cmp45 = icmp eq i32 %29, 2
  %cond47 = select i1 %cmp45, i32 1, i32 0
  store i32 %cond47, i32* %mv_format, align 4, !tbaa !2
  br label %if.end.52

if.else.48:                                       ; preds = %if.end.36
  %30 = load i32, i32* %motion_type, align 4, !tbaa !2
  %cmp49 = icmp eq i32 %30, 2
  %cond51 = select i1 %cmp49, i32 2, i32 1
  store i32 %cond51, i32* %motion_vector_count, align 4, !tbaa !2
  store i32 0, i32* %mv_format, align 4, !tbaa !2
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.48, %land.end
  %31 = load i32, i32* %motion_type, align 4, !tbaa !2
  %cmp53 = icmp eq i32 %31, 3
  %conv54 = zext i1 %cmp53 to i32
  store i32 %conv54, i32* %dmv, align 4, !tbaa !2
  %32 = load i32, i32* %mv_format, align 4, !tbaa !2
  %cmp55 = icmp eq i32 %32, 0
  br i1 %cmp55, label %land.rhs.57, label %land.end.60

land.rhs.57:                                      ; preds = %if.end.52
  %33 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp58 = icmp eq i32 %33, 3
  br label %land.end.60

land.end.60:                                      ; preds = %land.rhs.57, %if.end.52
  %34 = phi i1 [ false, %if.end.52 ], [ %cmp58, %land.rhs.57 ]
  %land.ext = zext i1 %34 to i32
  store i32 %land.ext, i32* %mvscale, align 4, !tbaa !2
  %35 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp61 = icmp eq i32 %35, 3
  br i1 %cmp61, label %land.lhs.true.63, label %cond.false.70

land.lhs.true.63:                                 ; preds = %land.end.60
  %36 = load i32, i32* @frame_pred_frame_dct, align 4, !tbaa !2
  %tobool64 = icmp ne i32 %36, 0
  br i1 %tobool64, label %cond.false.70, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %land.lhs.true.63
  %37 = load i32, i32* %macroblock_type, align 4, !tbaa !2
  %and66 = and i32 %37, 3
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.70

cond.true.68:                                     ; preds = %land.lhs.true.65
  %call69 = call i32 @Get_Bits(i32 1)
  br label %cond.end.71

cond.false.70:                                    ; preds = %land.lhs.true.65, %land.lhs.true.63, %land.end.60
  br label %cond.end.71

cond.end.71:                                      ; preds = %cond.false.70, %cond.true.68
  %cond72 = phi i32 [ %call69, %cond.true.68 ], [ 0, %cond.false.70 ]
  store i32 %cond72, i32* %dct_type, align 4, !tbaa !2
  %38 = load i32, i32* %macroblock_type, align 4, !tbaa !2
  %39 = load i32*, i32** %pmacroblock_type.addr, align 8, !tbaa !9
  store i32 %38, i32* %39, align 4, !tbaa !2
  %40 = load i32, i32* %stwtype, align 4, !tbaa !2
  %41 = load i32*, i32** %pstwtype.addr, align 8, !tbaa !9
  store i32 %40, i32* %41, align 4, !tbaa !2
  %42 = load i32, i32* %stwclass, align 4, !tbaa !2
  %43 = load i32*, i32** %pstwclass.addr, align 8, !tbaa !9
  store i32 %42, i32* %43, align 4, !tbaa !2
  %44 = load i32, i32* %motion_type, align 4, !tbaa !2
  %45 = load i32*, i32** %pmotion_type.addr, align 8, !tbaa !9
  store i32 %44, i32* %45, align 4, !tbaa !2
  %46 = load i32, i32* %motion_vector_count, align 4, !tbaa !2
  %47 = load i32*, i32** %pmotion_vector_count.addr, align 8, !tbaa !9
  store i32 %46, i32* %47, align 4, !tbaa !2
  %48 = load i32, i32* %mv_format, align 4, !tbaa !2
  %49 = load i32*, i32** %pmv_format.addr, align 8, !tbaa !9
  store i32 %48, i32* %49, align 4, !tbaa !2
  %50 = load i32, i32* %dmv, align 4, !tbaa !2
  %51 = load i32*, i32** %pdmv.addr, align 8, !tbaa !9
  store i32 %50, i32* %51, align 4, !tbaa !2
  %52 = load i32, i32* %mvscale, align 4, !tbaa !2
  %53 = load i32*, i32** %pmvscale.addr, align 8, !tbaa !9
  store i32 %52, i32* %53, align 4, !tbaa !2
  %54 = load i32, i32* %dct_type, align 4, !tbaa !2
  %55 = load i32*, i32** %pdct_type.addr, align 8, !tbaa !9
  store i32 %54, i32* %55, align 4, !tbaa !2
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.71, %if.then
  %56 = bitcast i32* %dct_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #3
  %57 = bitcast i32* %mvscale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #3
  %58 = bitcast i32* %dmv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  %59 = bitcast i32* %mv_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #3
  %60 = bitcast i32* %motion_vector_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #3
  %61 = bitcast i32* %motion_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #3
  %62 = bitcast i32* %stwclass to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #3
  %63 = bitcast i32* %stwcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #3
  %64 = bitcast i32* %stwtype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #3
  %65 = bitcast i32* %macroblock_type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #3
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

declare i32 @Get_Bits(i32) #1

declare void @motion_vectors([2 x [2 x i32]]*, i32*, [2 x i32]*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @motion_vector(i32*, i32*, i32, i32, i32, i32, i32) #1

declare void @Flush_Buffer(i32) #1

declare i32 @Get_coded_block_pattern() #1

; Function Attrs: nounwind ssp uwtable
define internal void @Clear_Block(i32 %comp) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %Block_Ptr = alloca i16*, align 8
  %i = alloca i32, align 4
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !2
  %0 = bitcast i16** %Block_Ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %Block_Ptr, align 8, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16*, i16** %Block_Ptr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr, i16** %Block_Ptr, align 8, !tbaa !9
  store i16 0, i16* %5, align 2, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #3
  %8 = bitcast i16** %Block_Ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #3
  ret void
}

declare void @Decode_MPEG2_Intra_Block(i32, i32*) #1

declare void @Decode_MPEG1_Intra_Block(i32, i32*) #1

declare void @Decode_MPEG2_Non_Intra_Block(i32) #1

declare void @Decode_MPEG1_Non_Intra_Block(i32) #1

declare void @marker_bit(i8*) #1

declare i32 @Get_macroblock_type() #1

declare void @form_predictions(i32, i32, i32, i32, [2 x [2 x i32]]*, [2 x i32]*, i32*, i32) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Sum_Block(i32 %comp) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %Block_Ptr1 = alloca i16*, align 8
  %Block_Ptr2 = alloca i16*, align 8
  %i = alloca i32, align 4
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !2
  %0 = bitcast i16** %Block_Ptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i16** %Block_Ptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 24), i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %Block_Ptr1, align 8, !tbaa !9
  %4 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 24), i32 0, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx2, i32 0, i32 0
  store i16* %arraydecay3, i16** %Block_Ptr2, align 8, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %5, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i16*, i16** %Block_Ptr2, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i16, i16* %6, i32 1
  store i16* %incdec.ptr, i16** %Block_Ptr2, align 8, !tbaa !9
  %7 = load i16, i16* %6, align 2, !tbaa !16
  %conv = sext i16 %7 to i32
  %8 = load i16*, i16** %Block_Ptr1, align 8, !tbaa !9
  %incdec.ptr4 = getelementptr inbounds i16, i16* %8, i32 1
  store i16* %incdec.ptr4, i16** %Block_Ptr1, align 8, !tbaa !9
  %9 = load i16, i16* %8, align 2, !tbaa !16
  %conv5 = sext i16 %9 to i32
  %add = add nsw i32 %conv5, %conv
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, i16* %8, align 2, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #3
  %12 = bitcast i16** %Block_Ptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #3
  %13 = bitcast i16** %Block_Ptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @Saturate(i16* %Block_Ptr) #0 {
entry:
  %Block_Ptr.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %val = alloca i32, align 4
  store i16* %Block_Ptr, i16** %Block_Ptr.addr, align 8, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  store i32 0, i32* %sum, align 4, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** %Block_Ptr.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !16
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %val, align 4, !tbaa !2
  %7 = load i32, i32* %val, align 4, !tbaa !2
  %cmp1 = icmp sgt i32 %7, 2047
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 2047, i32* %val, align 4, !tbaa !2
  br label %if.end.6

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %val, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %8, -2048
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 -2048, i32* %val, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %9 = load i32, i32* %val, align 4, !tbaa !2
  %conv7 = trunc i32 %9 to i16
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom8 = sext i32 %10 to i64
  %11 = load i16*, i16** %Block_Ptr.addr, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds i16, i16* %11, i64 %idxprom8
  store i16 %conv7, i16* %arrayidx9, align 2, !tbaa !16
  %12 = load i32, i32* %val, align 4, !tbaa !2
  %13 = load i32, i32* %sum, align 4, !tbaa !2
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %sum, align 4, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %sum, align 4, !tbaa !2
  %and = and i32 %15, 1
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %for.end
  %16 = load i16*, i16** %Block_Ptr.addr, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds i16, i16* %16, i64 63
  %17 = load i16, i16* %arrayidx13, align 2, !tbaa !16
  %conv14 = sext i16 %17 to i32
  %xor = xor i32 %conv14, 1
  %conv15 = trunc i32 %xor to i16
  store i16 %conv15, i16* %arrayidx13, align 2, !tbaa !16
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %for.end
  %18 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #3
  %19 = bitcast i32* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #3
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #3
  ret void
}

declare void @Reference_IDCT(i16*) #1

declare void @Fast_IDCT(i16*) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Add_Block(i32 %comp, i32 %bx, i32 %by, i32 %dct_type, i32 %addflag) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %dct_type.addr = alloca i32, align 4
  %addflag.addr = alloca i32, align 4
  %cc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iincr = alloca i32, align 4
  %rfp = alloca i8*, align 8
  %bp = alloca i16*, align 8
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !2
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !2
  store i32 %by, i32* %by.addr, align 4, !tbaa !2
  store i32 %dct_type, i32* %dct_type.addr, align 4, !tbaa !2
  store i32 %addflag, i32* %addflag.addr, align 4, !tbaa !2
  %0 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %iincr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i8** %rfp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %6, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and = and i32 %7, 1
  %add = add nsw i32 %and, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, i32* %cc, align 4, !tbaa !2
  %8 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.else.43

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %9, 3
  br i1 %cmp2, label %if.then.3, label %if.else.26

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %dct_type.addr, align 4, !tbaa !2
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.3
  %11 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 0), align 8, !tbaa !9
  %12 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %13 = load i32, i32* %by.addr, align 4, !tbaa !2
  %14 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and5 = and i32 %14, 2
  %shr = ashr i32 %and5, 1
  %add6 = add nsw i32 %13, %shr
  %mul = mul nsw i32 %12, %add6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %15 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %idx.ext7 = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7
  %16 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and9 = and i32 %16, 1
  %shl = shl i32 %and9, 3
  %idx.ext10 = sext i32 %shl to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr8, i64 %idx.ext10
  store i8* %add.ptr11, i8** %rfp, align 8, !tbaa !9
  %17 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl12 = shl i32 %17, 1
  %sub = sub nsw i32 %shl12, 8
  store i32 %sub, i32* %iincr, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %if.then.3
  %18 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 0), align 8, !tbaa !9
  %19 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %20 = load i32, i32* %by.addr, align 4, !tbaa !2
  %21 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and13 = and i32 %21, 2
  %shl14 = shl i32 %and13, 2
  %add15 = add nsw i32 %20, %shl14
  %mul16 = mul nsw i32 %19, %add15
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %18, i64 %idx.ext17
  %22 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %idx.ext19 = sext i32 %22 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.ext19
  %23 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and21 = and i32 %23, 1
  %shl22 = shl i32 %and21, 3
  %idx.ext23 = sext i32 %shl22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr20, i64 %idx.ext23
  store i8* %add.ptr24, i8** %rfp, align 8, !tbaa !9
  %24 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %sub25 = sub nsw i32 %24, 8
  store i32 %sub25, i32* %iincr, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.42

if.else.26:                                       ; preds = %if.then
  %25 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 0), align 8, !tbaa !9
  %26 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl27 = shl i32 %26, 1
  %27 = load i32, i32* %by.addr, align 4, !tbaa !2
  %28 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and28 = and i32 %28, 2
  %shl29 = shl i32 %and28, 2
  %add30 = add nsw i32 %27, %shl29
  %mul31 = mul nsw i32 %shl27, %add30
  %idx.ext32 = sext i32 %mul31 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %25, i64 %idx.ext32
  %29 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %idx.ext34 = sext i32 %29 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr33, i64 %idx.ext34
  %30 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and36 = and i32 %30, 1
  %shl37 = shl i32 %and36, 3
  %idx.ext38 = sext i32 %shl37 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %add.ptr35, i64 %idx.ext38
  store i8* %add.ptr39, i8** %rfp, align 8, !tbaa !9
  %31 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl40 = shl i32 %31, 1
  %sub41 = sub nsw i32 %shl40, 8
  store i32 %sub41, i32* %iincr, align 4, !tbaa !2
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.26, %if.end
  br label %if.end.104

if.else.43:                                       ; preds = %cond.end
  %32 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp44 = icmp ne i32 %32, 3
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.else.43
  %33 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %shr46 = ashr i32 %33, 1
  store i32 %shr46, i32* %bx.addr, align 4, !tbaa !2
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.else.43
  %34 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp48 = icmp eq i32 %34, 1
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.47
  %35 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr50 = ashr i32 %35, 1
  store i32 %shr50, i32* %by.addr, align 4, !tbaa !2
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.47
  %36 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp52 = icmp eq i32 %36, 3
  br i1 %cmp52, label %if.then.53, label %if.else.86

if.then.53:                                       ; preds = %if.end.51
  %37 = load i32, i32* %dct_type.addr, align 4, !tbaa !2
  %tobool54 = icmp ne i32 %37, 0
  br i1 %tobool54, label %land.lhs.true, label %if.else.70

land.lhs.true:                                    ; preds = %if.then.53
  %38 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp55 = icmp ne i32 %38, 1
  br i1 %cmp55, label %if.then.56, label %if.else.70

if.then.56:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom
  %40 = load i8*, i8** %arrayidx, align 8, !tbaa !9
  %41 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %42 = load i32, i32* %by.addr, align 4, !tbaa !2
  %43 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and57 = and i32 %43, 2
  %shr58 = ashr i32 %and57, 1
  %add59 = add nsw i32 %42, %shr58
  %mul60 = mul nsw i32 %41, %add59
  %idx.ext61 = sext i32 %mul60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %40, i64 %idx.ext61
  %44 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %idx.ext63 = sext i32 %44 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %add.ptr62, i64 %idx.ext63
  %45 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and65 = and i32 %45, 8
  %idx.ext66 = sext i32 %and65 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr64, i64 %idx.ext66
  store i8* %add.ptr67, i8** %rfp, align 8, !tbaa !9
  %46 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %shl68 = shl i32 %46, 1
  %sub69 = sub nsw i32 %shl68, 8
  store i32 %sub69, i32* %iincr, align 4, !tbaa !2
  br label %if.end.85

if.else.70:                                       ; preds = %land.lhs.true, %if.then.53
  %47 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom71 = sext i32 %47 to i64
  %arrayidx72 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom71
  %48 = load i8*, i8** %arrayidx72, align 8, !tbaa !9
  %49 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %50 = load i32, i32* %by.addr, align 4, !tbaa !2
  %51 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and73 = and i32 %51, 2
  %shl74 = shl i32 %and73, 2
  %add75 = add nsw i32 %50, %shl74
  %mul76 = mul nsw i32 %49, %add75
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %48, i64 %idx.ext77
  %52 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %idx.ext79 = sext i32 %52 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr78, i64 %idx.ext79
  %53 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and81 = and i32 %53, 8
  %idx.ext82 = sext i32 %and81 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr80, i64 %idx.ext82
  store i8* %add.ptr83, i8** %rfp, align 8, !tbaa !9
  %54 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %sub84 = sub nsw i32 %54, 8
  store i32 %sub84, i32* %iincr, align 4, !tbaa !2
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.70, %if.then.56
  br label %if.end.103

if.else.86:                                       ; preds = %if.end.51
  %55 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom87 = sext i32 %55 to i64
  %arrayidx88 = getelementptr inbounds [3 x i8*], [3 x i8*]* @current_frame, i32 0, i64 %idxprom87
  %56 = load i8*, i8** %arrayidx88, align 8, !tbaa !9
  %57 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %shl89 = shl i32 %57, 1
  %58 = load i32, i32* %by.addr, align 4, !tbaa !2
  %59 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and90 = and i32 %59, 2
  %shl91 = shl i32 %and90, 2
  %add92 = add nsw i32 %58, %shl91
  %mul93 = mul nsw i32 %shl89, %add92
  %idx.ext94 = sext i32 %mul93 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %56, i64 %idx.ext94
  %60 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %idx.ext96 = sext i32 %60 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %add.ptr95, i64 %idx.ext96
  %61 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and98 = and i32 %61, 8
  %idx.ext99 = sext i32 %and98 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr97, i64 %idx.ext99
  store i8* %add.ptr100, i8** %rfp, align 8, !tbaa !9
  %62 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %shl101 = shl i32 %62, 1
  %sub102 = sub nsw i32 %shl101, 8
  store i32 %sub102, i32* %iincr, align 4, !tbaa !2
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.86, %if.end.85
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.42
  %63 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom105 = sext i32 %63 to i64
  %64 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !9
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %64, i32 0, i32 24
  %arrayidx106 = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom105
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx106, i32 0, i32 0
  store i16* %arraydecay, i16** %bp, align 8, !tbaa !9
  %65 = load i32, i32* %addflag.addr, align 4, !tbaa !2
  %tobool107 = icmp ne i32 %65, 0
  br i1 %tobool107, label %if.then.108, label %if.else.123

if.then.108:                                      ; preds = %if.end.104
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.120, %if.then.108
  %66 = load i32, i32* %i, align 4, !tbaa !2
  %cmp109 = icmp slt i32 %66, 8
  br i1 %cmp109, label %for.body, label %for.end.122

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc, %for.body
  %67 = load i32, i32* %j, align 4, !tbaa !2
  %cmp111 = icmp slt i32 %67, 8
  br i1 %cmp111, label %for.body.112, label %for.end

for.body.112:                                     ; preds = %for.cond.110
  %68 = load i16*, i16** %bp, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %incdec.ptr, i16** %bp, align 8, !tbaa !9
  %69 = load i16, i16* %68, align 2, !tbaa !16
  %conv = sext i16 %69 to i32
  %70 = load i8*, i8** %rfp, align 8, !tbaa !9
  %71 = load i8, i8* %70, align 1, !tbaa !14
  %conv113 = zext i8 %71 to i32
  %add114 = add nsw i32 %conv, %conv113
  %idxprom115 = sext i32 %add114 to i64
  %72 = load i8*, i8** @Clip, align 8, !tbaa !9
  %arrayidx116 = getelementptr inbounds i8, i8* %72, i64 %idxprom115
  %73 = load i8, i8* %arrayidx116, align 1, !tbaa !14
  %74 = load i8*, i8** %rfp, align 8, !tbaa !9
  store i8 %73, i8* %74, align 1, !tbaa !14
  %75 = load i8*, i8** %rfp, align 8, !tbaa !9
  %incdec.ptr117 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr117, i8** %rfp, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body.112
  %76 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond.110

for.end:                                          ; preds = %for.cond.110
  %77 = load i32, i32* %iincr, align 4, !tbaa !2
  %78 = load i8*, i8** %rfp, align 8, !tbaa !9
  %idx.ext118 = sext i32 %77 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %78, i64 %idx.ext118
  store i8* %add.ptr119, i8** %rfp, align 8, !tbaa !9
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end
  %79 = load i32, i32* %i, align 4, !tbaa !2
  %inc121 = add nsw i32 %79, 1
  store i32 %inc121, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end.122:                                      ; preds = %for.cond
  br label %if.end.146

if.else.123:                                      ; preds = %if.end.104
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.143, %if.else.123
  %80 = load i32, i32* %i, align 4, !tbaa !2
  %cmp125 = icmp slt i32 %80, 8
  br i1 %cmp125, label %for.body.127, label %for.end.145

for.body.127:                                     ; preds = %for.cond.124
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.138, %for.body.127
  %81 = load i32, i32* %j, align 4, !tbaa !2
  %cmp129 = icmp slt i32 %81, 8
  br i1 %cmp129, label %for.body.131, label %for.end.140

for.body.131:                                     ; preds = %for.cond.128
  %82 = load i16*, i16** %bp, align 8, !tbaa !9
  %incdec.ptr132 = getelementptr inbounds i16, i16* %82, i32 1
  store i16* %incdec.ptr132, i16** %bp, align 8, !tbaa !9
  %83 = load i16, i16* %82, align 2, !tbaa !16
  %conv133 = sext i16 %83 to i32
  %add134 = add nsw i32 %conv133, 128
  %idxprom135 = sext i32 %add134 to i64
  %84 = load i8*, i8** @Clip, align 8, !tbaa !9
  %arrayidx136 = getelementptr inbounds i8, i8* %84, i64 %idxprom135
  %85 = load i8, i8* %arrayidx136, align 1, !tbaa !14
  %86 = load i8*, i8** %rfp, align 8, !tbaa !9
  %incdec.ptr137 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr137, i8** %rfp, align 8, !tbaa !9
  store i8 %85, i8* %86, align 1, !tbaa !14
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.body.131
  %87 = load i32, i32* %j, align 4, !tbaa !2
  %inc139 = add nsw i32 %87, 1
  store i32 %inc139, i32* %j, align 4, !tbaa !2
  br label %for.cond.128

for.end.140:                                      ; preds = %for.cond.128
  %88 = load i32, i32* %iincr, align 4, !tbaa !2
  %89 = load i8*, i8** %rfp, align 8, !tbaa !9
  %idx.ext141 = sext i32 %88 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %89, i64 %idx.ext141
  store i8* %add.ptr142, i8** %rfp, align 8, !tbaa !9
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.140
  %90 = load i32, i32* %i, align 4, !tbaa !2
  %inc144 = add nsw i32 %90, 1
  store i32 %inc144, i32* %i, align 4, !tbaa !2
  br label %for.cond.124

for.end.145:                                      ; preds = %for.cond.124
  br label %if.end.146

if.end.146:                                       ; preds = %for.end.145, %for.end.122
  %91 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #3
  %92 = bitcast i8** %rfp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  %93 = bitcast i32* %iincr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #3
  %94 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #3
  %95 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #3
  %96 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #3
  ret void
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind argmemonly }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 3160}
!7 = !{!"layer_data", !3, i64 0, !4, i64 4, !8, i64 2056, !4, i64 2064, !3, i64 2080, !8, i64 2088, !3, i64 2096, !3, i64 2100, !4, i64 2104, !4, i64 2360, !4, i64 2616, !4, i64 2872, !3, i64 3128, !3, i64 3132, !3, i64 3136, !3, i64 3140, !3, i64 3144, !3, i64 3148, !3, i64 3152, !3, i64 3156, !3, i64 3160, !3, i64 3164, !3, i64 3168, !3, i64 3172, !4, i64 3176}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!7, !3, i64 3148}
!11 = !{!7, !3, i64 3164}
!12 = !{!7, !3, i64 3144}
!13 = !{!7, !3, i64 3152}
!14 = !{!4, !4, i64 0}
!15 = !{!7, !3, i64 3168}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !4, i64 0}
