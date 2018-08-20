; ModuleID = 'motion.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@picture_structure = external global i32, align 4
@top_field_first = external global i32, align 4

; Function Attrs: nounwind ssp uwtable
define void @motion_vectors([2 x [2 x i32]]* %PMV, i32* %dmvector, [2 x i32]* %motion_vertical_field_select, i32 %s, i32 %motion_vector_count, i32 %mv_format, i32 %h_r_size, i32 %v_r_size, i32 %dmv, i32 %mvscale) #0 {
entry:
  %PMV.addr = alloca [2 x [2 x i32]]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %motion_vertical_field_select.addr = alloca [2 x i32]*, align 8
  %s.addr = alloca i32, align 4
  %motion_vector_count.addr = alloca i32, align 4
  %mv_format.addr = alloca i32, align 4
  %h_r_size.addr = alloca i32, align 4
  %v_r_size.addr = alloca i32, align 4
  %dmv.addr = alloca i32, align 4
  %mvscale.addr = alloca i32, align 4
  store [2 x [2 x i32]]* %PMV, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  store i32* %dmvector, i32** %dmvector.addr, align 8, !tbaa !2
  store [2 x i32]* %motion_vertical_field_select, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !2
  store i32 %s, i32* %s.addr, align 4, !tbaa !6
  store i32 %motion_vector_count, i32* %motion_vector_count.addr, align 4, !tbaa !6
  store i32 %mv_format, i32* %mv_format.addr, align 4, !tbaa !6
  store i32 %h_r_size, i32* %h_r_size.addr, align 4, !tbaa !6
  store i32 %v_r_size, i32* %v_r_size.addr, align 4, !tbaa !6
  store i32 %dmv, i32* %dmv.addr, align 4, !tbaa !6
  store i32 %mvscale, i32* %mvscale.addr, align 4, !tbaa !6
  %0 = load i32, i32* %motion_vector_count.addr, align 4, !tbaa !6
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %mv_format.addr, align 4, !tbaa !6
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load i32, i32* %dmv.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %call = call i32 @Get_Bits(i32 1)
  %3 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom = sext i32 %3 to i64
  %4 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx3, align 4, !tbaa !6
  %5 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom4 = sext i32 %5 to i64
  %6 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 1
  %arrayidx6 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i32 0, i64 %idxprom4
  store i32 %call, i32* %arrayidx6, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  %7 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom7 = sext i32 %7 to i64
  %8 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %8, i64 0
  %arrayidx9 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx8, i32 0, i64 %idxprom7
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i32 0
  %9 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %10 = load i32, i32* %h_r_size.addr, align 4, !tbaa !6
  %11 = load i32, i32* %v_r_size.addr, align 4, !tbaa !6
  %12 = load i32, i32* %dmv.addr, align 4, !tbaa !6
  %13 = load i32, i32* %mvscale.addr, align 4, !tbaa !6
  call void @motion_vector(i32* %arraydecay, i32* %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 0)
  %14 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom10 = sext i32 %14 to i64
  %15 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %15, i64 0
  %arrayidx12 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx11, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx12, i32 0, i64 0
  %16 = load i32, i32* %arrayidx13, align 4, !tbaa !6
  %17 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom14 = sext i32 %17 to i64
  %18 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %18, i64 1
  %arrayidx16 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx15, i32 0, i64 %idxprom14
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx16, i32 0, i64 0
  store i32 %16, i32* %arrayidx17, align 4, !tbaa !6
  %19 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom18 = sext i32 %19 to i64
  %20 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  %arrayidx19 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %20, i64 0
  %arrayidx20 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx19, i32 0, i64 %idxprom18
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx20, i32 0, i64 1
  %21 = load i32, i32* %arrayidx21, align 4, !tbaa !6
  %22 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom22 = sext i32 %22 to i64
  %23 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  %arrayidx23 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %23, i64 1
  %arrayidx24 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx23, i32 0, i64 %idxprom22
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx24, i32 0, i64 1
  store i32 %21, i32* %arrayidx25, align 4, !tbaa !6
  br label %if.end.42

