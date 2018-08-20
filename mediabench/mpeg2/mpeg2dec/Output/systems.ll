; ModuleID = 'systems.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@ld = external global %struct.layer_data*, align 8
@.str = private unnamed_addr constant [19 x i8] c"MPEG-2 PES packet\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Error in packet header\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unexpected startcode %08x in system layer\0A\00", align 1
@System_Stream_Flag = external global i32, align 4

; Function Attrs: nounwind ssp uwtable
define void @Next_Packet() #0 {
entry:
  %code = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %call = call i32 @Get_Long()
  store i32 %call, i32* %code, align 4, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %2 = load i32, i32* %code, align 4, !tbaa !2
  %and = and i32 %2, -256
  %cmp = icmp ne i32 %and, 256
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %code, align 4, !tbaa !2
  %shl = shl i32 %3, 8
  %call1 = call i32 @Get_Byte()
  %or = or i32 %shl, %call1
  store i32 %or, i32* %code, align 4, !tbaa !2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %code, align 4, !tbaa !2
  switch i32 %4, label %sw.default [
    i32 442, label %sw.bb
    i32 480, label %sw.bb.2
    i32 441, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %while.end
  %5 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %5, i32 0, i32 2
  %6 = load i8*, i8** %Rdptr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 8
  store i8* %add.ptr, i8** %Rdptr, align 8, !tbaa !8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.end
  %call3 = call i32 @Get_Word()
  store i32 %call3, i32* %code, align 4, !tbaa !2
  %7 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %7, i32 0, i32 2
  %8 = load i8*, i8** %Rdptr4, align 8, !tbaa !8
  %9 = load i32, i32* %code, align 4, !tbaa !2
  %idx.ext = zext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  %10 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %10, i32 0, i32 5
  store i8* %add.ptr5, i8** %Rdmax, align 8, !tbaa !10
  %call6 = call i32 @Get_Byte()
  store i32 %call6, i32* %code, align 4, !tbaa !2
  %11 = load i32, i32* %code, align 4, !tbaa !2
  %shr = lshr i32 %11, 6
  %cmp7 = icmp eq i32 %shr, 2
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.2
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 2
  %13 = load i8*, i8** %Rdptr8, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %Rdptr8, align 8, !tbaa !8
  %call9 = call i32 @Get_Byte()
  store i32 %call9, i32* %code, align 4, !tbaa !2
  %14 = load i32, i32* %code, align 4, !tbaa !2
  %15 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr10 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 2
  %16 = load i8*, i8** %Rdptr10, align 8, !tbaa !8
  %idx.ext11 = zext i32 %14 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %idx.ext11
  store i8* %add.ptr12, i8** %Rdptr10, align 8, !tbaa !8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %sw.bb.2
  %17 = load i32, i32* %code, align 4, !tbaa !2
  %cmp14 = icmp eq i32 %17, 255
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.else
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.19, %if.then.15
  %call17 = call i32 @Get_Byte()
  store i32 %call17, i32* %code, align 4, !tbaa !2
  %cmp18 = icmp eq i32 %call17, 255
  br i1 %cmp18, label %while.body.19, label %while.end.20

while.body.19:                                    ; preds = %while.cond.16
  br label %while.cond.16

while.end.20:                                     ; preds = %while.cond.16
  br label %if.end

if.end:                                           ; preds = %while.end.20, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end
  %18 = load i32, i32* %code, align 4, !tbaa !2
  %cmp22 = icmp uge i32 %18, 64
  br i1 %cmp22, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %if.end.21
  %19 = load i32, i32* %code, align 4, !tbaa !2
  %cmp24 = icmp uge i32 %19, 128
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.23
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.27:                                        ; preds = %if.then.23
  %21 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr28 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i32 0, i32 2
  %22 = load i8*, i8** %Rdptr28, align 8, !tbaa !8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr29, i8** %Rdptr28, align 8, !tbaa !8
  %call30 = call i32 @Get_Byte()
  store i32 %call30, i32* %code, align 4, !tbaa !2
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %if.end.21
  %23 = load i32, i32* %code, align 4, !tbaa !2
  %cmp32 = icmp uge i32 %23, 48
  br i1 %cmp32, label %if.then.33, label %if.else.40

if.then.33:                                       ; preds = %if.end.31
  %24 = load i32, i32* %code, align 4, !tbaa !2
  %cmp34 = icmp uge i32 %24, 64
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.then.33
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call36 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.37:                                        ; preds = %if.then.33
  %26 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr38 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %26, i32 0, i32 2
  %27 = load i8*, i8** %Rdptr38, align 8, !tbaa !8
  %add.ptr39 = getelementptr inbounds i8, i8* %27, i64 9
  store i8* %add.ptr39, i8** %Rdptr38, align 8, !tbaa !8
  br label %if.end.51

if.else.40:                                       ; preds = %if.end.31
  %28 = load i32, i32* %code, align 4, !tbaa !2
  %cmp41 = icmp uge i32 %28, 32
  br i1 %cmp41, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else.40
  %29 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr43 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %29, i32 0, i32 2
  %30 = load i8*, i8** %Rdptr43, align 8, !tbaa !8
  %add.ptr44 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %add.ptr44, i8** %Rdptr43, align 8, !tbaa !8
  br label %if.end.50

if.else.45:                                       ; preds = %if.else.40
  %31 = load i32, i32* %code, align 4, !tbaa !2
  %cmp46 = icmp ne i32 %31, 15
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.else.45
  %32 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call48 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.49:                                        ; preds = %if.else.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.42
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.52:                                         ; preds = %while.end
  store i32 0, i32* %l, align 4, !tbaa !2
  br label %while.cond.53

while.cond.53:                                    ; preds = %while.body.55, %sw.bb.52
  %33 = load i32, i32* %l, align 4, !tbaa !2
  %cmp54 = icmp slt i32 %33, 2048
  br i1 %cmp54, label %while.body.55, label %while.end.68

while.body.55:                                    ; preds = %while.cond.53
  %34 = load i32, i32* %l, align 4, !tbaa !2
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %l, align 4, !tbaa !2
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %35, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !11
  %36 = load i32, i32* %l, align 4, !tbaa !2
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, i32* %l, align 4, !tbaa !2
  %idxprom57 = sext i32 %36 to i64
  %37 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdbfr58 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %37, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr58, i32 0, i64 %idxprom57
  store i8 0, i8* %arrayidx59, align 1, !tbaa !11
  %38 = load i32, i32* %l, align 4, !tbaa !2
  %inc60 = add nsw i32 %38, 1
  store i32 %inc60, i32* %l, align 4, !tbaa !2
  %idxprom61 = sext i32 %38 to i64
  %39 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdbfr62 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %39, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr62, i32 0, i64 %idxprom61
  store i8 1, i8* %arrayidx63, align 1, !tbaa !11
  %40 = load i32, i32* %l, align 4, !tbaa !2
  %inc64 = add nsw i32 %40, 1
  store i32 %inc64, i32* %l, align 4, !tbaa !2
  %idxprom65 = sext i32 %40 to i64
  %41 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdbfr66 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %41, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr66, i32 0, i64 %idxprom65
  store i8 -73, i8* %arrayidx67, align 1, !tbaa !11
  br label %while.cond.53

while.end.68:                                     ; preds = %while.cond.53
  %42 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdbfr69 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %42, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr69, i32 0, i32 0
  %43 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr70 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %43, i32 0, i32 2
  store i8* %arraydecay, i8** %Rdptr70, align 8, !tbaa !8
  %44 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdbfr71 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %44, i32 0, i32 1
  %arraydecay72 = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr71, i32 0, i32 0
  %add.ptr73 = getelementptr inbounds i8, i8* %arraydecay72, i64 2048
  %45 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdmax74 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %45, i32 0, i32 5
  store i8* %add.ptr73, i8** %Rdmax74, align 8, !tbaa !10
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %while.end
  %46 = load i32, i32* %code, align 4, !tbaa !2
  %cmp75 = icmp uge i32 %46, 443
  br i1 %cmp75, label %if.then.76, label %if.else.81

if.then.76:                                       ; preds = %sw.default
  %call77 = call i32 @Get_Word()
  store i32 %call77, i32* %code, align 4, !tbaa !2
  %47 = load i32, i32* %code, align 4, !tbaa !2
  %48 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr78 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %48, i32 0, i32 2
  %49 = load i8*, i8** %Rdptr78, align 8, !tbaa !8
  %idx.ext79 = zext i32 %47 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %49, i64 %idx.ext79
  store i8* %add.ptr80, i8** %Rdptr78, align 8, !tbaa !8
  br label %if.end.83

if.else.81:                                       ; preds = %sw.default
  %50 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %51 = load i32, i32* %code, align 4, !tbaa !2
  %call82 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i32 %51)
  call void @exit(i32 1) #5
  unreachable

