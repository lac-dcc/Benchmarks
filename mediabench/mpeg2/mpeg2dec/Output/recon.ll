; ModuleID = 'recon.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@picture_coding_type = external global i32, align 4
@picture_structure = external global i32, align 4
@forward_reference_frame = external global [3 x i8*], align 16
@current_frame = external global [3 x i8*], align 16
@Coded_Picture_Width = external global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid motion_type\0A\00", align 1
@Second_Field = external global i32, align 4
@backward_reference_frame = external global [3 x i8*], align 16
@chroma_format = external global i32, align 4

; Function Attrs: nounwind ssp uwtable
define void @form_predictions(i32 %bx, i32 %by, i32 %macroblock_type, i32 %motion_type, [2 x [2 x i32]]* %PMV, [2 x i32]* %motion_vertical_field_select, i32* %dmvector, i32 %stwtype) #0 {
entry:
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %macroblock_type.addr = alloca i32, align 4
  %motion_type.addr = alloca i32, align 4
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %stwtype.addr = alloca i32, align 4
  %currentfield = alloca i32, align 4
  %predframe = alloca i8**, align 8
  %DMV = alloca [2 x [2 x i32]], align 16
  %stwtop = alloca i32, align 4
  %stwbot = alloca i32, align 4
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !2
  store i32 %by, i32* %by.addr, align 4, !tbaa !2
  store i32 %macroblock_type, i32* %macroblock_type.addr, align 4, !tbaa !2
  store i32 %motion_type, i32* %motion_type.addr, align 4, !tbaa !2
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  store i32* %dmvector, i32** %dmvector.addr, align 8, !tbaa !6
  store i32 %stwtype, i32* %stwtype.addr, align 4, !tbaa !2
  %0 = bitcast i32* %currentfield to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i8*** %predframe to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast [2 x [2 x i32]]* %DMV to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #3
  %3 = bitcast i32* %stwtop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %stwbot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = load i32, i32* %stwtype.addr, align 4, !tbaa !2
  %rem = srem i32 %5, 3
  store i32 %rem, i32* %stwtop, align 4, !tbaa !2
  %6 = load i32, i32* %stwtype.addr, align 4, !tbaa !2
  %div = sdiv i32 %6, 3
  store i32 %div, i32* %stwbot, align 4, !tbaa !2
  %7 = load i32, i32* %macroblock_type.addr, align 4, !tbaa !2
  %and = and i32 %7, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %if.end.219

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %9, 3
  br i1 %cmp1, label %if.then.2, label %if.else.110

if.then.2:                                        ; preds = %if.then
  %10 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp3 = icmp eq i32 %10, 2
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.then.2
  %11 = load i32, i32* %macroblock_type.addr, align 4, !tbaa !2
  %and5 = and i32 %11, 8
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false.4, %if.then.2
  %12 = load i32, i32* %stwtop, align 4, !tbaa !2
  %cmp8 = icmp slt i32 %12, 2
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  %13 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %14 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl = shl i32 %14, 1
  %15 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %16 = load i32, i32* %by.addr, align 4, !tbaa !2
  %17 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %17, i64 0
  %arrayidx10 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx, i32 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx10, i32 0, i64 0
  %18 = load i32, i32* %arrayidx11, align 4, !tbaa !2
  %19 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx12 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %19, i64 0
  %arrayidx13 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx12, i32 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 1
  %20 = load i32, i32* %arrayidx14, align 4, !tbaa !2
  %21 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %13, i32 %shl, i32 16, i32 8, i32 %15, i32 %16, i32 %18, i32 %20, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.7
  %22 = load i32, i32* %stwbot, align 4, !tbaa !2
  %cmp15 = icmp slt i32 %22, 2
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end
  %23 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %24 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl17 = shl i32 %24, 1
  %25 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %26 = load i32, i32* %by.addr, align 4, !tbaa !2
  %27 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx18 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %27, i64 0
  %arrayidx19 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx18, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx19, i32 0, i64 0
  %28 = load i32, i32* %arrayidx20, align 4, !tbaa !2
  %29 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx21 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %29, i64 0
  %arrayidx22 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx21, i32 0, i64 0
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx22, i32 0, i64 1
  %30 = load i32, i32* %arrayidx23, align 4, !tbaa !2
  %31 = load i32, i32* %stwbot, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %23, i32 %shl17, i32 16, i32 8, i32 %25, i32 %26, i32 %28, i32 %30, i32 %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.16, %if.end
  br label %if.end.109

if.else:                                          ; preds = %lor.lhs.false.4
  %32 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp25 = icmp eq i32 %32, 1
  br i1 %cmp25, label %if.then.26, label %if.else.56

if.then.26:                                       ; preds = %if.else
  %33 = load i32, i32* %stwtop, align 4, !tbaa !2
  %cmp27 = icmp slt i32 %33, 2
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.then.26
  %34 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx29, i32 0, i64 0
  %35 = load i32, i32* %arrayidx30, align 4, !tbaa !2
  %36 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl31 = shl i32 %36, 1
  %37 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl32 = shl i32 %37, 1
  %38 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %39 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr = ashr i32 %39, 1
  %40 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx33 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %40, i64 0
  %arrayidx34 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx33, i32 0, i64 0
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx34, i32 0, i64 0
  %41 = load i32, i32* %arrayidx35, align 4, !tbaa !2
  %42 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx36 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %42, i64 0
  %arrayidx37 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx36, i32 0, i64 0
  %arrayidx38 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx37, i32 0, i64 1
  %43 = load i32, i32* %arrayidx38, align 4, !tbaa !2
  %shr39 = ashr i32 %43, 1
  %44 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %35, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl31, i32 %shl32, i32 16, i32 8, i32 %38, i32 %shr, i32 %41, i32 %shr39, i32 %44)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.28, %if.then.26
  %45 = load i32, i32* %stwbot, align 4, !tbaa !2
  %cmp41 = icmp slt i32 %45, 2
  br i1 %cmp41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %if.end.40
  %46 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx43 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 1
  %arrayidx44 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx43, i32 0, i64 0
  %47 = load i32, i32* %arrayidx44, align 4, !tbaa !2
  %48 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl45 = shl i32 %48, 1
  %49 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl46 = shl i32 %49, 1
  %50 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %51 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr47 = ashr i32 %51, 1
  %52 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx48 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %52, i64 1
  %arrayidx49 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx48, i32 0, i64 0
  %arrayidx50 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx49, i32 0, i64 0
  %53 = load i32, i32* %arrayidx50, align 4, !tbaa !2
  %54 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx51 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %54, i64 1
  %arrayidx52 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx51, i32 0, i64 0
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx52, i32 0, i64 1
  %55 = load i32, i32* %arrayidx53, align 4, !tbaa !2
  %shr54 = ashr i32 %55, 1
  %56 = load i32, i32* %stwbot, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %47, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl45, i32 %shl46, i32 16, i32 8, i32 %50, i32 %shr47, i32 %53, i32 %shr54, i32 %56)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.42, %if.end.40
  br label %if.end.108

if.else.56:                                       ; preds = %if.else
  %57 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp57 = icmp eq i32 %57, 3
  br i1 %cmp57, label %if.then.58, label %if.else.106

if.then.58:                                       ; preds = %if.else.56
  %arraydecay = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i32 0
  %58 = load i32*, i32** %dmvector.addr, align 8, !tbaa !6
  %59 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx59 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %59, i64 0
  %arrayidx60 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx59, i32 0, i64 0
  %arrayidx61 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx60, i32 0, i64 0
  %60 = load i32, i32* %arrayidx61, align 4, !tbaa !2
  %61 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx62 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %61, i64 0
  %arrayidx63 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx62, i32 0, i64 0
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx63, i32 0, i64 1
  %62 = load i32, i32* %arrayidx64, align 4, !tbaa !2
  %shr65 = ashr i32 %62, 1
  call void @Dual_Prime_Arithmetic([2 x i32]* %arraydecay, i32* %58, i32 %60, i32 %shr65)
  %63 = load i32, i32* %stwtop, align 4, !tbaa !2
  %cmp66 = icmp slt i32 %63, 2
  br i1 %cmp66, label %if.then.67, label %if.end.85