if.else:                                          ; preds = %entry
  %call26 = call i32 @Get_Bits(i32 1)
  %24 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom27 = sext i32 %24 to i64
  %25 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !2
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0
  %arrayidx29 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx28, i32 0, i64 %idxprom27
  store i32 %call26, i32* %arrayidx29, align 4, !tbaa !6
  %26 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom30 = sext i32 %26 to i64
  %27 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  %arrayidx31 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %27, i64 0
  %arrayidx32 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx31, i32 0, i64 %idxprom30
  %arraydecay33 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx32, i32 0, i32 0
  %28 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %29 = load i32, i32* %h_r_size.addr, align 4, !tbaa !6
  %30 = load i32, i32* %v_r_size.addr, align 4, !tbaa !6
  %31 = load i32, i32* %dmv.addr, align 4, !tbaa !6
  %32 = load i32, i32* %mvscale.addr, align 4, !tbaa !6
  call void @motion_vector(i32* %arraydecay33, i32* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 0)
  %call34 = call i32 @Get_Bits(i32 1)
  %33 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom35 = sext i32 %33 to i64
  %34 = load [2 x i32]*, [2 x i32]** %motion_vertical_field_select.addr, align 8, !tbaa !2
  %arrayidx36 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 1
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx36, i32 0, i64 %idxprom35
  store i32 %call34, i32* %arrayidx37, align 4, !tbaa !6
  %35 = load i32, i32* %s.addr, align 4, !tbaa !6
  %idxprom38 = sext i32 %35 to i64
  %36 = load [2 x [2 x i32]]*, [2 x [2 x i32]]** %PMV.addr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %36, i64 1
  %arrayidx40 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %arrayidx39, i32 0, i64 %idxprom38
  %arraydecay41 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx40, i32 0, i32 0
  %37 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %38 = load i32, i32* %h_r_size.addr, align 4, !tbaa !6
  %39 = load i32, i32* %v_r_size.addr, align 4, !tbaa !6
  %40 = load i32, i32* %dmv.addr, align 4, !tbaa !6
  %41 = load i32, i32* %mvscale.addr, align 4, !tbaa !6
  call void @motion_vector(i32* %arraydecay41, i32* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 0)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.end
  ret void
}