if.end.83:                                        ; preds = %if.then.76
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.83, %sw.bb
  br label %for.cond

cleanup:                                          ; preds = %while.end.68, %if.end.51, %if.then
  %52 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #4
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #4
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @Get_Long() #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %call = call i32 @Get_Word()
  store i32 %call, i32* %i, align 4, !tbaa !2
  %1 = load i32, i32* %i, align 4, !tbaa !2
  %shl = shl i32 %1, 16
  %call1 = call i32 @Get_Word()
  %or = or i32 %shl, %call1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #4
  ret i32 %or
}

declare i32 @Get_Byte() #2

declare i32 @Get_Word() #2

declare i32 @printf(i8*, ...) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @Flush_Buffer32() #0 {
entry:
  %Incnt = alloca i32, align 4
  %0 = bitcast i32* %Incnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Bfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %1, i32 0, i32 4
  store i32 0, i32* %Bfr, align 4, !tbaa !12
  %2 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Incnt1 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %2, i32 0, i32 6
  %3 = load i32, i32* %Incnt1, align 4, !tbaa !13
  store i32 %3, i32* %Incnt, align 4, !tbaa !2
  %4 = load i32, i32* %Incnt, align 4, !tbaa !2
  %sub = sub nsw i32 %4, 32
  store i32 %sub, i32* %Incnt, align 4, !tbaa !2
  %5 = load i32, i32* @System_Stream_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %6, i32 0, i32 2
  %7 = load i8*, i8** %Rdptr, align 8, !tbaa !8
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdmax = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 5
  %9 = load i8*, i8** %Rdmax, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 -4
  %cmp = icmp uge i8* %7, %add.ptr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %10 = load i32, i32* %Incnt, align 4, !tbaa !2
  %cmp2 = icmp sle i32 %10, 24
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr3 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 2
  %12 = load i8*, i8** %Rdptr3, align 8, !tbaa !8
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdmax4 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %13, i32 0, i32 5
  %14 = load i8*, i8** %Rdmax4, align 8, !tbaa !10
  %cmp5 = icmp uge i8* %12, %14
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %while.body
  call void @Next_Packet()
  br label %if.end