if.then.67:                                       ; preds = %if.then.58
  %64 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl68 = shl i32 %64, 1
  %65 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl69 = shl i32 %65, 1
  %66 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %67 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr70 = ashr i32 %67, 1
  %68 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx71 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %68, i64 0
  %arrayidx72 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx71, i32 0, i64 0
  %arrayidx73 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx72, i32 0, i64 0
  %69 = load i32, i32* %arrayidx73, align 4, !tbaa !2
  %70 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %70, i64 0
  %arrayidx75 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx74, i32 0, i64 0
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx75, i32 0, i64 1
  %71 = load i32, i32* %arrayidx76, align 4, !tbaa !2
  %shr77 = ashr i32 %71, 1
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl68, i32 %shl69, i32 16, i32 8, i32 %66, i32 %shr70, i32 %69, i32 %shr77, i32 0)
  %72 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl78 = shl i32 %72, 1
  %73 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl79 = shl i32 %73, 1
  %74 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %75 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr80 = ashr i32 %75, 1
  %arrayidx81 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx82 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx81, i32 0, i64 0
  %76 = load i32, i32* %arrayidx82, align 4, !tbaa !2
  %arrayidx83 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx83, i32 0, i64 1
  %77 = load i32, i32* %arrayidx84, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl78, i32 %shl79, i32 16, i32 8, i32 %74, i32 %shr80, i32 %76, i32 %77, i32 1)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.67, %if.then.58
  %78 = load i32, i32* %stwbot, align 4, !tbaa !2
  %cmp86 = icmp slt i32 %78, 2
  br i1 %cmp86, label %if.then.87, label %if.end.105

if.then.87:                                       ; preds = %if.end.85
  %79 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl88 = shl i32 %79, 1
  %80 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl89 = shl i32 %80, 1
  %81 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %82 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr90 = ashr i32 %82, 1
  %83 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx91 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %83, i64 0
  %arrayidx92 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx91, i32 0, i64 0
  %arrayidx93 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx92, i32 0, i64 0
  %84 = load i32, i32* %arrayidx93, align 4, !tbaa !2
  %85 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx94 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %85, i64 0
  %arrayidx95 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx94, i32 0, i64 0
  %arrayidx96 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx95, i32 0, i64 1
  %86 = load i32, i32* %arrayidx96, align 4, !tbaa !2
  %shr97 = ashr i32 %86, 1
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl88, i32 %shl89, i32 16, i32 8, i32 %81, i32 %shr90, i32 %84, i32 %shr97, i32 0)
  %87 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl98 = shl i32 %87, 1
  %88 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl99 = shl i32 %88, 1
  %89 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %90 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr100 = ashr i32 %90, 1
  %arrayidx101 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 1
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx101, i32 0, i64 0
  %91 = load i32, i32* %arrayidx102, align 4, !tbaa !2
  %arrayidx103 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 1
  %arrayidx104 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx103, i32 0, i64 1
  %92 = load i32, i32* %arrayidx104, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl98, i32 %shl99, i32 16, i32 8, i32 %89, i32 %shr100, i32 %91, i32 %92, i32 1)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.87, %if.end.85
  br label %if.end.107

if.else.106:                                      ; preds = %if.else.56
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.106, %if.end.105
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.55
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.24
  br label %if.end.218

if.else.110:                                      ; preds = %if.then
  %93 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp111 = icmp eq i32 %93, 2
  %conv = zext i1 %cmp111 to i32
  store i32 %conv, i32* %currentfield, align 4, !tbaa !2
  %94 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp112 = icmp eq i32 %94, 2
  br i1 %cmp112, label %land.lhs.true, label %if.else.121

land.lhs.true:                                    ; preds = %if.else.110
  %95 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool114 = icmp ne i32 %95, 0
  br i1 %tobool114, label %land.lhs.true.115, label %if.else.121

land.lhs.true.115:                                ; preds = %land.lhs.true
  %96 = load i32, i32* %currentfield, align 4, !tbaa !2
  %97 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %97, i64 0
  %arrayidx117 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx116, i32 0, i64 0
  %98 = load i32, i32* %arrayidx117, align 4, !tbaa !2
  %cmp118 = icmp ne i32 %96, %98
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %land.lhs.true.115
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8, !tbaa !6
  br label %if.end.122

if.else.121:                                      ; preds = %land.lhs.true.115, %land.lhs.true, %if.else.110
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8, !tbaa !6
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.121, %if.then.120
  %99 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp123 = icmp eq i32 %99, 1
  br i1 %cmp123, label %if.then.128, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.end.122
  %100 = load i32, i32* %macroblock_type.addr, align 4, !tbaa !2
  %and126 = and i32 %100, 8
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %if.else.143, label %if.then.128

if.then.128:                                      ; preds = %lor.lhs.false.125, %if.end.122
  %101 = load i32, i32* %stwtop, align 4, !tbaa !2
  %cmp129 = icmp slt i32 %101, 2
  br i1 %cmp129, label %if.then.131, label %if.end.142

if.then.131:                                      ; preds = %if.then.128
  %102 = load i8**, i8*** %predframe, align 8, !tbaa !6
  %103 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx132 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i64 0
  %arrayidx133 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx132, i32 0, i64 0
  %104 = load i32, i32* %arrayidx133, align 4, !tbaa !2
  %105 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl134 = shl i32 %105, 1
  %106 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl135 = shl i32 %106, 1
  %107 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %108 = load i32, i32* %by.addr, align 4, !tbaa !2
  %109 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx136 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %109, i64 0
  %arrayidx137 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx136, i32 0, i64 0
  %arrayidx138 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx137, i32 0, i64 0
  %110 = load i32, i32* %arrayidx138, align 4, !tbaa !2
  %111 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx139 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %111, i64 0
  %arrayidx140 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx139, i32 0, i64 0
  %arrayidx141 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx140, i32 0, i64 1
  %112 = load i32, i32* %arrayidx141, align 4, !tbaa !2
  %113 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** %102, i32 %104, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl134, i32 %shl135, i32 16, i32 16, i32 %107, i32 %108, i32 %110, i32 %112, i32 %113)
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.131, %if.then.128
  br label %if.end.217

if.else.143:                                      ; preds = %lor.lhs.false.125
  %114 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp144 = icmp eq i32 %114, 2
  br i1 %cmp144, label %if.then.146, label %if.else.183

if.then.146:                                      ; preds = %if.else.143
  %115 = load i32, i32* %stwtop, align 4, !tbaa !2
  %cmp147 = icmp slt i32 %115, 2
  br i1 %cmp147, label %if.then.149, label %if.end.182

if.then.149:                                      ; preds = %if.then.146
  %116 = load i8**, i8*** %predframe, align 8, !tbaa !6
  %117 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx150 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 0
  %arrayidx151 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx150, i32 0, i64 0
  %118 = load i32, i32* %arrayidx151, align 4, !tbaa !2
  %119 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl152 = shl i32 %119, 1
  %120 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl153 = shl i32 %120, 1
  %121 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %122 = load i32, i32* %by.addr, align 4, !tbaa !2
  %123 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx154 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %123, i64 0
  %arrayidx155 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx154, i32 0, i64 0
  %arrayidx156 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx155, i32 0, i64 0
  %124 = load i32, i32* %arrayidx156, align 4, !tbaa !2
  %125 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx157 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %125, i64 0
  %arrayidx158 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx157, i32 0, i64 0
  %arrayidx159 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx158, i32 0, i64 1
  %126 = load i32, i32* %arrayidx159, align 4, !tbaa !2
  %127 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** %116, i32 %118, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl152, i32 %shl153, i32 16, i32 8, i32 %121, i32 %122, i32 %124, i32 %126, i32 %127)
  %128 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp160 = icmp eq i32 %128, 2
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.170

land.lhs.true.162:                                ; preds = %if.then.149
  %129 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool163 = icmp ne i32 %129, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.else.170

land.lhs.true.164:                                ; preds = %land.lhs.true.162
  %130 = load i32, i32* %currentfield, align 4, !tbaa !2
  %131 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx165 = getelementptr inbounds [2 x i32], [2 x i32]* %131, i64 1
  %arrayidx166 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx165, i32 0, i64 0
  %132 = load i32, i32* %arrayidx166, align 4, !tbaa !2
  %cmp167 = icmp ne i32 %130, %132
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %land.lhs.true.164
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8, !tbaa !6
  br label %if.end.171

if.else.170:                                      ; preds = %land.lhs.true.164, %land.lhs.true.162, %if.then.149
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8, !tbaa !6
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.170, %if.then.169
  %133 = load i8**, i8*** %predframe, align 8, !tbaa !6
  %134 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx172 = getelementptr inbounds [2 x i32], [2 x i32]* %134, i64 1
  %arrayidx173 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx172, i32 0, i64 0
  %135 = load i32, i32* %arrayidx173, align 4, !tbaa !2
  %136 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl174 = shl i32 %136, 1
  %137 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl175 = shl i32 %137, 1
  %138 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %139 = load i32, i32* %by.addr, align 4, !tbaa !2
  %add = add nsw i32 %139, 8
  %140 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx176 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %140, i64 1
  %arrayidx177 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx176, i32 0, i64 0
  %arrayidx178 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx177, i32 0, i64 0
  %141 = load i32, i32* %arrayidx178, align 4, !tbaa !2
  %142 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx179 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %142, i64 1
  %arrayidx180 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx179, i32 0, i64 0
  %arrayidx181 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx180, i32 0, i64 1
  %143 = load i32, i32* %arrayidx181, align 4, !tbaa !2
  %144 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** %133, i32 %135, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl174, i32 %shl175, i32 16, i32 8, i32 %138, i32 %add, i32 %141, i32 %143, i32 %144)
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.171, %if.then.146
  br label %if.end.216

