; ModuleID = 'subspic.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@Substitute_Frame_Buffer.previous_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_bitstream_framenum = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_temporal_reference = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_anchor_bitstream_framenum = internal global i32 0, align 4
@Substitute_Frame_Buffer.previous_picture_coding_type = internal global i32 0, align 4
@Substitute_Frame_Buffer.bgate = internal global i32 0, align 4
@Second_Field = external global i32, align 4
@picture_structure = external global i32, align 4
@picture_coding_type = external global i32, align 4
@Substitute_Picture_Filename = external global i8*, align 8
@forward_reference_frame = external global [3 x i8*], align 16
@temporal_reference = external global i32, align 4
@backward_reference_frame = external global [3 x i8*], align 16
@current_frame = external global [3 x i8*], align 16
@.str = private unnamed_addr constant [40 x i8] c"ERROR: framenum (%d) is less than zero\0A\00", align 1
@Big_Picture_Flag = external global i32, align 4
@substitute_frame = external global [3 x i8*], align 16
@.str.1 = private unnamed_addr constant [32 x i8] c"was unable to substitute frame\0A\00", align 1
@Coded_Picture_Width = external global i32, align 4
@Coded_Picture_Height = external global i32, align 4
@Chroma_Width = external global i32, align 4
@Chroma_Height = external global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@Error_Text = external global [256 x i8], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@chroma_format = external global i32, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"ERROR: chroma_format (%d) not recognized\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s.Y\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s.U\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s.V\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"ERROR: unable to open reference filename (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"was able to read only %d bytes of %d of file %s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @Substitute_Frame_Buffer(i32 %bitstream_framenum, i32 %sequence_framenum) #0 {
entry:
  %bitstream_framenum.addr = alloca i32, align 4
  %sequence_framenum.addr = alloca i32, align 4
  %substitute_display_framenum = alloca i32, align 4
  store i32 %bitstream_framenum, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  store i32 %sequence_framenum, i32* %sequence_framenum.addr, align 4, !tbaa !2
  %0 = bitcast i32* %substitute_display_framenum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %sequence_framenum.addr, align 4, !tbaa !2
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %3, 3
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %if.then
  %4 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.else.13, label %if.then.4

if.then.4:                                        ; preds = %lor.lhs.false.2, %if.then
  %5 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  %6 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %substitute_display_framenum, align 4, !tbaa !2
  %7 = load i8*, i8** @Substitute_Picture_Filename, align 8, !tbaa !6
  %8 = load i32, i32* %substitute_display_framenum, align 4, !tbaa !2
  call void @Read_Frame(i8* %7, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %8)
  br label %if.end.12

if.else:                                          ; preds = %if.then.4
  %9 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp7 = icmp eq i32 %9, 3
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %10 = load i32, i32* @Substitute_Frame_Buffer.bgate, align 4, !tbaa !2
  %cmp8 = icmp ne i32 %10, 1
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4, !tbaa !2
  %12 = load i32, i32* @temporal_reference, align 4, !tbaa !2
  %sub10 = sub nsw i32 %11, %12
  %13 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  %add = add nsw i32 %sub10, %13
  %sub11 = sub nsw i32 %add, 1
  store i32 %sub11, i32* %substitute_display_framenum, align 4, !tbaa !2
  %14 = load i8*, i8** @Substitute_Picture_Filename, align 8, !tbaa !6
  %15 = load i32, i32* %substitute_display_framenum, align 4, !tbaa !2
  call void @Read_Frame(i8* %14, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %15)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  br label %if.end.28

if.else.13:                                       ; preds = %lor.lhs.false.2
  %16 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.27

land.lhs.true.15:                                 ; preds = %if.else.13
  %17 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp16 = icmp eq i32 %17, 2
  br i1 %cmp16, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %land.lhs.true.15
  %18 = load i32, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4, !tbaa !2
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.22

land.lhs.true.19:                                 ; preds = %if.then.17
  %19 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp20 = icmp eq i32 %19, 2
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %land.lhs.true.19
  %20 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  store i32 %20, i32* %substitute_display_framenum, align 4, !tbaa !2
  br label %if.end.26

if.else.22:                                       ; preds = %land.lhs.true.19, %if.then.17
  %21 = load i32, i32* @temporal_reference, align 4, !tbaa !2
  %22 = load i32, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4, !tbaa !2
  %sub23 = sub nsw i32 %21, %22
  %23 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  %add24 = add nsw i32 %sub23, %23
  %sub25 = sub nsw i32 %add24, 1
  store i32 %sub25, i32* %substitute_display_framenum, align 4, !tbaa !2
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.21
  %24 = load i8*, i8** @Substitute_Picture_Filename, align 8, !tbaa !6
  %25 = load i32, i32* %substitute_display_framenum, align 4, !tbaa !2
  call void @Read_Frame(i8* %24, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 %25)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true.15, %if.else.13
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.12
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %lor.lhs.false
  %26 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp30 = icmp eq i32 %26, 3
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.end.29
  store i32 1, i32* @Substitute_Frame_Buffer.bgate, align 4, !tbaa !2
  br label %if.end.33

if.else.32:                                       ; preds = %if.end.29
  store i32 0, i32* @Substitute_Frame_Buffer.bgate, align 4, !tbaa !2
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.32, %if.then.31
  %27 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp34 = icmp eq i32 %27, 3
  br i1 %cmp34, label %if.then.37, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.33
  %28 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool36 = icmp ne i32 %28, 0
  br i1 %tobool36, label %if.end.38, label %if.then.37

if.then.37:                                       ; preds = %lor.lhs.false.35, %if.end.33
  %29 = load i32, i32* @temporal_reference, align 4, !tbaa !2
  store i32 %29, i32* @Substitute_Frame_Buffer.previous_temporal_reference, align 4, !tbaa !2
  %30 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  store i32 %30, i32* @Substitute_Frame_Buffer.previous_bitstream_framenum, align 4, !tbaa !2
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %lor.lhs.false.35
  %31 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp39 = icmp ne i32 %31, 3
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.45

land.lhs.true.40:                                 ; preds = %if.end.38
  %32 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp41 = icmp eq i32 %32, 3
  br i1 %cmp41, label %if.then.44, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.40
  %33 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool43 = icmp ne i32 %33, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.42, %land.lhs.true.40
  %34 = load i32, i32* @temporal_reference, align 4, !tbaa !2
  store i32 %34, i32* @Substitute_Frame_Buffer.previous_anchor_temporal_reference, align 4, !tbaa !2
  %35 = load i32, i32* %bitstream_framenum.addr, align 4, !tbaa !2
  store i32 %35, i32* @Substitute_Frame_Buffer.previous_anchor_bitstream_framenum, align 4, !tbaa !2
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false.42, %if.end.38
  %36 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  store i32 %36, i32* @Substitute_Frame_Buffer.previous_picture_coding_type, align 4, !tbaa !2
  %37 = bitcast i32* %substitute_display_framenum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Read_Frame(i8* %fname, i8** %frame, i32 %framenum) #0 {
entry:
  %fname.addr = alloca i8*, align 8
  %frame.addr = alloca i8**, align 8
  %framenum.addr = alloca i32, align 4
  %parity = alloca i32, align 4
  %rerr = alloca i32, align 4
  %field_mode = alloca i32, align 4
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !6
  store i8** %frame, i8*** %frame.addr, align 8, !tbaa !6
  store i32 %framenum, i32* %framenum.addr, align 4, !tbaa !2
  %0 = bitcast i32* %parity to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %rerr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  store i32 0, i32* %rerr, align 4, !tbaa !2
  %2 = bitcast i32* %field_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load i32, i32* %framenum.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %framenum.addr, align 4, !tbaa !2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @Big_Picture_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %6 = load i8*, i8** %fname.addr, align 8, !tbaa !6
  %7 = load i32, i32* %framenum.addr, align 4, !tbaa !2
  %call2 = call i32 @Extract_Components(i8* %6, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i32 0), i32 %7)
  store i32 %call2, i32* %rerr, align 4, !tbaa !2
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %8 = load i8*, i8** %fname.addr, align 8, !tbaa !6
  %9 = load i32, i32* %framenum.addr, align 4, !tbaa !2
  %call3 = call i32 @Read_Components(i8* %8, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i32 0), i32 %9)
  store i32 %call3, i32* %rerr, align 4, !tbaa !2
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %10 = load i32, i32* %rerr, align 4, !tbaa !2
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %11 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %if.end.8
  %12 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp10 = icmp eq i32 %12, 2
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %land.lhs.true
  %13 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp12 = icmp eq i32 %13, 1
  %cond = select i1 %cmp12, i32 1, i32 0
  store i32 %cond, i32* %parity, align 4, !tbaa !2
  %14 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp13 = icmp eq i32 %14, 3
  %cond14 = select i1 %cmp13, i32 0, i32 1
  store i32 %cond14, i32* %field_mode, align 4, !tbaa !2
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true, %if.end.8
  store i32 0, i32* %parity, align 4, !tbaa !2
  store i32 0, i32* %field_mode, align 4, !tbaa !2
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.11
  %15 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i64 0), align 8, !tbaa !6
  %16 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %18 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %19 = load i32, i32* @Coded_Picture_Height, align 4, !tbaa !2
  %20 = load i32, i32* %parity, align 4, !tbaa !2
  %21 = load i32, i32* %field_mode, align 4, !tbaa !2
  call void @Copy_Frame(i8* %15, i8* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %22 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i64 1), align 8, !tbaa !6
  %23 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx17 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx17, align 8, !tbaa !6
  %25 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %26 = load i32, i32* @Chroma_Height, align 4, !tbaa !2
  %27 = load i32, i32* %parity, align 4, !tbaa !2
  %28 = load i32, i32* %field_mode, align 4, !tbaa !2
  call void @Copy_Frame(i8* %22, i8* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %29 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i64 2), align 8, !tbaa !6
  %30 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx18 = getelementptr inbounds i8*, i8** %30, i64 2
  %31 = load i8*, i8** %arrayidx18, align 8, !tbaa !6
  %32 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %33 = load i32, i32* @Chroma_Height, align 4, !tbaa !2
  %34 = load i32, i32* %parity, align 4, !tbaa !2
  %35 = load i32, i32* %field_mode, align 4, !tbaa !2
  call void @Copy_Frame(i8* %29, i8* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %36 = bitcast i32* %field_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #3
  %37 = bitcast i32* %rerr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #3
  %38 = bitcast i32* %parity to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Extract_Components(i8* %filename, i8** %frame, i32 %framenum) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %frame.addr = alloca i8**, align 8
  %framenum.addr = alloca i32, align 4
  %fd = alloca %struct.__sFILE*, align 8
  %line = alloca i32, align 4
  %size = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !6
  store i8** %frame, i8*** %frame.addr, align 8, !tbaa !6
  store i32 %framenum, i32* %framenum.addr, align 4, !tbaa !2
  %0 = bitcast %struct.__sFILE** %fd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i32* %line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load i8*, i8** %filename.addr, align 8, !tbaa !6
  %call = call %struct.__sFILE* @"\01_fopen"(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct.__sFILE* %call, %struct.__sFILE** %fd, align 8, !tbaa !6
  %tobool = icmp ne %struct.__sFILE* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %filename.addr, align 8, !tbaa !6
  %call1 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i32 0, i64 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* %5)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %7 = load i32, i32* @Coded_Picture_Height, align 4, !tbaa !2
  %mul = mul nsw i32 %6, %7
  store i32 %mul, i32* %size, align 4, !tbaa !2
  %8 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load i32, i32* %size, align 4, !tbaa !2
  %mul3 = mul nsw i32 %9, 3
  store i32 %mul3, i32* %size, align 4, !tbaa !2
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp4 = icmp eq i32 %10, 2
  br i1 %cmp4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %if.else
  %11 = load i32, i32* %size, align 4, !tbaa !2
  %mul6 = mul nsw i32 %11, 2
  store i32 %mul6, i32* %size, align 4, !tbaa !2
  br label %if.end.14

if.else.7:                                        ; preds = %if.else
  %12 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then.9, label %if.else.11

if.then.9:                                        ; preds = %if.else.7
  %13 = load i32, i32* %size, align 4, !tbaa !2
  %mul10 = mul nsw i32 %13, 3
  %shr = ashr i32 %mul10, 1
  store i32 %shr, i32* %size, align 4, !tbaa !2
  br label %if.end.13

if.else.11:                                       ; preds = %if.else.7
  %14 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.2
  %15 = load i32, i32* %size, align 4, !tbaa !2
  %16 = load i32, i32* %framenum.addr, align 4, !tbaa !2
  %mul16 = mul nsw i32 %15, %16
  store i32 %mul16, i32* %offset, align 4, !tbaa !2
  %17 = load %struct.__sFILE*, %struct.__sFILE** %fd, align 8, !tbaa !6
  %18 = load i32, i32* %offset, align 4, !tbaa !2
  %conv = sext i32 %18 to i64
  %call17 = call i32 @fseek(%struct.__sFILE* %17, i64 %conv, i32 0)
  store i32 0, i32* %line, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %19 = load i32, i32* %line, align 4, !tbaa !2
  %20 = load i32, i32* @Coded_Picture_Height, align 4, !tbaa !2
  %cmp18 = icmp slt i32 %19, %20
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %23 = load i32, i32* %line, align 4, !tbaa !2
  %24 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %mul20 = mul nsw i32 %23, %24
  %idx.ext = sext i32 %mul20 to i64
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext
  %25 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %conv21 = sext i32 %25 to i64
  %26 = load %struct.__sFILE*, %struct.__sFILE** %fd, align 8, !tbaa !6
  %call22 = call i64 @fread(i8* %add.ptr, i64 1, i64 %conv21, %struct.__sFILE* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %line, align 4, !tbaa !2
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %line, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %line, align 4, !tbaa !2
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.end
  %28 = load i32, i32* %line, align 4, !tbaa !2
  %29 = load i32, i32* @Chroma_Height, align 4, !tbaa !2
  %cmp24 = icmp slt i32 %28, %29
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.23
  %30 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx27 = getelementptr inbounds i8*, i8** %30, i64 1
  %31 = load i8*, i8** %arrayidx27, align 8, !tbaa !6
  %32 = load i32, i32* %line, align 4, !tbaa !2
  %33 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %mul28 = mul nsw i32 %32, %33
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %31, i64 %idx.ext29
  %34 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %conv31 = sext i32 %34 to i64
  %35 = load %struct.__sFILE*, %struct.__sFILE** %fd, align 8, !tbaa !6
  %call32 = call i64 @fread(i8* %add.ptr30, i64 1, i64 %conv31, %struct.__sFILE* %35)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %36 = load i32, i32* %line, align 4, !tbaa !2
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %line, align 4, !tbaa !2
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  store i32 0, i32* %line, align 4, !tbaa !2
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.46, %for.end.35
  %37 = load i32, i32* %line, align 4, !tbaa !2
  %38 = load i32, i32* @Chroma_Height, align 4, !tbaa !2
  %cmp37 = icmp slt i32 %37, %38
  br i1 %cmp37, label %for.body.39, label %for.end.48

for.body.39:                                      ; preds = %for.cond.36
  %39 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx40 = getelementptr inbounds i8*, i8** %39, i64 2
  %40 = load i8*, i8** %arrayidx40, align 8, !tbaa !6
  %41 = load i32, i32* %line, align 4, !tbaa !2
  %42 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %mul41 = mul nsw i32 %41, %42
  %idx.ext42 = sext i32 %mul41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %40, i64 %idx.ext42
  %43 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %conv44 = sext i32 %43 to i64
  %44 = load %struct.__sFILE*, %struct.__sFILE** %fd, align 8, !tbaa !6
  %call45 = call i64 @fread(i8* %add.ptr43, i64 1, i64 %conv44, %struct.__sFILE* %44)
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.39
  %45 = load i32, i32* %line, align 4, !tbaa !2
  %inc47 = add nsw i32 %45, 1
  store i32 %inc47, i32* %line, align 4, !tbaa !2
  br label %for.cond.36

for.end.48:                                       ; preds = %for.cond.36
  %46 = load %struct.__sFILE*, %struct.__sFILE** %fd, align 8, !tbaa !6
  %call49 = call i32 @fclose(%struct.__sFILE* %46)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.48, %if.then
  %47 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #3
  %48 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #3
  %49 = bitcast i32* %line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #3
  %50 = bitcast %struct.__sFILE** %fd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #3
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Read_Components(i8* %filename, i8** %frame, i32 %framenum) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %frame.addr = alloca i8**, align 8
  %framenum.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %outname = alloca [256 x i8], align 16
  %name = alloca [256 x i8], align 16
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !6
  store i8** %frame, i8*** %frame.addr, align 8, !tbaa !6
  store i32 %framenum, i32* %framenum.addr, align 4, !tbaa !2
  %0 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 0, i32* %err, align 4, !tbaa !2
  %1 = bitcast [256 x i8]* %outname to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #3
  %2 = bitcast [256 x i8]* %name to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #3
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %3 = load i8*, i8** %filename.addr, align 8, !tbaa !6
  %4 = load i32, i32* %framenum.addr, align 4, !tbaa !2
  %call = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %arraydecay, i32 0, i64 256, i8* %3, i32 %4)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %call3 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %arraydecay1, i32 0, i64 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay2)
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %5 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %7 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %8 = load i32, i32* @Coded_Picture_Height, align 4, !tbaa !2
  %call5 = call i32 @Read_Component(i8* %arraydecay4, i8* %6, i32 %7, i32 %8)
  %9 = load i32, i32* %err, align 4, !tbaa !2
  %add = add nsw i32 %9, %call5
  store i32 %add, i32* %err, align 4, !tbaa !2
  %arraydecay6 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %call8 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %arraydecay6, i32 0, i64 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* %arraydecay7)
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %10 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx10 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx10, align 8, !tbaa !6
  %12 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %13 = load i32, i32* @Chroma_Height, align 4, !tbaa !2
  %call11 = call i32 @Read_Component(i8* %arraydecay9, i8* %11, i32 %12, i32 %13)
  %14 = load i32, i32* %err, align 4, !tbaa !2
  %add12 = add nsw i32 %14, %call11
  store i32 %add12, i32* %err, align 4, !tbaa !2
  %arraydecay13 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %outname, i32 0, i32 0
  %call15 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %arraydecay13, i32 0, i64 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay14)
  %arraydecay16 = getelementptr inbounds [256 x i8], [256 x i8]* %name, i32 0, i32 0
  %15 = load i8**, i8*** %frame.addr, align 8, !tbaa !6
  %arrayidx17 = getelementptr inbounds i8*, i8** %15, i64 2
  %16 = load i8*, i8** %arrayidx17, align 8, !tbaa !6
  %17 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %18 = load i32, i32* @Chroma_Height, align 4, !tbaa !2
  %call18 = call i32 @Read_Component(i8* %arraydecay16, i8* %16, i32 %17, i32 %18)
  %19 = load i32, i32* %err, align 4, !tbaa !2
  %add19 = add nsw i32 %19, %call18
  store i32 %add19, i32* %err, align 4, !tbaa !2
  %20 = load i32, i32* %err, align 4, !tbaa !2
  %21 = bitcast [256 x i8]* %name to i8*
  call void @llvm.lifetime.end(i64 256, i8* %21) #3
  %22 = bitcast [256 x i8]* %outname to i8*
  call void @llvm.lifetime.end(i64 256, i8* %22) #3
  %23 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #3
  ret i32 %20
}