declare i32 @Get_Bits(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @motion_vector(i32* %PMV, i32* %dmvector, i32 %h_r_size, i32 %v_r_size, i32 %dmv, i32 %mvscale, i32 %full_pel_vector) #0 {
entry:
  %PMV.addr = alloca i32*, align 8
  %dmvector.addr = alloca i32*, align 8
  %h_r_size.addr = alloca i32, align 4
  %v_r_size.addr = alloca i32, align 4
  %dmv.addr = alloca i32, align 4
  %mvscale.addr = alloca i32, align 4
  %full_pel_vector.addr = alloca i32, align 4
  %motion_code = alloca i32, align 4
  %motion_residual = alloca i32, align 4
  store i32* %PMV, i32** %PMV.addr, align 8, !tbaa !2
  store i32* %dmvector, i32** %dmvector.addr, align 8, !tbaa !2
  store i32 %h_r_size, i32* %h_r_size.addr, align 4, !tbaa !6
  store i32 %v_r_size, i32* %v_r_size.addr, align 4, !tbaa !6
  store i32 %dmv, i32* %dmv.addr, align 4, !tbaa !6
  store i32 %mvscale, i32* %mvscale.addr, align 4, !tbaa !6
  store i32 %full_pel_vector, i32* %full_pel_vector.addr, align 4, !tbaa !6
  %0 = bitcast i32* %motion_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %motion_residual to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %call = call i32 @Get_motion_code()
  store i32 %call, i32* %motion_code, align 4, !tbaa !6
  %2 = load i32, i32* %h_r_size.addr, align 4, !tbaa !6
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %motion_code, align 4, !tbaa !6
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i32, i32* %h_r_size.addr, align 4, !tbaa !6
  %call2 = call i32 @Get_Bits(i32 %4)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %motion_residual, align 4, !tbaa !6
  %5 = load i32*, i32** %PMV.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %h_r_size.addr, align 4, !tbaa !6
  %7 = load i32, i32* %motion_code, align 4, !tbaa !6
  %8 = load i32, i32* %motion_residual, align 4, !tbaa !6
  %9 = load i32, i32* %full_pel_vector.addr, align 4, !tbaa !6
  call void @decode_motion_vector(i32* %arrayidx, i32 %6, i32 %7, i32 %8, i32 %9)
  %10 = load i32, i32* %dmv.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call3 = call i32 @Get_dmvector()
  %11 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %call5 = call i32 @Get_motion_code()
  store i32 %call5, i32* %motion_code, align 4, !tbaa !6
  %12 = load i32, i32* %v_r_size.addr, align 4, !tbaa !6
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %land.lhs.true.7, label %cond.false.11

land.lhs.true.7:                                  ; preds = %if.end
  %13 = load i32, i32* %motion_code, align 4, !tbaa !6
  %cmp8 = icmp ne i32 %13, 0
  br i1 %cmp8, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %land.lhs.true.7
  %14 = load i32, i32* %v_r_size.addr, align 4, !tbaa !6
  %call10 = call i32 @Get_Bits(i32 %14)
  br label %cond.end.12

cond.false.11:                                    ; preds = %land.lhs.true.7, %if.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.9
  %cond13 = phi i32 [ %call10, %cond.true.9 ], [ 0, %cond.false.11 ]
  store i32 %cond13, i32* %motion_residual, align 4, !tbaa !6
  %15 = load i32, i32* %mvscale.addr, align 4, !tbaa !6
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %cond.end.12
  %16 = load i32*, i32** %PMV.addr, align 8, !tbaa !2
  %arrayidx16 = getelementptr inbounds i32, i32* %16, i64 1
  %17 = load i32, i32* %arrayidx16, align 4, !tbaa !6
  %shr = ashr i32 %17, 1
  store i32 %shr, i32* %arrayidx16, align 4, !tbaa !6
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %cond.end.12
  %18 = load i32*, i32** %PMV.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i32, i32* %18, i64 1
  %19 = load i32, i32* %v_r_size.addr, align 4, !tbaa !6
  %20 = load i32, i32* %motion_code, align 4, !tbaa !6
  %21 = load i32, i32* %motion_residual, align 4, !tbaa !6
  %22 = load i32, i32* %full_pel_vector.addr, align 4, !tbaa !6
  call void @decode_motion_vector(i32* %arrayidx18, i32 %19, i32 %20, i32 %21, i32 %22)
  %23 = load i32, i32* %mvscale.addr, align 4, !tbaa !6
  %tobool19 = icmp ne i32 %23, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %24 = load i32*, i32** %PMV.addr, align 8, !tbaa !2
  %arrayidx21 = getelementptr inbounds i32, i32* %24, i64 1
  %25 = load i32, i32* %arrayidx21, align 4, !tbaa !6
  %shl = shl i32 %25, 1
  store i32 %shl, i32* %arrayidx21, align 4, !tbaa !6
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  %26 = load i32, i32* %dmv.addr, align 4, !tbaa !6
  %tobool23 = icmp ne i32 %26, 0
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.22
  %call25 = call i32 @Get_dmvector()
  %27 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %call25, i32* %arrayidx26, align 4, !tbaa !6
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.22
  %28 = bitcast i32* %motion_residual to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #3
  %29 = bitcast i32* %motion_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @Get_motion_code() #1

; Function Attrs: nounwind ssp uwtable
define internal void @decode_motion_vector(i32* %pred, i32 %r_size, i32 %motion_code, i32 %motion_residual, i32 %full_pel_vector) #0 {
entry:
  %pred.addr = alloca i32*, align 8
  %r_size.addr = alloca i32, align 4
  %motion_code.addr = alloca i32, align 4
  %motion_residual.addr = alloca i32, align 4
  %full_pel_vector.addr = alloca i32, align 4
  %lim = alloca i32, align 4
  %vec = alloca i32, align 4
  store i32* %pred, i32** %pred.addr, align 8, !tbaa !2
  store i32 %r_size, i32* %r_size.addr, align 4, !tbaa !6
  store i32 %motion_code, i32* %motion_code.addr, align 4, !tbaa !6
  store i32 %motion_residual, i32* %motion_residual.addr, align 4, !tbaa !6
  store i32 %full_pel_vector, i32* %full_pel_vector.addr, align 4, !tbaa !6
  %0 = bitcast i32* %lim to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %vec to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = load i32, i32* %r_size.addr, align 4, !tbaa !6
  %shl = shl i32 16, %2
  store i32 %shl, i32* %lim, align 4, !tbaa !6
  %3 = load i32, i32* %full_pel_vector.addr, align 4, !tbaa !6
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32*, i32** %pred.addr, align 8, !tbaa !2
  %5 = load i32, i32* %4, align 4, !tbaa !6
  %shr = ashr i32 %5, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32*, i32** %pred.addr, align 8, !tbaa !2
  %7 = load i32, i32* %6, align 4, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %vec, align 4, !tbaa !6
  %8 = load i32, i32* %motion_code.addr, align 4, !tbaa !6
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %9 = load i32, i32* %motion_code.addr, align 4, !tbaa !6
  %sub = sub nsw i32 %9, 1
  %10 = load i32, i32* %r_size.addr, align 4, !tbaa !6
  %shl1 = shl i32 %sub, %10
  %11 = load i32, i32* %motion_residual.addr, align 4, !tbaa !6
  %add = add nsw i32 %shl1, %11
  %add2 = add nsw i32 %add, 1
  %12 = load i32, i32* %vec, align 4, !tbaa !6
  %add3 = add nsw i32 %12, %add2
  store i32 %add3, i32* %vec, align 4, !tbaa !6
  %13 = load i32, i32* %vec, align 4, !tbaa !6
  %14 = load i32, i32* %lim, align 4, !tbaa !6
  %cmp4 = icmp sge i32 %13, %14
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %15 = load i32, i32* %lim, align 4, !tbaa !6
  %16 = load i32, i32* %lim, align 4, !tbaa !6
  %add6 = add nsw i32 %15, %16
  %17 = load i32, i32* %vec, align 4, !tbaa !6
  %sub7 = sub nsw i32 %17, %add6
  store i32 %sub7, i32* %vec, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.23

if.else:                                          ; preds = %cond.end
  %18 = load i32, i32* %motion_code.addr, align 4, !tbaa !6
  %cmp8 = icmp slt i32 %18, 0
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.else
  %19 = load i32, i32* %motion_code.addr, align 4, !tbaa !6
  %sub10 = sub nsw i32 0, %19
  %sub11 = sub nsw i32 %sub10, 1
  %20 = load i32, i32* %r_size.addr, align 4, !tbaa !6
  %shl12 = shl i32 %sub11, %20
  %21 = load i32, i32* %motion_residual.addr, align 4, !tbaa !6
  %add13 = add nsw i32 %shl12, %21
  %add14 = add nsw i32 %add13, 1
  %22 = load i32, i32* %vec, align 4, !tbaa !6
  %sub15 = sub nsw i32 %22, %add14
  store i32 %sub15, i32* %vec, align 4, !tbaa !6
  %23 = load i32, i32* %vec, align 4, !tbaa !6
  %24 = load i32, i32* %lim, align 4, !tbaa !6
  %sub16 = sub nsw i32 0, %24
  %cmp17 = icmp slt i32 %23, %sub16
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.then.9
  %25 = load i32, i32* %lim, align 4, !tbaa !6
  %26 = load i32, i32* %lim, align 4, !tbaa !6
  %add19 = add nsw i32 %25, %26
  %27 = load i32, i32* %vec, align 4, !tbaa !6
  %add20 = add nsw i32 %27, %add19
  store i32 %add20, i32* %vec, align 4, !tbaa !6
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.then.9
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %28 = load i32, i32* %full_pel_vector.addr, align 4, !tbaa !6
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %if.end.23
  %29 = load i32, i32* %vec, align 4, !tbaa !6
  %shl26 = shl i32 %29, 1
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.end.23
  %30 = load i32, i32* %vec, align 4, !tbaa !6
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi i32 [ %shl26, %cond.true.25 ], [ %30, %cond.false.27 ]
  %31 = load i32*, i32** %pred.addr, align 8, !tbaa !2
  store i32 %cond29, i32* %31, align 4, !tbaa !6
  %32 = bitcast i32* %vec to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #3
  %33 = bitcast i32* %lim to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #3
  ret void
}

