; ModuleID = 'getbits.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }

@ld = external global %struct.layer_data*, align 8
@System_Stream_Flag = external global i32, align 4

; Function Attrs: nounwind ssp uwtable
define void @Initialize_Buffer() #0 {
entry:
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Incnt = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 6
  store i32 0, i32* %Incnt, align 4, !tbaa !6
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2048
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 2
  store i8* %add.ptr, i8** %Rdptr, align 8, !tbaa !9
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 2
  %4 = load i8*, i8** %Rdptr1, align 8, !tbaa !9
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 5
  store i8* %4, i8** %Rdmax, align 8, !tbaa !10
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 4
  store i32 0, i32* %Bfr, align 4, !tbaa !11
  call void @Flush_Buffer(i32 0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Flush_Buffer(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  %Incnt = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4, !tbaa !12
  %0 = bitcast i32* %Incnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %N.addr, align 4, !tbaa !12
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 4
  %3 = load i32, i32* %Bfr, align 4, !tbaa !11
  %shl = shl i32 %3, %1
  store i32 %shl, i32* %Bfr, align 4, !tbaa !11
  %4 = load i32, i32* %N.addr, align 4, !tbaa !12
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Incnt1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 6
  %6 = load i32, i32* %Incnt1, align 4, !tbaa !6
  %sub = sub nsw i32 %6, %4
  store i32 %sub, i32* %Incnt1, align 4, !tbaa !6
  store i32 %sub, i32* %Incnt, align 4, !tbaa !12
  %7 = load i32, i32* %Incnt, align 4, !tbaa !12
  %cmp = icmp sle i32 %7, 24
  br i1 %cmp, label %if.then, label %if.end.52

if.then:                                          ; preds = %entry
  %8 = load i32, i32* @System_Stream_Flag, align 4, !tbaa !12
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %9, i32 0, i32 2
  %10 = load i8*, i8** %Rdptr, align 8, !tbaa !9
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 5
  %12 = load i8*, i8** %Rdmax, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 -4
  %cmp2 = icmp uge i8* %10, %add.ptr
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.3
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i32 0, i32 2
  %14 = load i8*, i8** %Rdptr4, align 8, !tbaa !9
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdmax5 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 5
  %16 = load i8*, i8** %Rdmax5, align 8, !tbaa !10
  %cmp6 = icmp uge i8* %14, %16
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %do.body
  call void @Next_Packet()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %do.body
  %call = call i32 @Get_Byte()
  %17 = load i32, i32* %Incnt, align 4, !tbaa !12
  %sub8 = sub nsw i32 24, %17
  %shl9 = shl i32 %call, %sub8
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Bfr10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 4
  %19 = load i32, i32* %Bfr10, align 4, !tbaa !11
  %or = or i32 %19, %shl9
  store i32 %or, i32* %Bfr10, align 4, !tbaa !11
  %20 = load i32, i32* %Incnt, align 4, !tbaa !12
  %add = add nsw i32 %20, 8
  store i32 %add, i32* %Incnt, align 4, !tbaa !12
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %21 = load i32, i32* %Incnt, align 4, !tbaa !12
  %cmp11 = icmp sle i32 %21, 24
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true, %if.then
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 2
  %23 = load i8*, i8** %Rdptr12, align 8, !tbaa !9
  %24 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i8, i8* %arraydecay, i64 2044
  %cmp14 = icmp ult i8* %23, %add.ptr13
  br i1 %cmp14, label %if.then.15, label %if.else.27

if.then.15:                                       ; preds = %if.else
  br label %do.body.16

do.body.16:                                       ; preds = %do.cond.23, %if.then.15
  %25 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %25, i32 0, i32 2
  %26 = load i8*, i8** %Rdptr17, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %Rdptr17, align 8, !tbaa !9
  %27 = load i8, i8* %26, align 1, !tbaa !13
  %conv = zext i8 %27 to i32
  %28 = load i32, i32* %Incnt, align 4, !tbaa !12
  %sub18 = sub nsw i32 24, %28
  %shl19 = shl i32 %conv, %sub18
  %29 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Bfr20 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %29, i32 0, i32 4
  %30 = load i32, i32* %Bfr20, align 4, !tbaa !11
  %or21 = or i32 %30, %shl19
  store i32 %or21, i32* %Bfr20, align 4, !tbaa !11
  %31 = load i32, i32* %Incnt, align 4, !tbaa !12
  %add22 = add nsw i32 %31, 8
  store i32 %add22, i32* %Incnt, align 4, !tbaa !12
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.16
  %32 = load i32, i32* %Incnt, align 4, !tbaa !12
  %cmp24 = icmp sle i32 %32, 24
  br i1 %cmp24, label %do.body.16, label %do.end.26

do.end.26:                                        ; preds = %do.cond.23
  br label %if.end.49

if.else.27:                                       ; preds = %if.else
  br label %do.body.28

do.body.28:                                       ; preds = %do.cond.45, %if.else.27
  %33 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %33, i32 0, i32 2
  %34 = load i8*, i8** %Rdptr29, align 8, !tbaa !9
  %35 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr30 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %35, i32 0, i32 1
  %arraydecay31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr30, i32 0, i32 0
  %add.ptr32 = getelementptr inbounds i8, i8* %arraydecay31, i64 2048
  %cmp33 = icmp uge i8* %34, %add.ptr32
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %do.body.28
  call void @Fill_Buffer()
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %do.body.28
  %36 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr37 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %36, i32 0, i32 2
  %37 = load i8*, i8** %Rdptr37, align 8, !tbaa !9
  %incdec.ptr38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr38, i8** %Rdptr37, align 8, !tbaa !9
  %38 = load i8, i8* %37, align 1, !tbaa !13
  %conv39 = zext i8 %38 to i32
  %39 = load i32, i32* %Incnt, align 4, !tbaa !12
  %sub40 = sub nsw i32 24, %39
  %shl41 = shl i32 %conv39, %sub40
  %40 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Bfr42 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %40, i32 0, i32 4
  %41 = load i32, i32* %Bfr42, align 4, !tbaa !11
  %or43 = or i32 %41, %shl41
  store i32 %or43, i32* %Bfr42, align 4, !tbaa !11
  %42 = load i32, i32* %Incnt, align 4, !tbaa !12
  %add44 = add nsw i32 %42, 8
  store i32 %add44, i32* %Incnt, align 4, !tbaa !12
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.36
  %43 = load i32, i32* %Incnt, align 4, !tbaa !12
  %cmp46 = icmp sle i32 %43, 24
  br i1 %cmp46, label %do.body.28, label %do.end.48

do.end.48:                                        ; preds = %do.cond.45
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %do.end.26
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %do.end
  %44 = load i32, i32* %Incnt, align 4, !tbaa !12
  %45 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Incnt51 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %45, i32 0, i32 6
  store i32 %44, i32* %Incnt51, align 4, !tbaa !6
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %entry
  %46 = bitcast i32* %Incnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Fill_Buffer() #0 {
entry:
  %Buffer_Level = alloca i32, align 4
  %0 = bitcast i32* %Buffer_Level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Infile = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 0
  %2 = load i32, i32* %Infile, align 4, !tbaa !14
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %call = call i64 @"\01_read"(i32 %2, i8* %arraydecay, i64 2048)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %Buffer_Level, align 4, !tbaa !12
  %4 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %4, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr1, i32 0, i32 0
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 2
  store i8* %arraydecay2, i8** %Rdptr, align 8, !tbaa !9
  %6 = load i32, i32* @System_Stream_Flag, align 4, !tbaa !12
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 5
  %8 = load i8*, i8** %Rdmax, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 -2048
  store i8* %add.ptr, i8** %Rdmax, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %cmp = icmp slt i32 %9, 2048
  br i1 %cmp, label %if.then.4, label %if.end.32

if.then.4:                                        ; preds = %if.end
  %10 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  store i32 0, i32* %Buffer_Level, align 4, !tbaa !12
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %11 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %and = and i32 %11, 3
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %Buffer_Level, align 4, !tbaa !12
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr10, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.11

while.cond.11:                                    ; preds = %while.body.14, %while.end
  %14 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %cmp12 = icmp slt i32 %14, 2048
  br i1 %cmp12, label %while.body.14, label %while.end.31

while.body.14:                                    ; preds = %while.cond.11
  %15 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %Buffer_Level, align 4, !tbaa !12
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %16, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr17, i32 0, i64 %idxprom16
  store i8 0, i8* %arrayidx18, align 1, !tbaa !13
  %17 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %Buffer_Level, align 4, !tbaa !12
  %idxprom20 = sext i32 %17 to i64
  %18 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr21 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %18, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr21, i32 0, i64 %idxprom20
  store i8 0, i8* %arrayidx22, align 1, !tbaa !13
  %19 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %Buffer_Level, align 4, !tbaa !12
  %idxprom24 = sext i32 %19 to i64
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr25 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr25, i32 0, i64 %idxprom24
  store i8 1, i8* %arrayidx26, align 1, !tbaa !13
  %21 = load i32, i32* %Buffer_Level, align 4, !tbaa !12
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, i32* %Buffer_Level, align 4, !tbaa !12
  %idxprom28 = sext i32 %21 to i64
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr29 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr29, i32 0, i64 %idxprom28
  store i8 -73, i8* %arrayidx30, align 1, !tbaa !13
  br label %while.cond.11

while.end.31:                                     ; preds = %while.cond.11
  br label %if.end.32

if.end.32:                                        ; preds = %while.end.31, %if.end
  %23 = bitcast i32* %Buffer_Level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @"\01_read"(i32, i8*, i64) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @Get_Byte() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 2
  %1 = load i8*, i8** %Rdptr, align 8, !tbaa !9
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2048
  %cmp = icmp uge i8* %1, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Infile = getelementptr inbounds %struct.layer_data, %struct.layer_data* %3, i32 0, i32 0
  %4 = load i32, i32* %Infile, align 4, !tbaa !14
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdbfr1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 1
  %arraydecay2 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr1, i32 0, i32 0
  %call = call i64 @"\01_read"(i32 %4, i8* %arraydecay2, i64 2048)
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 2
  %7 = load i8*, i8** %Rdptr3, align 8, !tbaa !9
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 -2048
  store i8* %add.ptr4, i8** %Rdptr3, align 8, !tbaa !9
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 5
  %9 = load i8*, i8** %Rdmax, align 8, !tbaa !10
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 -2048
  store i8* %add.ptr5, i8** %Rdmax, align 8, !tbaa !10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Rdptr6 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 2
  %11 = load i8*, i8** %Rdptr6, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %Rdptr6, align 8, !tbaa !9
  %12 = load i8, i8* %11, align 1, !tbaa !13
  %conv = zext i8 %12 to i32
  ret i32 %conv
}

; Function Attrs: nounwind ssp uwtable
define i32 @Get_Word() #0 {
entry:
  %Val = alloca i32, align 4
  %0 = bitcast i32* %Val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %call = call i32 @Get_Byte()
  store i32 %call, i32* %Val, align 4, !tbaa !12
  %1 = load i32, i32* %Val, align 4, !tbaa !12
  %shl = shl i32 %1, 8
  %call1 = call i32 @Get_Byte()
  %or = or i32 %shl, %call1
  %2 = bitcast i32* %Val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #3
  ret i32 %or
}