; Function Attrs: nounwind ssp uwtable
define internal void @Copy_Frame(i8* %src, i8* %dst, i32 %width, i32 %height, i32 %parity, i32 %field_mode) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %field_mode.addr = alloca i32, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %incr = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8, !tbaa !6
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !6
  store i32 %width, i32* %width.addr, align 4, !tbaa !2
  store i32 %height, i32* %height.addr, align 4, !tbaa !2
  store i32 %parity, i32* %parity.addr, align 4, !tbaa !2
  store i32 %field_mode, i32* %field_mode.addr, align 4, !tbaa !2
  %0 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %incr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  store i32 0, i32* %d, align 4, !tbaa !2
  store i32 0, i32* %s, align 4, !tbaa !2
  %5 = load i32, i32* %field_mode.addr, align 4, !tbaa !2
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* %incr, align 4, !tbaa !2
  %6 = load i32, i32* %parity.addr, align 4, !tbaa !2
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %7 = load i32, i32* %width.addr, align 4, !tbaa !2
  %8 = load i32, i32* %s, align 4, !tbaa !2
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %s, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.2

if.else:                                          ; preds = %entry
  store i32 1, i32* %incr, align 4, !tbaa !2
  br label %if.end.2

if.end.2:                                         ; preds = %if.else, %if.end
  store i32 0, i32* %row, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end.2
  %9 = load i32, i32* %row, align 4, !tbaa !2
  %10 = load i32, i32* %height.addr, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %col, align 4, !tbaa !2
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %col, align 4, !tbaa !2
  %12 = load i32, i32* %width.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %s, align 4, !tbaa !2
  %14 = load i32, i32* %col, align 4, !tbaa !2
  %add7 = add nsw i32 %13, %14
  %idxprom = sext i32 %add7 to i64
  %15 = load i8*, i8** %src.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %17 = load i32, i32* %d, align 4, !tbaa !2
  %18 = load i32, i32* %col, align 4, !tbaa !2
  %add8 = add nsw i32 %17, %18
  %idxprom9 = sext i32 %add8 to i64
  %19 = load i8*, i8** %dst.addr, align 8, !tbaa !6
  %arrayidx10 = getelementptr inbounds i8, i8* %19, i64 %idxprom9
  store i8 %16, i8* %arrayidx10, align 1, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %20 = load i32, i32* %col, align 4, !tbaa !2
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %col, align 4, !tbaa !2
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %21 = load i32, i32* %width.addr, align 4, !tbaa !2
  %22 = load i32, i32* %incr, align 4, !tbaa !2
  %mul = mul nsw i32 %21, %22
  %23 = load i32, i32* %d, align 4, !tbaa !2
  %add11 = add nsw i32 %23, %mul
  store i32 %add11, i32* %d, align 4, !tbaa !2
  %24 = load i32, i32* %width.addr, align 4, !tbaa !2
  %25 = load i32, i32* %incr, align 4, !tbaa !2
  %mul12 = mul nsw i32 %24, %25
  %26 = load i32, i32* %s, align 4, !tbaa !2
  %add13 = add nsw i32 %26, %mul12
  store i32 %add13, i32* %s, align 4, !tbaa !2
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %27 = load i32, i32* %incr, align 4, !tbaa !2
  %28 = load i32, i32* %row, align 4, !tbaa !2
  %add15 = add nsw i32 %28, %27
  store i32 %add15, i32* %row, align 4, !tbaa !2
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %29 = bitcast i32* %incr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #3
  %30 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #3
  %31 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #3
  %32 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #3
  %33 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