declare i32 @Get_dmvector() #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @Dual_Prime_Arithmetic([2 x i32]* %DMV, i32* %dmvector, i32 %mvx, i32 %mvy) #0 {
entry:
  %DMV.addr = alloca [2 x i32]*, align 8
  %dmvector.addr = alloca i32*, align 8
  %mvx.addr = alloca i32, align 4
  %mvy.addr = alloca i32, align 4
  store [2 x i32]* %DMV, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  store i32* %dmvector, i32** %dmvector.addr, align 8, !tbaa !2
  store i32 %mvx, i32* %mvx.addr, align 4, !tbaa !6
  store i32 %mvy, i32* %mvy.addr, align 4, !tbaa !6
  %0 = load i32, i32* @picture_structure, align 4, !tbaa !6
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else.68

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @top_field_first, align 4, !tbaa !6
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %2 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %3 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %cmp2 = icmp sgt i32 %3, 0
  %conv = zext i1 %cmp2 to i32
  %add = add nsw i32 %2, %conv
  %shr = ashr i32 %add, 1
  %4 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !6
  %add3 = add nsw i32 %shr, %5
  %6 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx4, i32 0, i64 0
  store i32 %add3, i32* %arrayidx5, align 4, !tbaa !6
  %7 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %8 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %cmp6 = icmp sgt i32 %8, 0
  %conv7 = zext i1 %cmp6 to i32
  %add8 = add nsw i32 %7, %conv7
  %shr9 = ashr i32 %add8, 1
  %9 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx10, align 4, !tbaa !6
  %add11 = add nsw i32 %shr9, %10
  %sub = sub nsw i32 %add11, 1
  %11 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx12, i32 0, i64 1
  store i32 %sub, i32* %arrayidx13, align 4, !tbaa !6
  %12 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %mul = mul nsw i32 3, %12
  %13 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %cmp14 = icmp sgt i32 %13, 0
  %conv15 = zext i1 %cmp14 to i32
  %add16 = add nsw i32 %mul, %conv15
  %shr17 = ashr i32 %add16, 1
  %14 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx18 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx18, align 4, !tbaa !6
  %add19 = add nsw i32 %shr17, %15
  %16 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 1
  %arrayidx21 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx20, i32 0, i64 0
  store i32 %add19, i32* %arrayidx21, align 4, !tbaa !6
  %17 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %mul22 = mul nsw i32 3, %17
  %18 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %cmp23 = icmp sgt i32 %18, 0
  %conv24 = zext i1 %cmp23 to i32
  %add25 = add nsw i32 %mul22, %conv24
  %shr26 = ashr i32 %add25, 1
  %19 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx27 = getelementptr inbounds i32, i32* %19, i64 1
  %20 = load i32, i32* %arrayidx27, align 4, !tbaa !6
  %add28 = add nsw i32 %shr26, %20
  %add29 = add nsw i32 %add28, 1
  %21 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 1
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx30, i32 0, i64 1
  store i32 %add29, i32* %arrayidx31, align 4, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %if.then
  %22 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %mul32 = mul nsw i32 3, %22
  %23 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %cmp33 = icmp sgt i32 %23, 0
  %conv34 = zext i1 %cmp33 to i32
  %add35 = add nsw i32 %mul32, %conv34
  %shr36 = ashr i32 %add35, 1
  %24 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx37 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx37, align 4, !tbaa !6
  %add38 = add nsw i32 %shr36, %25
  %26 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0
  %arrayidx40 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx39, i32 0, i64 0
  store i32 %add38, i32* %arrayidx40, align 4, !tbaa !6
  %27 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %mul41 = mul nsw i32 3, %27
  %28 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %cmp42 = icmp sgt i32 %28, 0
  %conv43 = zext i1 %cmp42 to i32
  %add44 = add nsw i32 %mul41, %conv43
  %shr45 = ashr i32 %add44, 1
  %29 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx46 = getelementptr inbounds i32, i32* %29, i64 1
  %30 = load i32, i32* %arrayidx46, align 4, !tbaa !6
  %add47 = add nsw i32 %shr45, %30
  %sub48 = sub nsw i32 %add47, 1
  %31 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0
  %arrayidx50 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx49, i32 0, i64 1
  store i32 %sub48, i32* %arrayidx50, align 4, !tbaa !6
  %32 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %33 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %cmp51 = icmp sgt i32 %33, 0
  %conv52 = zext i1 %cmp51 to i32
  %add53 = add nsw i32 %32, %conv52
  %shr54 = ashr i32 %add53, 1
  %34 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx55 = getelementptr inbounds i32, i32* %34, i64 0
  %35 = load i32, i32* %arrayidx55, align 4, !tbaa !6
  %add56 = add nsw i32 %shr54, %35
  %36 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx57 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 1
  %arrayidx58 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx57, i32 0, i64 0
  store i32 %add56, i32* %arrayidx58, align 4, !tbaa !6
  %37 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %38 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %cmp59 = icmp sgt i32 %38, 0
  %conv60 = zext i1 %cmp59 to i32
  %add61 = add nsw i32 %37, %conv60
  %shr62 = ashr i32 %add61, 1
  %39 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx63 = getelementptr inbounds i32, i32* %39, i64 1
  %40 = load i32, i32* %arrayidx63, align 4, !tbaa !6
  %add64 = add nsw i32 %shr62, %40
  %add65 = add nsw i32 %add64, 1
  %41 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx66 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 1
  %arrayidx67 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx66, i32 0, i64 1
  store i32 %add65, i32* %arrayidx67, align 4, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  br label %if.end.94