if.else.183:                                      ; preds = %if.else.143
  %145 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp184 = icmp eq i32 %145, 3
  br i1 %cmp184, label %if.then.186, label %if.else.213

if.then.186:                                      ; preds = %if.else.183
  %146 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool187 = icmp ne i32 %146, 0
  br i1 %tobool187, label %if.then.188, label %if.else.189

if.then.188:                                      ; preds = %if.then.186
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8, !tbaa !6
  br label %if.end.190

if.else.189:                                      ; preds = %if.then.186
  store i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i8*** %predframe, align 8, !tbaa !6
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.189, %if.then.188
  %arraydecay191 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i32 0
  %147 = load i32*, i32** %dmvector.addr, align 8, !tbaa !6
  %148 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx192 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %148, i64 0
  %arrayidx193 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx192, i32 0, i64 0
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx193, i32 0, i64 0
  %149 = load i32, i32* %arrayidx194, align 4, !tbaa !2
  %150 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx195 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %150, i64 0
  %arrayidx196 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx195, i32 0, i64 0
  %arrayidx197 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx196, i32 0, i64 1
  %151 = load i32, i32* %arrayidx197, align 4, !tbaa !2
  call void @Dual_Prime_Arithmetic([2 x i32]* %arraydecay191, i32* %147, i32 %149, i32 %151)
  %152 = load i32, i32* %currentfield, align 4, !tbaa !2
  %153 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl198 = shl i32 %153, 1
  %154 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl199 = shl i32 %154, 1
  %155 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %156 = load i32, i32* %by.addr, align 4, !tbaa !2
  %157 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx200 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %157, i64 0
  %arrayidx201 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx200, i32 0, i64 0
  %arrayidx202 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx201, i32 0, i64 0
  %158 = load i32, i32* %arrayidx202, align 4, !tbaa !2
  %159 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx203 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %159, i64 0
  %arrayidx204 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx203, i32 0, i64 0
  %arrayidx205 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx204, i32 0, i64 1
  %160 = load i32, i32* %arrayidx205, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i32 0), i32 %152, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl198, i32 %shl199, i32 16, i32 16, i32 %155, i32 %156, i32 %158, i32 %160, i32 0)
  %161 = load i8**, i8*** %predframe, align 8, !tbaa !6
  %162 = load i32, i32* %currentfield, align 4, !tbaa !2
  %tobool206 = icmp ne i32 %162, 0
  %lnot = xor i1 %tobool206, true
  %lnot.ext = zext i1 %lnot to i32
  %163 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl207 = shl i32 %163, 1
  %164 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl208 = shl i32 %164, 1
  %165 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %166 = load i32, i32* %by.addr, align 4, !tbaa !2
  %arrayidx209 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx210 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx209, i32 0, i64 0
  %167 = load i32, i32* %arrayidx210, align 4, !tbaa !2
  %arrayidx211 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %DMV, i32 0, i64 0
  %arrayidx212 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx211, i32 0, i64 1
  %168 = load i32, i32* %arrayidx212, align 4, !tbaa !2
  call void @form_prediction(i8** %161, i32 %lnot.ext, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl207, i32 %shl208, i32 16, i32 16, i32 %165, i32 %166, i32 %167, i32 %168, i32 1)
  br label %if.end.215

if.else.213:                                      ; preds = %if.else.183
  %call214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.213, %if.end.190
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %if.end.182
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.end.142
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.109
  store i32 1, i32* %stwbot, align 4, !tbaa !2
  store i32 1, i32* %stwtop, align 4, !tbaa !2
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %lor.lhs.false
  %169 = load i32, i32* %macroblock_type.addr, align 4, !tbaa !2
  %and220 = and i32 %169, 4
  %tobool221 = icmp ne i32 %and220, 0
  br i1 %tobool221, label %if.then.222, label %if.end.329

if.then.222:                                      ; preds = %if.end.219
  %170 = load i32, i32* @picture_structure, align 4, !tbaa !2
  %cmp223 = icmp eq i32 %170, 3
  br i1 %cmp223, label %if.then.225, label %if.else.285

if.then.225:                                      ; preds = %if.then.222
  %171 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp226 = icmp eq i32 %171, 2
  br i1 %cmp226, label %if.then.228, label %if.else.251

if.then.228:                                      ; preds = %if.then.225
  %172 = load i32, i32* %stwtop, align 4, !tbaa !2
  %cmp229 = icmp slt i32 %172, 2
  br i1 %cmp229, label %if.then.231, label %if.end.239

if.then.231:                                      ; preds = %if.then.228
  %173 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %174 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl232 = shl i32 %174, 1
  %175 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %176 = load i32, i32* %by.addr, align 4, !tbaa !2
  %177 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx233 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %177, i64 0
  %arrayidx234 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx233, i32 0, i64 1
  %arrayidx235 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx234, i32 0, i64 0
  %178 = load i32, i32* %arrayidx235, align 4, !tbaa !2
  %179 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx236 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %179, i64 0
  %arrayidx237 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx236, i32 0, i64 1
  %arrayidx238 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx237, i32 0, i64 1
  %180 = load i32, i32* %arrayidx238, align 4, !tbaa !2
  %181 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 0, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %173, i32 %shl232, i32 16, i32 8, i32 %175, i32 %176, i32 %178, i32 %180, i32 %181)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.231, %if.then.228
  %182 = load i32, i32* %stwbot, align 4, !tbaa !2
  %cmp240 = icmp slt i32 %182, 2
  br i1 %cmp240, label %if.then.242, label %if.end.250

if.then.242:                                      ; preds = %if.end.239
  %183 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %184 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl243 = shl i32 %184, 1
  %185 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %186 = load i32, i32* %by.addr, align 4, !tbaa !2
  %187 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx244 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %187, i64 0
  %arrayidx245 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx244, i32 0, i64 1
  %arrayidx246 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx245, i32 0, i64 0
  %188 = load i32, i32* %arrayidx246, align 4, !tbaa !2
  %189 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx247 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %189, i64 0
  %arrayidx248 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx247, i32 0, i64 1
  %arrayidx249 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx248, i32 0, i64 1
  %190 = load i32, i32* %arrayidx249, align 4, !tbaa !2
  %191 = load i32, i32* %stwbot, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 1, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %183, i32 %shl243, i32 16, i32 8, i32 %185, i32 %186, i32 %188, i32 %190, i32 %191)
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.242, %if.end.239
  br label %if.end.284

if.else.251:                                      ; preds = %if.then.225
  %192 = load i32, i32* %stwtop, align 4, !tbaa !2
  %cmp252 = icmp slt i32 %192, 2
  br i1 %cmp252, label %if.then.254, label %if.end.267

if.then.254:                                      ; preds = %if.else.251
  %193 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx255 = getelementptr inbounds [2 x i32], [2 x i32]* %193, i64 0
  %arrayidx256 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx255, i32 0, i64 1
  %194 = load i32, i32* %arrayidx256, align 4, !tbaa !2
  %195 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl257 = shl i32 %195, 1
  %196 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl258 = shl i32 %196, 1
  %197 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %198 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr259 = ashr i32 %198, 1
  %199 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx260 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %199, i64 0
  %arrayidx261 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx260, i32 0, i64 1
  %arrayidx262 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx261, i32 0, i64 0
  %200 = load i32, i32* %arrayidx262, align 4, !tbaa !2
  %201 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx263 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %201, i64 0
  %arrayidx264 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx263, i32 0, i64 1
  %arrayidx265 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx264, i32 0, i64 1
  %202 = load i32, i32* %arrayidx265, align 4, !tbaa !2
  %shr266 = ashr i32 %202, 1
  %203 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %194, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl257, i32 %shl258, i32 16, i32 8, i32 %197, i32 %shr259, i32 %200, i32 %shr266, i32 %203)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.254, %if.else.251
  %204 = load i32, i32* %stwbot, align 4, !tbaa !2
  %cmp268 = icmp slt i32 %204, 2
  br i1 %cmp268, label %if.then.270, label %if.end.283

if.then.270:                                      ; preds = %if.end.267
  %205 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx271 = getelementptr inbounds [2 x i32], [2 x i32]* %205, i64 1
  %arrayidx272 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx271, i32 0, i64 1
  %206 = load i32, i32* %arrayidx272, align 4, !tbaa !2
  %207 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl273 = shl i32 %207, 1
  %208 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl274 = shl i32 %208, 1
  %209 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %210 = load i32, i32* %by.addr, align 4, !tbaa !2
  %shr275 = ashr i32 %210, 1
  %211 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx276 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %211, i64 1
  %arrayidx277 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx276, i32 0, i64 1
  %arrayidx278 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx277, i32 0, i64 0
  %212 = load i32, i32* %arrayidx278, align 4, !tbaa !2
  %213 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx279 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %213, i64 1
  %arrayidx280 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx279, i32 0, i64 1
  %arrayidx281 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx280, i32 0, i64 1
  %214 = load i32, i32* %arrayidx281, align 4, !tbaa !2
  %shr282 = ashr i32 %214, 1
  %215 = load i32, i32* %stwbot, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %206, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 1, i32 %shl273, i32 %shl274, i32 16, i32 8, i32 %209, i32 %shr275, i32 %212, i32 %shr282, i32 %215)
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.270, %if.end.267
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.end.250
  br label %if.end.328