declare i32 @fseek(%struct.__sFILE*, i64, i32) #2

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #2

declare i32 @fclose(%struct.__sFILE*) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Read_Component(i8* %Filename, i8* %Frame, i32 %Width, i32 %Height) #0 {
entry:
  %retval = alloca i32, align 4
  %Filename.addr = alloca i8*, align 8
  %Frame.addr = alloca i8*, align 8
  %Width.addr = alloca i32, align 4
  %Height.addr = alloca i32, align 4
  %Size = alloca i32, align 4
  %Bytes_Read = alloca i32, align 4
  %Infile = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %Filename, i8** %Filename.addr, align 8, !tbaa !6
  store i8* %Frame, i8** %Frame.addr, align 8, !tbaa !6
  store i32 %Width, i32* %Width.addr, align 4, !tbaa !2
  store i32 %Height, i32* %Height.addr, align 4, !tbaa !2
  %0 = bitcast i32* %Size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %Bytes_Read to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %Infile to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = load i32, i32* %Width.addr, align 4, !tbaa !2
  %4 = load i32, i32* %Height.addr, align 4, !tbaa !2
  %mul = mul nsw i32 %3, %4
  store i32 %mul, i32* %Size, align 4, !tbaa !2
  %5 = load i8*, i8** %Filename.addr, align 8, !tbaa !6
  %call = call i32 (i8*, i32, ...) @"\01_open"(i8* %5, i32 0)
  store i32 %call, i32* %Infile, align 4, !tbaa !2
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp = icmp slt i32 %lnot.ext, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %Filename.addr, align 8, !tbaa !6
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i32 0, i32 0), i8* %6)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %Infile, align 4, !tbaa !2
  %8 = load i8*, i8** %Frame.addr, align 8, !tbaa !6
  %9 = load i32, i32* %Size, align 4, !tbaa !2
  %conv = sext i32 %9 to i64
  %call2 = call i64 @"\01_read"(i32 %7, i8* %8, i64 %conv)
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %Bytes_Read, align 4, !tbaa !2
  %10 = load i32, i32* %Bytes_Read, align 4, !tbaa !2
  %11 = load i32, i32* %Size, align 4, !tbaa !2
  %cmp4 = icmp ne i32 %10, %11
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %Bytes_Read, align 4, !tbaa !2
  %13 = load i32, i32* %Size, align 4, !tbaa !2
  %14 = load i8*, i8** %Filename.addr, align 8, !tbaa !6
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i32 %12, i32 %13, i8* %14)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %15 = load i32, i32* %Infile, align 4, !tbaa !2
  %call9 = call i32 @"\01_close"(i32 %15)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then
  %16 = bitcast i32* %Infile to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #3
  %17 = bitcast i32* %Bytes_Read to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #3
  %18 = bitcast i32* %Size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #3
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @"\01_open"(i8*, i32, ...) #2

declare i64 @"\01_read"(i32, i8*, i64) #2

declare i32 @"\01_close"(i32) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!4, !4, i64 0}