if.end:                                           ; preds = %if.then.6, %while.body
  %call = call i32 @Get_Byte()
  %15 = load i32, i32* %Incnt, align 4, !tbaa !2
  %sub7 = sub nsw i32 24, %15
  %shl = shl i32 %call, %sub7
  %16 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Bfr8 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %16, i32 0, i32 4
  %17 = load i32, i32* %Bfr8, align 4, !tbaa !12
  %or = or i32 %17, %shl
  store i32 %or, i32* %Bfr8, align 4, !tbaa !12
  %18 = load i32, i32* %Incnt, align 4, !tbaa !2
  %add = add nsw i32 %18, 8
  store i32 %add, i32* %Incnt, align 4, !tbaa !2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.16, %if.else
  %19 = load i32, i32* %Incnt, align 4, !tbaa !2
  %cmp10 = icmp sle i32 %19, 24
  br i1 %cmp10, label %while.body.11, label %while.end.23

while.body.11:                                    ; preds = %while.cond.9
  %20 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr12 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i32 0, i32 2
  %21 = load i8*, i8** %Rdptr12, align 8, !tbaa !8
  %22 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdbfr = getelementptr inbounds %struct.layer_data, %struct.layer_data* %22, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %Rdbfr, i32 0, i32 0
  %add.ptr13 = getelementptr inbounds i8, i8* %arraydecay, i64 2048
  %cmp14 = icmp uge i8* %21, %add.ptr13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body.11
  call void @Fill_Buffer()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %while.body.11
  %23 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Rdptr17 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 2
  %24 = load i8*, i8** %Rdptr17, align 8, !tbaa !8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %Rdptr17, align 8, !tbaa !8
  %25 = load i8, i8* %24, align 1, !tbaa !11
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* %Incnt, align 4, !tbaa !2
  %sub18 = sub nsw i32 24, %26
  %shl19 = shl i32 %conv, %sub18
  %27 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Bfr20 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %27, i32 0, i32 4
  %28 = load i32, i32* %Bfr20, align 4, !tbaa !12
  %or21 = or i32 %28, %shl19
  store i32 %or21, i32* %Bfr20, align 4, !tbaa !12
  %29 = load i32, i32* %Incnt, align 4, !tbaa !2
  %add22 = add nsw i32 %29, 8
  store i32 %add22, i32* %Incnt, align 4, !tbaa !2
  br label %while.cond.9

while.end.23:                                     ; preds = %while.cond.9
  br label %if.end.24

if.end.24:                                        ; preds = %while.end.23, %while.end
  %30 = load i32, i32* %Incnt, align 4, !tbaa !2
  %31 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %Incnt25 = getelementptr inbounds %struct.layer_data, %struct.layer_data* %31, i32 0, i32 6
  store i32 %30, i32* %Incnt25, align 4, !tbaa !13
  %32 = bitcast i32* %Incnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #4
  ret void
}

declare void @Fill_Buffer() #2

; Function Attrs: nounwind ssp uwtable
define i32 @Get_Bits32() #0 {
entry:
  %l = alloca i32, align 4
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %call = call i32 @Show_Bits(i32 32)
  store i32 %call, i32* %l, align 4, !tbaa !2
  call void @Flush_Buffer32()
  %1 = load i32, i32* %l, align 4, !tbaa !2
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #4
  ret i32 %1
}

declare i32 @Show_Bits(i32) #2

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
!8 = !{!9, !7, i64 2056}
!9 = !{!"layer_data", !3, i64 0, !4, i64 4, !7, i64 2056, !4, i64 2064, !3, i64 2080, !7, i64 2088, !3, i64 2096, !3, i64 2100, !4, i64 2104, !4, i64 2360, !4, i64 2616, !4, i64 2872, !3, i64 3128, !3, i64 3132, !3, i64 3136, !3, i64 3140, !3, i64 3144, !3, i64 3148, !3, i64 3152, !3, i64 3156, !3, i64 3160, !3, i64 3164, !3, i64 3168, !3, i64 3172, !4, i64 3176}
!10 = !{!9, !7, i64 2088}
!11 = !{!4, !4, i64 0}
!12 = !{!9, !3, i64 2080}
!13 = !{!9, !3, i64 2096}