if.else.68:                                       ; preds = %entry
  %42 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %43 = load i32, i32* %mvx.addr, align 4, !tbaa !6
  %cmp69 = icmp sgt i32 %43, 0
  %conv70 = zext i1 %cmp69 to i32
  %add71 = add nsw i32 %42, %conv70
  %shr72 = ashr i32 %add71, 1
  %44 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx73 = getelementptr inbounds i32, i32* %44, i64 0
  %45 = load i32, i32* %arrayidx73, align 4, !tbaa !6
  %add74 = add nsw i32 %shr72, %45
  %46 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx75 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0
  %arrayidx76 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx75, i32 0, i64 0
  store i32 %add74, i32* %arrayidx76, align 4, !tbaa !6
  %47 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %48 = load i32, i32* %mvy.addr, align 4, !tbaa !6
  %cmp77 = icmp sgt i32 %48, 0
  %conv78 = zext i1 %cmp77 to i32
  %add79 = add nsw i32 %47, %conv78
  %shr80 = ashr i32 %add79, 1
  %49 = load i32*, i32** %dmvector.addr, align 8, !tbaa !2
  %arrayidx81 = getelementptr inbounds i32, i32* %49, i64 1
  %50 = load i32, i32* %arrayidx81, align 4, !tbaa !6
  %add82 = add nsw i32 %shr80, %50
  %51 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0
  %arrayidx84 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx83, i32 0, i64 1
  store i32 %add82, i32* %arrayidx84, align 4, !tbaa !6
  %52 = load i32, i32* @picture_structure, align 4, !tbaa !6
  %cmp85 = icmp eq i32 %52, 1
  br i1 %cmp85, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %if.else.68
  %53 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx88 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0
  %arrayidx89 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx88, i32 0, i64 1
  %54 = load i32, i32* %arrayidx89, align 4, !tbaa !6
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %arrayidx89, align 4, !tbaa !6
  br label %if.end.93

if.else.90:                                       ; preds = %if.else.68
  %55 = load [2 x i32]*, [2 x i32]** %DMV.addr, align 8, !tbaa !2
  %arrayidx91 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx91, i32 0, i64 1
  %56 = load i32, i32* %arrayidx92, align 4, !tbaa !6
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %arrayidx92, align 4, !tbaa !6
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.87
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end
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
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
