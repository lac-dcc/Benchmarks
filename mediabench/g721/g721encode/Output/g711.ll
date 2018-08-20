; ModuleID = 'g711.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

@_u2a = global [128 x i8] c"\01\01\02\02\03\03\04\04\05\05\06\06\07\07\08\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1B\1D\1F!\22#$%&'()*+,.0123456789:;<=>@ABCDEFGHIJKLMNOQRSTUVWXYZ[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80", align 16
@_a2u = global [128 x i8] c"\01\03\05\07\09\0B\0D\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$%&'()*+,-./001123456789:;<=>?@@ABCDEFGHIJKLMNOOPQRSTUVWXYZ[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F", align 16
@seg_end = internal global [8 x i16] [i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767], align 16

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @linear2alaw(i32 %pcm_val) #0 {
entry:
  %retval = alloca i8, align 1
  %pcm_val.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %seg = alloca i32, align 4
  %aval = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i32 %pcm_val, i32* %pcm_val.addr, align 4, !tbaa !2
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %seg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  call void @llvm.lifetime.start(i64 1, i8* %aval) #2
  %2 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 213, i32* %mask, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 85, i32* %mask, align 4, !tbaa !2
  %3 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %sub = sub nsw i32 0, %3
  %sub1 = sub nsw i32 %sub, 8
  store i32 %sub1, i32* %pcm_val.addr, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %call = call i32 @search(i32 %4, i16* getelementptr inbounds ([8 x i16], [8 x i16]* @seg_end, i32 0, i32 0), i32 8)
  store i32 %call, i32* %seg, align 4, !tbaa !2
  %5 = load i32, i32* %seg, align 4, !tbaa !2
  %cmp2 = icmp sge i32 %5, 8
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.end
  %6 = load i32, i32* %mask, align 4, !tbaa !2
  %xor = xor i32 127, %6
  %conv = trunc i32 %xor to i8
  store i8 %conv, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.4:                                        ; preds = %if.end
  %7 = load i32, i32* %seg, align 4, !tbaa !2
  %shl = shl i32 %7, 4
  %conv5 = trunc i32 %shl to i8
  store i8 %conv5, i8* %aval, align 1, !tbaa !6
  %8 = load i32, i32* %seg, align 4, !tbaa !2
  %cmp6 = icmp slt i32 %8, 2
  br i1 %cmp6, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else.4
  %9 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %shr = ashr i32 %9, 4
  %and = and i32 %shr, 15
  %10 = load i8, i8* %aval, align 1, !tbaa !6
  %conv9 = zext i8 %10 to i32
  %or = or i32 %conv9, %and
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %aval, align 1, !tbaa !6
  br label %if.end.17