if.else.285:                                      ; preds = %if.then.222
  %216 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp286 = icmp eq i32 %216, 1
  br i1 %cmp286, label %if.then.288, label %if.else.299

if.then.288:                                      ; preds = %if.else.285
  %217 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx289 = getelementptr inbounds [2 x i32], [2 x i32]* %217, i64 0
  %arrayidx290 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx289, i32 0, i64 1
  %218 = load i32, i32* %arrayidx290, align 4, !tbaa !2
  %219 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl291 = shl i32 %219, 1
  %220 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl292 = shl i32 %220, 1
  %221 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %222 = load i32, i32* %by.addr, align 4, !tbaa !2
  %223 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx293 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %223, i64 0
  %arrayidx294 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx293, i32 0, i64 1
  %arrayidx295 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx294, i32 0, i64 0
  %224 = load i32, i32* %arrayidx295, align 4, !tbaa !2
  %225 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx296 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %225, i64 0
  %arrayidx297 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx296, i32 0, i64 1
  %arrayidx298 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx297, i32 0, i64 1
  %226 = load i32, i32* %arrayidx298, align 4, !tbaa !2
  %227 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %218, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl291, i32 %shl292, i32 16, i32 16, i32 %221, i32 %222, i32 %224, i32 %226, i32 %227)
  br label %if.end.327

if.else.299:                                      ; preds = %if.else.285
  %228 = load i32, i32* %motion_type.addr, align 4, !tbaa !2
  %cmp300 = icmp eq i32 %228, 2
  br i1 %cmp300, label %if.then.302, label %if.else.324

if.then.302:                                      ; preds = %if.else.299
  %229 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx303 = getelementptr inbounds [2 x i32], [2 x i32]* %229, i64 0
  %arrayidx304 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx303, i32 0, i64 1
  %230 = load i32, i32* %arrayidx304, align 4, !tbaa !2
  %231 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl305 = shl i32 %231, 1
  %232 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl306 = shl i32 %232, 1
  %233 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %234 = load i32, i32* %by.addr, align 4, !tbaa !2
  %235 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx307 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %235, i64 0
  %arrayidx308 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx307, i32 0, i64 1
  %arrayidx309 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx308, i32 0, i64 0
  %236 = load i32, i32* %arrayidx309, align 4, !tbaa !2
  %237 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx310 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %237, i64 0
  %arrayidx311 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx310, i32 0, i64 1
  %arrayidx312 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx311, i32 0, i64 1
  %238 = load i32, i32* %arrayidx312, align 4, !tbaa !2
  %239 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %230, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl305, i32 %shl306, i32 16, i32 8, i32 %233, i32 %234, i32 %236, i32 %238, i32 %239)
  %240 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !6
  %arrayidx313 = getelementptr inbounds [2 x i32], [2 x i32]* %240, i64 1
  %arrayidx314 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx313, i32 0, i64 1
  %241 = load i32, i32* %arrayidx314, align 4, !tbaa !2
  %242 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl315 = shl i32 %242, 1
  %243 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shl316 = shl i32 %243, 1
  %244 = load i32, i32* %bx.addr, align 4, !tbaa !2
  %245 = load i32, i32* %by.addr, align 4, !tbaa !2
  %add317 = add nsw i32 %245, 8
  %246 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx318 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %246, i64 1
  %arrayidx319 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx318, i32 0, i64 1
  %arrayidx320 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx319, i32 0, i64 0
  %247 = load i32, i32* %arrayidx320, align 4, !tbaa !2
  %248 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !6
  %arrayidx321 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %248, i64 1
  %arrayidx322 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx321, i32 0, i64 1
  %arrayidx323 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx322, i32 0, i64 1
  %249 = load i32, i32* %arrayidx323, align 4, !tbaa !2
  %250 = load i32, i32* %stwtop, align 4, !tbaa !2
  call void @form_prediction(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i32 0), i32 %241, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @current_frame, i32 0, i32 0), i32 0, i32 %shl315, i32 %shl316, i32 16, i32 8, i32 %244, i32 %add317, i32 %247, i32 %249, i32 %250)
  br label %if.end.326

if.else.324:                                      ; preds = %if.else.299
  %call325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  br label %if.end.326

if.end.326:                                       ; preds = %if.else.324, %if.then.302
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326, %if.then.288
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.end.284
  br label %if.end.329

if.end.329:                                       ; preds = %if.end.328, %if.end.219
  %251 = bitcast i32* %stwbot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #3
  %252 = bitcast i32* %stwtop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #3
  %253 = bitcast [2 x [2 x i32]]* %DMV to i8*
  call void @llvm.lifetime.end(i64 16, i8* %253) #3
  %254 = bitcast i8*** %predframe to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #3
  %255 = bitcast i32* %currentfield to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @form_prediction(i8** %src, i32 %sfield, i8** %dst, i32 %dfield, i32 %lx, i32 %lx2, i32 %w, i32 %h, i32 %x, i32 %y, i32 %dx, i32 %dy, i32 %average_flag) #0 {