; Function Attrs: nounwind ssp uwtable
define i32 @Show_Bits(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4, !tbaa !12
  %0 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !2
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %0, i32 0, i32 4
  %1 = load i32, i32* %Bfr, align 4, !tbaa !11
  %2 = load i32, i32* %N.addr, align 4, !tbaa !12
  %sub = sub nsw i32 32, %2
  %shr = lshr i32 %1, %sub
  ret i32 %shr
}

; Function Attrs: nounwind ssp uwtable
define i32 @Get_Bits1() #0 {
entry:
  %call = call i32 @Get_Bits(i32 1)
  ret i32 %call
}

; Function Attrs: nounwind ssp uwtable
define i32 @Get_Bits(i32 %N) #0 {
entry:
  %N.addr = alloca i32, align 4
  %Val = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4, !tbaa !12
  %0 = bitcast i32* %Val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %N.addr, align 4, !tbaa !12
  %call = call i32 @Show_Bits(i32 %1)
  store i32 %call, i32* %Val, align 4, !tbaa !12
  %2 = load i32, i32* %N.addr, align 4, !tbaa !12
  call void @Flush_Buffer(i32 %2)
  %3 = load i32, i32* %Val, align 4, !tbaa !12
  %4 = bitcast i32* %Val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #3
  ret i32 %3
}

declare void @Next_Packet() #2

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
!6 = !{!7, !8, i64 2096}
!7 = !{!"layer_data", !8, i64 0, !4, i64 4, !3, i64 2056, !4, i64 2064, !8, i64 2080, !3, i64 2088, !8, i64 2096, !8, i64 2100, !4, i64 2104, !4, i64 2360, !4, i64 2616, !4, i64 2872, !8, i64 3128, !8, i64 3132, !8, i64 3136, !8, i64 3140, !8, i64 3144, !8, i64 3148, !8, i64 3152, !8, i64 3156, !8, i64 3160, !8, i64 3164, !8, i64 3168, !8, i64 3172, !4, i64 3176}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 2056}
!10 = !{!7, !3, i64 2088}
!11 = !{!7, !8, i64 2080}
!12 = !{!8, !8, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!7, !8, i64 0}