if.else.11:                                       ; preds = %if.else.4
  %11 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %12 = load i32, i32* %seg, align 4, !tbaa !2
  %add = add nsw i32 %12, 3
  %shr12 = ashr i32 %11, %add
  %and13 = and i32 %shr12, 15
  %13 = load i8, i8* %aval, align 1, !tbaa !6
  %conv14 = zext i8 %13 to i32
  %or15 = or i32 %conv14, %and13
  %conv16 = trunc i32 %or15 to i8
  store i8 %conv16, i8* %aval, align 1, !tbaa !6
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.11, %if.then.8
  %14 = load i8, i8* %aval, align 1, !tbaa !6
  %conv18 = zext i8 %14 to i32
  %15 = load i32, i32* %mask, align 4, !tbaa !2
  %xor19 = xor i32 %conv18, %15
  %conv20 = trunc i32 %xor19 to i8
  store i8 %conv20, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.3
  call void @llvm.lifetime.end(i64 1, i8* %aval) #2
  %16 = bitcast i32* %seg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = load i8, i8* %retval
  ret i8 %18
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal i32 @search(i32 %val, i16* %table, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %table.addr = alloca i16*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %val, i32* %val.addr, align 4, !tbaa !2
  store i16* %table, i16** %table.addr, align 8, !tbaa !7
  store i32 %size, i32* %size.addr, align 4, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !2
  %2 = load i32, i32* %size.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %val.addr, align 4, !tbaa !2
  %4 = load i16*, i16** %table.addr, align 8, !tbaa !7
  %incdec.ptr = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr, i16** %table.addr, align 8, !tbaa !7
  %5 = load i16, i16* %4, align 2, !tbaa !9
  %conv = sext i16 %5 to i32
  %cmp1 = icmp sle i32 %3, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !2
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %size.addr, align 4, !tbaa !2
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @alaw2linear(i8 zeroext %a_val) #0 {
entry:
  %a_val.addr = alloca i8, align 1
  %t = alloca i32, align 4
  %seg = alloca i32, align 4
  store i8 %a_val, i8* %a_val.addr, align 1, !tbaa !6
  %0 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %seg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load i8, i8* %a_val.addr, align 1, !tbaa !6
  %conv = zext i8 %2 to i32
  %xor = xor i32 %conv, 85
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, i8* %a_val.addr, align 1, !tbaa !6
  %3 = load i8, i8* %a_val.addr, align 1, !tbaa !6
  %conv2 = zext i8 %3 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %and, 4
  store i32 %shl, i32* %t, align 4, !tbaa !2
  %4 = load i8, i8* %a_val.addr, align 1, !tbaa !6
  %conv3 = zext i8 %4 to i32
  %and4 = and i32 %conv3, 112
  %shr = lshr i32 %and4, 4
  store i32 %shr, i32* %seg, align 4, !tbaa !2
  %5 = load i32, i32* %seg, align 4, !tbaa !2
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %6 = load i32, i32* %t, align 4, !tbaa !2
  %add = add nsw i32 %6, 8
  store i32 %add, i32* %t, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %7 = load i32, i32* %t, align 4, !tbaa !2
  %add6 = add nsw i32 %7, 264
  store i32 %add6, i32* %t, align 4, !tbaa !2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %8 = load i32, i32* %t, align 4, !tbaa !2
  %add7 = add nsw i32 %8, 264
  store i32 %add7, i32* %t, align 4, !tbaa !2
  %9 = load i32, i32* %seg, align 4, !tbaa !2
  %sub = sub nsw i32 %9, 1
  %10 = load i32, i32* %t, align 4, !tbaa !2
  %shl8 = shl i32 %10, %sub
  store i32 %shl8, i32* %t, align 4, !tbaa !2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb
  %11 = load i8, i8* %a_val.addr, align 1, !tbaa !6
  %conv9 = zext i8 %11 to i32
  %and10 = and i32 %conv9, 128
  %tobool = icmp ne i32 %and10, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %12 = load i32, i32* %t, align 4, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %13 = load i32, i32* %t, align 4, !tbaa !2
  %sub11 = sub nsw i32 0, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %sub11, %cond.false ]
  %14 = bitcast i32* %seg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @linear2ulaw(i32 %pcm_val) #0 {
entry:
  %retval = alloca i8, align 1
  %pcm_val.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %seg = alloca i32, align 4
  %uval = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i32 %pcm_val, i32* %pcm_val.addr, align 4, !tbaa !2
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %seg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  call void @llvm.lifetime.start(i64 1, i8* %uval) #2
  %2 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %sub = sub nsw i32 132, %3
  store i32 %sub, i32* %pcm_val.addr, align 4, !tbaa !2
  store i32 127, i32* %mask, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %add = add nsw i32 %4, 132
  store i32 %add, i32* %pcm_val.addr, align 4, !tbaa !2
  store i32 255, i32* %mask, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %call = call i32 @search(i32 %5, i16* getelementptr inbounds ([8 x i16], [8 x i16]* @seg_end, i32 0, i32 0), i32 8)
  store i32 %call, i32* %seg, align 4, !tbaa !2
  %6 = load i32, i32* %seg, align 4, !tbaa !2
  %cmp1 = icmp sge i32 %6, 8
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %mask, align 4, !tbaa !2
  %xor = xor i32 127, %7
  %conv = trunc i32 %xor to i8
  store i8 %conv, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.3:                                        ; preds = %if.end
  %8 = load i32, i32* %seg, align 4, !tbaa !2
  %shl = shl i32 %8, 4
  %9 = load i32, i32* %pcm_val.addr, align 4, !tbaa !2
  %10 = load i32, i32* %seg, align 4, !tbaa !2
  %add4 = add nsw i32 %10, 3
  %shr = ashr i32 %9, %add4
  %and = and i32 %shr, 15
  %or = or i32 %shl, %and
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, i8* %uval, align 1, !tbaa !6
  %11 = load i8, i8* %uval, align 1, !tbaa !6
  %conv6 = zext i8 %11 to i32
  %12 = load i32, i32* %mask, align 4, !tbaa !2
  %xor7 = xor i32 %conv6, %12
  %conv8 = trunc i32 %xor7 to i8
  store i8 %conv8, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.3, %if.then.2
  call void @llvm.lifetime.end(i64 1, i8* %uval) #2
  %13 = bitcast i32* %seg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = load i8, i8* %retval
  ret i8 %15
}