entry:
  %src.addr = alloca i8**, align 8
  %sfield.addr = alloca i32, align 4
  %dst.addr = alloca i8**, align 8
  %dfield.addr = alloca i32, align 4
  %lx.addr = alloca i32, align 4
  %lx2.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %average_flag.addr = alloca i32, align 4
  store i8** %src, i8*** %src.addr, align 8, !tbaa !6
  store i32 %sfield, i32* %sfield.addr, align 4, !tbaa !2
  store i8** %dst, i8*** %dst.addr, align 8, !tbaa !6
  store i32 %dfield, i32* %dfield.addr, align 4, !tbaa !2
  store i32 %lx, i32* %lx.addr, align 4, !tbaa !2
  store i32 %lx2, i32* %lx2.addr, align 4, !tbaa !2
  store i32 %w, i32* %w.addr, align 4, !tbaa !2
  store i32 %h, i32* %h.addr, align 4, !tbaa !2
  store i32 %x, i32* %x.addr, align 4, !tbaa !2
  store i32 %y, i32* %y.addr, align 4, !tbaa !2
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !2
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !2
  store i32 %average_flag, i32* %average_flag.addr, align 4, !tbaa !2
  %0 = load i8**, i8*** %src.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %2 = load i32, i32* %sfield.addr, align 4, !tbaa !2
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %shr = ashr i32 %3, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ 0, %cond.false ]
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %4 = load i8**, i8*** %dst.addr, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx1, align 8, !tbaa !6
  %6 = load i32, i32* %dfield.addr, align 4, !tbaa !2
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %7 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %shr4 = ashr i32 %7, 1
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi i32 [ %shr4, %cond.true.3 ], [ 0, %cond.false.5 ]
  %idx.ext8 = sext i32 %cond7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %5, i64 %idx.ext8
  %8 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %9 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %10 = load i32, i32* %w.addr, align 4, !tbaa !2
  %11 = load i32, i32* %h.addr, align 4, !tbaa !2
  %12 = load i32, i32* %x.addr, align 4, !tbaa !2
  %13 = load i32, i32* %y.addr, align 4, !tbaa !2
  %14 = load i32, i32* %dx.addr, align 4, !tbaa !2
  %15 = load i32, i32* %dy.addr, align 4, !tbaa !2
  %16 = load i32, i32* %average_flag.addr, align 4, !tbaa !2
  call void @form_component_prediction(i8* %add.ptr, i8* %add.ptr9, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %17 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp = icmp ne i32 %17, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.6
  %18 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %shr10 = ashr i32 %18, 1
  store i32 %shr10, i32* %lx.addr, align 4, !tbaa !2
  %19 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %shr11 = ashr i32 %19, 1
  store i32 %shr11, i32* %lx2.addr, align 4, !tbaa !2
  %20 = load i32, i32* %w.addr, align 4, !tbaa !2
  %shr12 = ashr i32 %20, 1
  store i32 %shr12, i32* %w.addr, align 4, !tbaa !2
  %21 = load i32, i32* %x.addr, align 4, !tbaa !2
  %shr13 = ashr i32 %21, 1
  store i32 %shr13, i32* %x.addr, align 4, !tbaa !2
  %22 = load i32, i32* %dx.addr, align 4, !tbaa !2
  %div = sdiv i32 %22, 2
  store i32 %div, i32* %dx.addr, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.6
  %23 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp14 = icmp eq i32 %23, 1
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end
  %24 = load i32, i32* %h.addr, align 4, !tbaa !2
  %shr16 = ashr i32 %24, 1
  store i32 %shr16, i32* %h.addr, align 4, !tbaa !2
  %25 = load i32, i32* %y.addr, align 4, !tbaa !2
  %shr17 = ashr i32 %25, 1
  store i32 %shr17, i32* %y.addr, align 4, !tbaa !2
  %26 = load i32, i32* %dy.addr, align 4, !tbaa !2
  %div18 = sdiv i32 %26, 2
  store i32 %div18, i32* %dy.addr, align 4, !tbaa !2
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end
  %27 = load i8**, i8*** %src.addr, align 8, !tbaa !6
  %arrayidx20 = getelementptr inbounds i8*, i8** %27, i64 1
  %28 = load i8*, i8** %arrayidx20, align 8, !tbaa !6
  %29 = load i32, i32* %sfield.addr, align 4, !tbaa !2
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %if.end.19
  %30 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %shr23 = ashr i32 %30, 1
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.end.19
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi i32 [ %shr23, %cond.true.22 ], [ 0, %cond.false.24 ]
  %idx.ext27 = sext i32 %cond26 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %28, i64 %idx.ext27
  %31 = load i8**, i8*** %dst.addr, align 8, !tbaa !6
  %arrayidx29 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx29, align 8, !tbaa !6
  %33 = load i32, i32* %dfield.addr, align 4, !tbaa !2
  %tobool30 = icmp ne i32 %33, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.33

cond.true.31:                                     ; preds = %cond.end.25
  %34 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %shr32 = ashr i32 %34, 1
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.end.25
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.31
  %cond35 = phi i32 [ %shr32, %cond.true.31 ], [ 0, %cond.false.33 ]
  %idx.ext36 = sext i32 %cond35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %32, i64 %idx.ext36
  %35 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %36 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %37 = load i32, i32* %w.addr, align 4, !tbaa !2
  %38 = load i32, i32* %h.addr, align 4, !tbaa !2
  %39 = load i32, i32* %x.addr, align 4, !tbaa !2
  %40 = load i32, i32* %y.addr, align 4, !tbaa !2
  %41 = load i32, i32* %dx.addr, align 4, !tbaa !2
  %42 = load i32, i32* %dy.addr, align 4, !tbaa !2
  %43 = load i32, i32* %average_flag.addr, align 4, !tbaa !2
  call void @form_component_prediction(i8* %add.ptr28, i8* %add.ptr37, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %44 = load i8**, i8*** %src.addr, align 8, !tbaa !6
  %arrayidx38 = getelementptr inbounds i8*, i8** %44, i64 2
  %45 = load i8*, i8** %arrayidx38, align 8, !tbaa !6
  %46 = load i32, i32* %sfield.addr, align 4, !tbaa !2
  %tobool39 = icmp ne i32 %46, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.42

cond.true.40:                                     ; preds = %cond.end.34
  %47 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %shr41 = ashr i32 %47, 1
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.34
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.40
  %cond44 = phi i32 [ %shr41, %cond.true.40 ], [ 0, %cond.false.42 ]
  %idx.ext45 = sext i32 %cond44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %45, i64 %idx.ext45
  %48 = load i8**, i8*** %dst.addr, align 8, !tbaa !6
  %arrayidx47 = getelementptr inbounds i8*, i8** %48, i64 2
  %49 = load i8*, i8** %arrayidx47, align 8, !tbaa !6
  %50 = load i32, i32* %dfield.addr, align 4, !tbaa !2
  %tobool48 = icmp ne i32 %50, 0
  br i1 %tobool48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.end.43
  %51 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %shr50 = ashr i32 %51, 1
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.43
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.49
  %cond53 = phi i32 [ %shr50, %cond.true.49 ], [ 0, %cond.false.51 ]
  %idx.ext54 = sext i32 %cond53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %49, i64 %idx.ext54
  %52 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %53 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %54 = load i32, i32* %w.addr, align 4, !tbaa !2
  %55 = load i32, i32* %h.addr, align 4, !tbaa !2
  %56 = load i32, i32* %x.addr, align 4, !tbaa !2
  %57 = load i32, i32* %y.addr, align 4, !tbaa !2
  %58 = load i32, i32* %dx.addr, align 4, !tbaa !2
  %59 = load i32, i32* %dy.addr, align 4, !tbaa !2
  %60 = load i32, i32* %average_flag.addr, align 4, !tbaa !2
  call void @form_component_prediction(i8* %add.ptr46, i8* %add.ptr55, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  ret void
}

declare void @Dual_Prime_Arithmetic([2 x i32]*, i32*, i32, i32) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @form_component_prediction(i8* %src, i8* %dst, i32 %lx, i32 %lx2, i32 %w, i32 %h, i32 %x, i32 %y, i32 %dx, i32 %dy, i32 %average_flag) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %lx.addr = alloca i32, align 4
  %lx2.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %average_flag.addr = alloca i32, align 4
  %xint = alloca i32, align 4
  %yint = alloca i32, align 4
  %xh = alloca i32, align 4
  %yh = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  %s = alloca i8*, align 8
  %d = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8, !tbaa !6
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !6
  store i32 %lx, i32* %lx.addr, align 4, !tbaa !2
  store i32 %lx2, i32* %lx2.addr, align 4, !tbaa !2
  store i32 %w, i32* %w.addr, align 4, !tbaa !2
  store i32 %h, i32* %h.addr, align 4, !tbaa !2
  store i32 %x, i32* %x.addr, align 4, !tbaa !2
  store i32 %y, i32* %y.addr, align 4, !tbaa !2
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !2
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !2
  store i32 %average_flag, i32* %average_flag.addr, align 4, !tbaa !2
  %0 = bitcast i32* %xint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %yint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %xh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %yh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i8** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = load i32, i32* %dx.addr, align 4, !tbaa !2
  %shr = ashr i32 %9, 1
  store i32 %shr, i32* %xint, align 4, !tbaa !2
  %10 = load i32, i32* %dy.addr, align 4, !tbaa !2
  %shr1 = ashr i32 %10, 1
  store i32 %shr1, i32* %yint, align 4, !tbaa !2
  %11 = load i32, i32* %dx.addr, align 4, !tbaa !2
  %and = and i32 %11, 1
  store i32 %and, i32* %xh, align 4, !tbaa !2
  %12 = load i32, i32* %dy.addr, align 4, !tbaa !2
  %and2 = and i32 %12, 1
  store i32 %and2, i32* %yh, align 4, !tbaa !2
  %13 = load i8*, i8** %src.addr, align 8, !tbaa !6
  %14 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %15 = load i32, i32* %y.addr, align 4, !tbaa !2
  %16 = load i32, i32* %yint, align 4, !tbaa !2
  %add = add nsw i32 %15, %16
  %mul = mul nsw i32 %14, %add
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %17 = load i32, i32* %x.addr, align 4, !tbaa !2
  %idx.ext3 = sext i32 %17 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext3
  %18 = load i32, i32* %xint, align 4, !tbaa !2
  %idx.ext5 = sext i32 %18 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr4, i64 %idx.ext5
  store i8* %add.ptr6, i8** %s, align 8, !tbaa !6
  %19 = load i8*, i8** %dst.addr, align 8, !tbaa !6
  %20 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %21 = load i32, i32* %y.addr, align 4, !tbaa !2
  %mul7 = mul nsw i32 %20, %21
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %19, i64 %idx.ext8
  %22 = load i32, i32* %x.addr, align 4, !tbaa !2
  %idx.ext10 = sext i32 %22 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr9, i64 %idx.ext10
  store i8* %add.ptr11, i8** %d, align 8, !tbaa !6
  %23 = load i32, i32* %xh, align 4, !tbaa !2
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.else.58, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %24 = load i32, i32* %yh, align 4, !tbaa !2
  %tobool12 = icmp ne i32 %24, 0
  br i1 %tobool12, label %if.else.58, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %25 = load i32, i32* %average_flag.addr, align 4, !tbaa !2
  %tobool13 = icmp ne i32 %25, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.then.14
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %27 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %26, %27
  br i1 %cmp, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %for.body
  %28 = load i32, i32* %i, align 4, !tbaa !2
  %29 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp16 = icmp slt i32 %28, %29
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %30 to i64
  %31 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %32 to i32
  %33 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom18 = sext i32 %33 to i64
  %34 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx19 = getelementptr inbounds i8, i8* %34, i64 %idxprom18
  %35 = load i8, i8* %arrayidx19, align 1, !tbaa !8
  %conv20 = zext i8 %35 to i32
  %add21 = add nsw i32 %conv, %conv20
  store i32 %add21, i32* %v, align 4, !tbaa !2
  %36 = load i32, i32* %v, align 4, !tbaa !2
  %37 = load i32, i32* %v, align 4, !tbaa !2
  %cmp22 = icmp sge i32 %37, 0
  %cond = select i1 %cmp22, i32 1, i32 0
  %add24 = add nsw i32 %36, %cond
  %shr25 = ashr i32 %add24, 1
  %conv26 = trunc i32 %shr25 to i8
  %38 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom27 = sext i32 %38 to i64
  %39 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx28 = getelementptr inbounds i8, i8* %39, i64 %idxprom27
  store i8 %conv26, i8* %arrayidx28, align 1, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %40 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %41 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %42 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext29 = sext i32 %41 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %42, i64 %idx.ext29
  store i8* %add.ptr30, i8** %s, align 8, !tbaa !6
  %43 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %44 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext31 = sext i32 %43 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %44, i64 %idx.ext31
  store i8* %add.ptr32, i8** %d, align 8, !tbaa !6
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %45 = load i32, i32* %j, align 4, !tbaa !2
  %inc34 = add nsw i32 %45, 1
  store i32 %inc34, i32* %j, align 4, !tbaa !2
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.55, %if.else
  %46 = load i32, i32* %j, align 4, !tbaa !2
  %47 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp37 = icmp slt i32 %46, %47
  br i1 %cmp37, label %for.body.39, label %for.end.57

for.body.39:                                      ; preds = %for.cond.36
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.48, %for.body.39
  %48 = load i32, i32* %i, align 4, !tbaa !2
  %49 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp41 = icmp slt i32 %48, %49
  br i1 %cmp41, label %for.body.43, label %for.end.50

for.body.43:                                      ; preds = %for.cond.40
  %50 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom44 = sext i32 %50 to i64
  %51 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx45 = getelementptr inbounds i8, i8* %51, i64 %idxprom44
  %52 = load i8, i8* %arrayidx45, align 1, !tbaa !8
  %53 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom46 = sext i32 %53 to i64
  %54 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx47 = getelementptr inbounds i8, i8* %54, i64 %idxprom46
  store i8 %52, i8* %arrayidx47, align 1, !tbaa !8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.43
  %55 = load i32, i32* %i, align 4, !tbaa !2
  %inc49 = add nsw i32 %55, 1
  store i32 %inc49, i32* %i, align 4, !tbaa !2
  br label %for.cond.40

for.end.50:                                       ; preds = %for.cond.40
  %56 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %57 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext51 = sext i32 %56 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %57, i64 %idx.ext51
  store i8* %add.ptr52, i8** %s, align 8, !tbaa !6
  %58 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %59 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext53 = sext i32 %58 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %59, i64 %idx.ext53
  store i8* %add.ptr54, i8** %d, align 8, !tbaa !6
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.50
  %60 = load i32, i32* %j, align 4, !tbaa !2
  %inc56 = add nsw i32 %60, 1
  store i32 %inc56, i32* %j, align 4, !tbaa !2
  br label %for.cond.36

for.end.57:                                       ; preds = %for.cond.36
  br label %if.end

if.end:                                           ; preds = %for.end.57, %for.end.35
  br label %if.end.318

if.else.58:                                       ; preds = %land.lhs.true, %entry
  %61 = load i32, i32* %xh, align 4, !tbaa !2
  %tobool59 = icmp ne i32 %61, 0
  br i1 %tobool59, label %if.else.138, label %land.lhs.true.60

land.lhs.true.60:                                 ; preds = %if.else.58
  %62 = load i32, i32* %yh, align 4, !tbaa !2
  %tobool61 = icmp ne i32 %62, 0
  br i1 %tobool61, label %if.then.62, label %if.else.138

if.then.62:                                       ; preds = %land.lhs.true.60
  %63 = load i32, i32* %average_flag.addr, align 4, !tbaa !2
  %tobool63 = icmp ne i32 %63, 0
  br i1 %tobool63, label %if.then.64, label %if.else.105

if.then.64:                                       ; preds = %if.then.62
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.102, %if.then.64
  %64 = load i32, i32* %j, align 4, !tbaa !2
  %65 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp66 = icmp slt i32 %64, %65
  br i1 %cmp66, label %for.body.68, label %for.end.104

for.body.68:                                      ; preds = %for.cond.65
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.95, %for.body.68
  %66 = load i32, i32* %i, align 4, !tbaa !2
  %67 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp70 = icmp slt i32 %66, %67
  br i1 %cmp70, label %for.body.72, label %for.end.97

for.body.72:                                      ; preds = %for.cond.69
  %68 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom73 = sext i32 %68 to i64
  %69 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx74 = getelementptr inbounds i8, i8* %69, i64 %idxprom73
  %70 = load i8, i8* %arrayidx74, align 1, !tbaa !8
  %conv75 = zext i8 %70 to i32
  %71 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom76 = sext i32 %71 to i64
  %72 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx77 = getelementptr inbounds i8, i8* %72, i64 %idxprom76
  %73 = load i8, i8* %arrayidx77, align 1, !tbaa !8
  %conv78 = zext i8 %73 to i32
  %74 = load i32, i32* %i, align 4, !tbaa !2
  %75 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %add79 = add nsw i32 %74, %75
  %idxprom80 = sext i32 %add79 to i64
  %76 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx81 = getelementptr inbounds i8, i8* %76, i64 %idxprom80
  %77 = load i8, i8* %arrayidx81, align 1, !tbaa !8
  %conv82 = zext i8 %77 to i32
  %add83 = add nsw i32 %conv78, %conv82
  %add84 = add nsw i32 %add83, 1
  %shr85 = lshr i32 %add84, 1
  %add86 = add i32 %conv75, %shr85
  store i32 %add86, i32* %v, align 4, !tbaa !2
  %78 = load i32, i32* %v, align 4, !tbaa !2
  %79 = load i32, i32* %v, align 4, !tbaa !2
  %cmp87 = icmp sge i32 %79, 0
  %cond89 = select i1 %cmp87, i32 1, i32 0
  %add90 = add nsw i32 %78, %cond89
  %shr91 = ashr i32 %add90, 1
  %conv92 = trunc i32 %shr91 to i8
  %80 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom93 = sext i32 %80 to i64
  %81 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx94 = getelementptr inbounds i8, i8* %81, i64 %idxprom93
  store i8 %conv92, i8* %arrayidx94, align 1, !tbaa !8
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.72
  %82 = load i32, i32* %i, align 4, !tbaa !2
  %inc96 = add nsw i32 %82, 1
  store i32 %inc96, i32* %i, align 4, !tbaa !2
  br label %for.cond.69

for.end.97:                                       ; preds = %for.cond.69
  %83 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %84 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext98 = sext i32 %83 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %84, i64 %idx.ext98
  store i8* %add.ptr99, i8** %s, align 8, !tbaa !6
  %85 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %86 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext100 = sext i32 %85 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %86, i64 %idx.ext100
  store i8* %add.ptr101, i8** %d, align 8, !tbaa !6
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.97
  %87 = load i32, i32* %j, align 4, !tbaa !2
  %inc103 = add nsw i32 %87, 1
  store i32 %inc103, i32* %j, align 4, !tbaa !2
  br label %for.cond.65

for.end.104:                                      ; preds = %for.cond.65
  br label %if.end.137

if.else.105:                                      ; preds = %if.then.62
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.134, %if.else.105
  %88 = load i32, i32* %j, align 4, !tbaa !2
  %89 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp107 = icmp slt i32 %88, %89
  br i1 %cmp107, label %for.body.109, label %for.end.136

for.body.109:                                     ; preds = %for.cond.106
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.127, %for.body.109
  %90 = load i32, i32* %i, align 4, !tbaa !2
  %91 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp111 = icmp slt i32 %90, %91
  br i1 %cmp111, label %for.body.113, label %for.end.129

for.body.113:                                     ; preds = %for.cond.110
  %92 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom114 = sext i32 %92 to i64
  %93 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx115 = getelementptr inbounds i8, i8* %93, i64 %idxprom114
  %94 = load i8, i8* %arrayidx115, align 1, !tbaa !8
  %conv116 = zext i8 %94 to i32
  %95 = load i32, i32* %i, align 4, !tbaa !2
  %96 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %add117 = add nsw i32 %95, %96
  %idxprom118 = sext i32 %add117 to i64
  %97 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx119 = getelementptr inbounds i8, i8* %97, i64 %idxprom118
  %98 = load i8, i8* %arrayidx119, align 1, !tbaa !8
  %conv120 = zext i8 %98 to i32
  %add121 = add nsw i32 %conv116, %conv120
  %add122 = add nsw i32 %add121, 1
  %shr123 = lshr i32 %add122, 1
  %conv124 = trunc i32 %shr123 to i8
  %99 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom125 = sext i32 %99 to i64
  %100 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx126 = getelementptr inbounds i8, i8* %100, i64 %idxprom125
  store i8 %conv124, i8* %arrayidx126, align 1, !tbaa !8
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.113
  %101 = load i32, i32* %i, align 4, !tbaa !2
  %inc128 = add nsw i32 %101, 1
  store i32 %inc128, i32* %i, align 4, !tbaa !2
  br label %for.cond.110

for.end.129:                                      ; preds = %for.cond.110
  %102 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %103 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext130 = sext i32 %102 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %103, i64 %idx.ext130
  store i8* %add.ptr131, i8** %s, align 8, !tbaa !6
  %104 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %105 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext132 = sext i32 %104 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %105, i64 %idx.ext132
  store i8* %add.ptr133, i8** %d, align 8, !tbaa !6
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.129
  %106 = load i32, i32* %j, align 4, !tbaa !2
  %inc135 = add nsw i32 %106, 1
  store i32 %inc135, i32* %j, align 4, !tbaa !2
  br label %for.cond.106

for.end.136:                                      ; preds = %for.cond.106
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %for.end.104
  br label %if.end.317

if.else.138:                                      ; preds = %land.lhs.true.60, %if.else.58
  %107 = load i32, i32* %xh, align 4, !tbaa !2
  %tobool139 = icmp ne i32 %107, 0
  br i1 %tobool139, label %land.lhs.true.140, label %if.else.218

land.lhs.true.140:                                ; preds = %if.else.138
  %108 = load i32, i32* %yh, align 4, !tbaa !2
  %tobool141 = icmp ne i32 %108, 0
  br i1 %tobool141, label %if.else.218, label %if.then.142

if.then.142:                                      ; preds = %land.lhs.true.140
  %109 = load i32, i32* %average_flag.addr, align 4, !tbaa !2
  %tobool143 = icmp ne i32 %109, 0
  br i1 %tobool143, label %if.then.144, label %if.else.185

if.then.144:                                      ; preds = %if.then.142
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.182, %if.then.144
  %110 = load i32, i32* %j, align 4, !tbaa !2
  %111 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp146 = icmp slt i32 %110, %111
  br i1 %cmp146, label %for.body.148, label %for.end.184

for.body.148:                                     ; preds = %for.cond.145
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.175, %for.body.148
  %112 = load i32, i32* %i, align 4, !tbaa !2
  %113 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp150 = icmp slt i32 %112, %113
  br i1 %cmp150, label %for.body.152, label %for.end.177

for.body.152:                                     ; preds = %for.cond.149
  %114 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom153 = sext i32 %114 to i64
  %115 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx154 = getelementptr inbounds i8, i8* %115, i64 %idxprom153
  %116 = load i8, i8* %arrayidx154, align 1, !tbaa !8
  %conv155 = zext i8 %116 to i32
  %117 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom156 = sext i32 %117 to i64
  %118 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx157 = getelementptr inbounds i8, i8* %118, i64 %idxprom156
  %119 = load i8, i8* %arrayidx157, align 1, !tbaa !8
  %conv158 = zext i8 %119 to i32
  %120 = load i32, i32* %i, align 4, !tbaa !2
  %add159 = add nsw i32 %120, 1
  %idxprom160 = sext i32 %add159 to i64
  %121 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx161 = getelementptr inbounds i8, i8* %121, i64 %idxprom160
  %122 = load i8, i8* %arrayidx161, align 1, !tbaa !8
  %conv162 = zext i8 %122 to i32
  %add163 = add nsw i32 %conv158, %conv162
  %add164 = add nsw i32 %add163, 1
  %shr165 = lshr i32 %add164, 1
  %add166 = add i32 %conv155, %shr165
  store i32 %add166, i32* %v, align 4, !tbaa !2
  %123 = load i32, i32* %v, align 4, !tbaa !2
  %124 = load i32, i32* %v, align 4, !tbaa !2
  %cmp167 = icmp sge i32 %124, 0
  %cond169 = select i1 %cmp167, i32 1, i32 0
  %add170 = add nsw i32 %123, %cond169
  %shr171 = ashr i32 %add170, 1
  %conv172 = trunc i32 %shr171 to i8
  %125 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom173 = sext i32 %125 to i64
  %126 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx174 = getelementptr inbounds i8, i8* %126, i64 %idxprom173
  store i8 %conv172, i8* %arrayidx174, align 1, !tbaa !8
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.152
  %127 = load i32, i32* %i, align 4, !tbaa !2
  %inc176 = add nsw i32 %127, 1
  store i32 %inc176, i32* %i, align 4, !tbaa !2
  br label %for.cond.149

for.end.177:                                      ; preds = %for.cond.149
  %128 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %129 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext178 = sext i32 %128 to i64
  %add.ptr179 = getelementptr inbounds i8, i8* %129, i64 %idx.ext178
  store i8* %add.ptr179, i8** %s, align 8, !tbaa !6
  %130 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %131 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext180 = sext i32 %130 to i64
  %add.ptr181 = getelementptr inbounds i8, i8* %131, i64 %idx.ext180
  store i8* %add.ptr181, i8** %d, align 8, !tbaa !6
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.177
  %132 = load i32, i32* %j, align 4, !tbaa !2
  %inc183 = add nsw i32 %132, 1
  store i32 %inc183, i32* %j, align 4, !tbaa !2
  br label %for.cond.145

for.end.184:                                      ; preds = %for.cond.145
  br label %if.end.217

if.else.185:                                      ; preds = %if.then.142
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.214, %if.else.185
  %133 = load i32, i32* %j, align 4, !tbaa !2
  %134 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp187 = icmp slt i32 %133, %134
  br i1 %cmp187, label %for.body.189, label %for.end.216

for.body.189:                                     ; preds = %for.cond.186
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.207, %for.body.189
  %135 = load i32, i32* %i, align 4, !tbaa !2
  %136 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp191 = icmp slt i32 %135, %136
  br i1 %cmp191, label %for.body.193, label %for.end.209

for.body.193:                                     ; preds = %for.cond.190
  %137 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom194 = sext i32 %137 to i64
  %138 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx195 = getelementptr inbounds i8, i8* %138, i64 %idxprom194
  %139 = load i8, i8* %arrayidx195, align 1, !tbaa !8
  %conv196 = zext i8 %139 to i32
  %140 = load i32, i32* %i, align 4, !tbaa !2
  %add197 = add nsw i32 %140, 1
  %idxprom198 = sext i32 %add197 to i64
  %141 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx199 = getelementptr inbounds i8, i8* %141, i64 %idxprom198
  %142 = load i8, i8* %arrayidx199, align 1, !tbaa !8
  %conv200 = zext i8 %142 to i32
  %add201 = add nsw i32 %conv196, %conv200
  %add202 = add nsw i32 %add201, 1
  %shr203 = lshr i32 %add202, 1
  %conv204 = trunc i32 %shr203 to i8
  %143 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom205 = sext i32 %143 to i64
  %144 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx206 = getelementptr inbounds i8, i8* %144, i64 %idxprom205
  store i8 %conv204, i8* %arrayidx206, align 1, !tbaa !8
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.193
  %145 = load i32, i32* %i, align 4, !tbaa !2
  %inc208 = add nsw i32 %145, 1
  store i32 %inc208, i32* %i, align 4, !tbaa !2
  br label %for.cond.190

for.end.209:                                      ; preds = %for.cond.190
  %146 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %147 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext210 = sext i32 %146 to i64
  %add.ptr211 = getelementptr inbounds i8, i8* %147, i64 %idx.ext210
  store i8* %add.ptr211, i8** %s, align 8, !tbaa !6
  %148 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %149 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext212 = sext i32 %148 to i64
  %add.ptr213 = getelementptr inbounds i8, i8* %149, i64 %idx.ext212
  store i8* %add.ptr213, i8** %d, align 8, !tbaa !6
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.end.209
  %150 = load i32, i32* %j, align 4, !tbaa !2
  %inc215 = add nsw i32 %150, 1
  store i32 %inc215, i32* %j, align 4, !tbaa !2
  br label %for.cond.186

for.end.216:                                      ; preds = %for.cond.186
  br label %if.end.217

if.end.217:                                       ; preds = %for.end.216, %for.end.184
  br label %if.end.316

if.else.218:                                      ; preds = %land.lhs.true.140, %if.else.138
  %151 = load i32, i32* %average_flag.addr, align 4, !tbaa !2
  %tobool219 = icmp ne i32 %151, 0
  br i1 %tobool219, label %if.then.220, label %if.else.272

if.then.220:                                      ; preds = %if.else.218
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.269, %if.then.220
  %152 = load i32, i32* %j, align 4, !tbaa !2
  %153 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp222 = icmp slt i32 %152, %153
  br i1 %cmp222, label %for.body.224, label %for.end.271

for.body.224:                                     ; preds = %for.cond.221
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.262, %for.body.224
  %154 = load i32, i32* %i, align 4, !tbaa !2
  %155 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp226 = icmp slt i32 %154, %155
  br i1 %cmp226, label %for.body.228, label %for.end.264

for.body.228:                                     ; preds = %for.cond.225
  %156 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom229 = sext i32 %156 to i64
  %157 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx230 = getelementptr inbounds i8, i8* %157, i64 %idxprom229
  %158 = load i8, i8* %arrayidx230, align 1, !tbaa !8
  %conv231 = zext i8 %158 to i32
  %159 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom232 = sext i32 %159 to i64
  %160 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx233 = getelementptr inbounds i8, i8* %160, i64 %idxprom232
  %161 = load i8, i8* %arrayidx233, align 1, !tbaa !8
  %conv234 = zext i8 %161 to i32
  %162 = load i32, i32* %i, align 4, !tbaa !2
  %add235 = add nsw i32 %162, 1
  %idxprom236 = sext i32 %add235 to i64
  %163 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx237 = getelementptr inbounds i8, i8* %163, i64 %idxprom236
  %164 = load i8, i8* %arrayidx237, align 1, !tbaa !8
  %conv238 = zext i8 %164 to i32
  %add239 = add nsw i32 %conv234, %conv238
  %165 = load i32, i32* %i, align 4, !tbaa !2
  %166 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %add240 = add nsw i32 %165, %166
  %idxprom241 = sext i32 %add240 to i64
  %167 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx242 = getelementptr inbounds i8, i8* %167, i64 %idxprom241
  %168 = load i8, i8* %arrayidx242, align 1, !tbaa !8
  %conv243 = zext i8 %168 to i32
  %add244 = add nsw i32 %add239, %conv243
  %169 = load i32, i32* %i, align 4, !tbaa !2
  %170 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %add245 = add nsw i32 %169, %170
  %add246 = add nsw i32 %add245, 1
  %idxprom247 = sext i32 %add246 to i64
  %171 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx248 = getelementptr inbounds i8, i8* %171, i64 %idxprom247
  %172 = load i8, i8* %arrayidx248, align 1, !tbaa !8
  %conv249 = zext i8 %172 to i32
  %add250 = add nsw i32 %add244, %conv249
  %add251 = add nsw i32 %add250, 2
  %shr252 = lshr i32 %add251, 2
  %add253 = add i32 %conv231, %shr252
  store i32 %add253, i32* %v, align 4, !tbaa !2
  %173 = load i32, i32* %v, align 4, !tbaa !2
  %174 = load i32, i32* %v, align 4, !tbaa !2
  %cmp254 = icmp sge i32 %174, 0
  %cond256 = select i1 %cmp254, i32 1, i32 0
  %add257 = add nsw i32 %173, %cond256
  %shr258 = ashr i32 %add257, 1
  %conv259 = trunc i32 %shr258 to i8
  %175 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom260 = sext i32 %175 to i64
  %176 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx261 = getelementptr inbounds i8, i8* %176, i64 %idxprom260
  store i8 %conv259, i8* %arrayidx261, align 1, !tbaa !8
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.body.228
  %177 = load i32, i32* %i, align 4, !tbaa !2
  %inc263 = add nsw i32 %177, 1
  store i32 %inc263, i32* %i, align 4, !tbaa !2
  br label %for.cond.225

for.end.264:                                      ; preds = %for.cond.225
  %178 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %179 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext265 = sext i32 %178 to i64
  %add.ptr266 = getelementptr inbounds i8, i8* %179, i64 %idx.ext265
  store i8* %add.ptr266, i8** %s, align 8, !tbaa !6
  %180 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %181 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext267 = sext i32 %180 to i64
  %add.ptr268 = getelementptr inbounds i8, i8* %181, i64 %idx.ext267
  store i8* %add.ptr268, i8** %d, align 8, !tbaa !6
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.end.264
  %182 = load i32, i32* %j, align 4, !tbaa !2
  %inc270 = add nsw i32 %182, 1
  store i32 %inc270, i32* %j, align 4, !tbaa !2
  br label %for.cond.221

for.end.271:                                      ; preds = %for.cond.221
  br label %if.end.315

if.else.272:                                      ; preds = %if.else.218
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.312, %if.else.272
  %183 = load i32, i32* %j, align 4, !tbaa !2
  %184 = load i32, i32* %h.addr, align 4, !tbaa !2
  %cmp274 = icmp slt i32 %183, %184
  br i1 %cmp274, label %for.body.276, label %for.end.314

for.body.276:                                     ; preds = %for.cond.273
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.305, %for.body.276
  %185 = load i32, i32* %i, align 4, !tbaa !2
  %186 = load i32, i32* %w.addr, align 4, !tbaa !2
  %cmp278 = icmp slt i32 %185, %186
  br i1 %cmp278, label %for.body.280, label %for.end.307

for.body.280:                                     ; preds = %for.cond.277
  %187 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom281 = sext i32 %187 to i64
  %188 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx282 = getelementptr inbounds i8, i8* %188, i64 %idxprom281
  %189 = load i8, i8* %arrayidx282, align 1, !tbaa !8
  %conv283 = zext i8 %189 to i32
  %190 = load i32, i32* %i, align 4, !tbaa !2
  %add284 = add nsw i32 %190, 1
  %idxprom285 = sext i32 %add284 to i64
  %191 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx286 = getelementptr inbounds i8, i8* %191, i64 %idxprom285
  %192 = load i8, i8* %arrayidx286, align 1, !tbaa !8
  %conv287 = zext i8 %192 to i32
  %add288 = add nsw i32 %conv283, %conv287
  %193 = load i32, i32* %i, align 4, !tbaa !2
  %194 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %add289 = add nsw i32 %193, %194
  %idxprom290 = sext i32 %add289 to i64
  %195 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx291 = getelementptr inbounds i8, i8* %195, i64 %idxprom290
  %196 = load i8, i8* %arrayidx291, align 1, !tbaa !8
  %conv292 = zext i8 %196 to i32
  %add293 = add nsw i32 %add288, %conv292
  %197 = load i32, i32* %i, align 4, !tbaa !2
  %198 = load i32, i32* %lx.addr, align 4, !tbaa !2
  %add294 = add nsw i32 %197, %198
  %add295 = add nsw i32 %add294, 1
  %idxprom296 = sext i32 %add295 to i64
  %199 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx297 = getelementptr inbounds i8, i8* %199, i64 %idxprom296
  %200 = load i8, i8* %arrayidx297, align 1, !tbaa !8
  %conv298 = zext i8 %200 to i32
  %add299 = add nsw i32 %add293, %conv298
  %add300 = add nsw i32 %add299, 2
  %shr301 = lshr i32 %add300, 2
  %conv302 = trunc i32 %shr301 to i8
  %201 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom303 = sext i32 %201 to i64
  %202 = load i8*, i8** %d, align 8, !tbaa !6
  %arrayidx304 = getelementptr inbounds i8, i8* %202, i64 %idxprom303
  store i8 %conv302, i8* %arrayidx304, align 1, !tbaa !8
  br label %for.inc.305

for.inc.305:                                      ; preds = %for.body.280
  %203 = load i32, i32* %i, align 4, !tbaa !2
  %inc306 = add nsw i32 %203, 1
  store i32 %inc306, i32* %i, align 4, !tbaa !2
  br label %for.cond.277

for.end.307:                                      ; preds = %for.cond.277
  %204 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %205 = load i8*, i8** %s, align 8, !tbaa !6
  %idx.ext308 = sext i32 %204 to i64
  %add.ptr309 = getelementptr inbounds i8, i8* %205, i64 %idx.ext308
  store i8* %add.ptr309, i8** %s, align 8, !tbaa !6
  %206 = load i32, i32* %lx2.addr, align 4, !tbaa !2
  %207 = load i8*, i8** %d, align 8, !tbaa !6
  %idx.ext310 = sext i32 %206 to i64
  %add.ptr311 = getelementptr inbounds i8, i8* %207, i64 %idx.ext310
  store i8* %add.ptr311, i8** %d, align 8, !tbaa !6
  br label %for.inc.312

for.inc.312:                                      ; preds = %for.end.307
  %208 = load i32, i32* %j, align 4, !tbaa !2
  %inc313 = add nsw i32 %208, 1
  store i32 %inc313, i32* %j, align 4, !tbaa !2
  br label %for.cond.273

for.end.314:                                      ; preds = %for.cond.273
  br label %if.end.315

if.end.315:                                       ; preds = %for.end.314, %for.end.271
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.end.217
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %if.end.137
  br label %if.end.318

if.end.318:                                       ; preds = %if.end.317, %if.end
  %209 = bitcast i8** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #3
  %210 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #3
  %211 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #3
  %212 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #3
  %213 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #3
  %214 = bitcast i32* %yh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #3
  %215 = bitcast i32* %xh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #3
  %216 = bitcast i32* %yint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #3
  %217 = bitcast i32* %xint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #3
  ret void
}

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