; Function Attrs: nounwind ssp uwtable
define i32 @ulaw2linear(i8 zeroext %u_val) #0 {
entry:
  %u_val.addr = alloca i8, align 1
  %t = alloca i32, align 4
  store i8 %u_val, i8* %u_val.addr, align 1, !tbaa !6
  %0 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8, i8* %u_val.addr, align 1, !tbaa !6
  %conv = zext i8 %1 to i32
  %neg = xor i32 %conv, -1
  %conv1 = trunc i32 %neg to i8
  store i8 %conv1, i8* %u_val.addr, align 1, !tbaa !6
  %2 = load i8, i8* %u_val.addr, align 1, !tbaa !6
  %conv2 = zext i8 %2 to i32
  %and = and i32 %conv2, 15
  %shl = shl i32 %and, 3
  %add = add nsw i32 %shl, 132
  store i32 %add, i32* %t, align 4, !tbaa !2
  %3 = load i8, i8* %u_val.addr, align 1, !tbaa !6
  %conv3 = zext i8 %3 to i32
  %and4 = and i32 %conv3, 112
  %shr = lshr i32 %and4, 4
  %4 = load i32, i32* %t, align 4, !tbaa !2
  %shl5 = shl i32 %4, %shr
  store i32 %shl5, i32* %t, align 4, !tbaa !2
  %5 = load i8, i8* %u_val.addr, align 1, !tbaa !6
  %conv6 = zext i8 %5 to i32
  %and7 = and i32 %conv6, 128
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %t, align 4, !tbaa !2
  %sub = sub nsw i32 132, %6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %t, align 4, !tbaa !2
  %sub8 = sub nsw i32 %7, 132
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub8, %cond.false ]
  %8 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  ret i32 %cond
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @alaw2ulaw(i8 zeroext %aval) #0 {
entry:
  %aval.addr = alloca i8, align 1
  store i8 %aval, i8* %aval.addr, align 1, !tbaa !6
  %0 = load i8, i8* %aval.addr, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %aval.addr, align 1, !tbaa !6
  %1 = load i8, i8* %aval.addr, align 1, !tbaa !6
  %conv2 = zext i8 %1 to i32
  %and3 = and i32 %conv2, 128
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %aval.addr, align 1, !tbaa !6
  %conv4 = zext i8 %2 to i32
  %xor = xor i32 %conv4, 213
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @_a2u, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !6
  %conv5 = zext i8 %3 to i32
  %xor6 = xor i32 255, %conv5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i8, i8* %aval.addr, align 1, !tbaa !6
  %conv7 = zext i8 %4 to i32
  %xor8 = xor i32 %conv7, 85
  %idxprom9 = sext i32 %xor8 to i64
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* @_a2u, i32 0, i64 %idxprom9
  %5 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %5 to i32
  %xor12 = xor i32 127, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor6, %cond.true ], [ %xor12, %cond.false ]
  %conv13 = trunc i32 %cond to i8
  ret i8 %conv13
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @ulaw2alaw(i8 zeroext %uval) #0 {
entry:
  %uval.addr = alloca i8, align 1
  store i8 %uval, i8* %uval.addr, align 1, !tbaa !6
  %0 = load i8, i8* %uval.addr, align 1, !tbaa !6
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %uval.addr, align 1, !tbaa !6
  %1 = load i8, i8* %uval.addr, align 1, !tbaa !6
  %conv2 = zext i8 %1 to i32
  %and3 = and i32 %conv2, 128
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8, i8* %uval.addr, align 1, !tbaa !6
  %conv4 = zext i8 %2 to i32
  %xor = xor i32 255, %conv4
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @_u2a, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !6
  %conv5 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv5, 1
  %xor6 = xor i32 213, %sub
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i8, i8* %uval.addr, align 1, !tbaa !6
  %conv7 = zext i8 %4 to i32
  %xor8 = xor i32 127, %conv7
  %idxprom9 = sext i32 %xor8 to i64
  %arrayidx10 = getelementptr inbounds [128 x i8], [128 x i8]* @_u2a, i32 0, i64 %idxprom9
  %5 = load i8, i8* %arrayidx10, align 1, !tbaa !6
  %conv11 = zext i8 %5 to i32
  %sub12 = sub nsw i32 %conv11, 1
  %xor13 = xor i32 85, %sub12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor6, %cond.true ], [ %xor13, %cond.false ]
  %conv14 = trunc i32 %cond to i8
  ret i8 %conv14
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !4, i64 0}
