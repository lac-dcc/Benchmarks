; ModuleID = 'gsm_decode.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define i32 @gsm_decode(%struct.gsm_state* %s, i8* %c, i16* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.gsm_state*, align 8
  %c.addr = alloca i8*, align 8
  %target.addr = alloca i16*, align 8
  %LARc = alloca [8 x i16], align 16
  %Nc = alloca [4 x i16], align 2
  %Mc = alloca [4 x i16], align 2
  %bc = alloca [4 x i16], align 2
  %xmaxc = alloca [4 x i16], align 2
  %xmc = alloca [52 x i16], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gsm_state* %s, %struct.gsm_state** %s.addr, align 8, !tbaa !2
  store i8* %c, i8** %c.addr, align 8, !tbaa !2
  store i16* %target, i16** %target.addr, align 8, !tbaa !2
  %0 = bitcast [8 x i16]* %LARc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #3
  %1 = bitcast [4 x i16]* %Nc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast [4 x i16]* %Mc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast [4 x i16]* %bc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast [4 x i16]* %xmaxc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast [52 x i16]* %xmc to i8*
  call void @llvm.lifetime.start(i64 104, i8* %5) #3
  %6 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %7 = load i8, i8* %6, align 1, !tbaa !6
  %conv = zext i8 %7 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %cmp = icmp ne i32 %and, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %c.addr, align 8, !tbaa !2
  %9 = load i8, i8* %8, align 1, !tbaa !6
  %conv2 = zext i8 %9 to i32
  %and3 = and i32 %conv2, 15
  %shl = shl i32 %and3, 2
  %conv4 = trunc i32 %shl to i16
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !7
  %10 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %11 = load i8, i8* %10, align 1, !tbaa !6
  %conv5 = zext i8 %11 to i32
  %shr6 = ashr i32 %conv5, 6
  %and7 = and i32 %shr6, 3
  %arrayidx8 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 0
  %12 = load i16, i16* %arrayidx8, align 2, !tbaa !7
  %conv9 = sext i16 %12 to i32
  %or = or i32 %conv9, %and7
  %conv10 = trunc i32 %or to i16
  store i16 %conv10, i16* %arrayidx8, align 2, !tbaa !7
  %13 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %c.addr, align 8, !tbaa !2
  %14 = load i8, i8* %13, align 1, !tbaa !6
  %conv12 = zext i8 %14 to i32
  %and13 = and i32 %conv12, 63
  %conv14 = trunc i32 %and13 to i16
  %arrayidx15 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 1
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !7
  %15 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %16 = load i8, i8* %15, align 1, !tbaa !6
  %conv16 = zext i8 %16 to i32
  %shr17 = ashr i32 %conv16, 3
  %and18 = and i32 %shr17, 31
  %conv19 = trunc i32 %and18 to i16
  %arrayidx20 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 2
  store i16 %conv19, i16* %arrayidx20, align 2, !tbaa !7
  %17 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr21 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr21, i8** %c.addr, align 8, !tbaa !2
  %18 = load i8, i8* %17, align 1, !tbaa !6
  %conv22 = zext i8 %18 to i32
  %and23 = and i32 %conv22, 7
  %shl24 = shl i32 %and23, 2
  %conv25 = trunc i32 %shl24 to i16
  %arrayidx26 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 3
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !7
  %19 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %20 = load i8, i8* %19, align 1, !tbaa !6
  %conv27 = zext i8 %20 to i32
  %shr28 = ashr i32 %conv27, 6
  %and29 = and i32 %shr28, 3
  %arrayidx30 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 3
  %21 = load i16, i16* %arrayidx30, align 2, !tbaa !7
  %conv31 = sext i16 %21 to i32
  %or32 = or i32 %conv31, %and29
  %conv33 = trunc i32 %or32 to i16
  store i16 %conv33, i16* %arrayidx30, align 2, !tbaa !7
  %22 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %23 = load i8, i8* %22, align 1, !tbaa !6
  %conv34 = zext i8 %23 to i32
  %shr35 = ashr i32 %conv34, 2
  %and36 = and i32 %shr35, 15
  %conv37 = trunc i32 %and36 to i16
  %arrayidx38 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 4
  store i16 %conv37, i16* %arrayidx38, align 2, !tbaa !7
  %24 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr39 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr39, i8** %c.addr, align 8, !tbaa !2
  %25 = load i8, i8* %24, align 1, !tbaa !6
  %conv40 = zext i8 %25 to i32
  %and41 = and i32 %conv40, 3
  %shl42 = shl i32 %and41, 2
  %conv43 = trunc i32 %shl42 to i16
  %arrayidx44 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 5
  store i16 %conv43, i16* %arrayidx44, align 2, !tbaa !7
  %26 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %27 = load i8, i8* %26, align 1, !tbaa !6
  %conv45 = zext i8 %27 to i32
  %shr46 = ashr i32 %conv45, 6
  %and47 = and i32 %shr46, 3
  %arrayidx48 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 5
  %28 = load i16, i16* %arrayidx48, align 2, !tbaa !7
  %conv49 = sext i16 %28 to i32
  %or50 = or i32 %conv49, %and47
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, i16* %arrayidx48, align 2, !tbaa !7
  %29 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %30 = load i8, i8* %29, align 1, !tbaa !6
  %conv52 = zext i8 %30 to i32
  %shr53 = ashr i32 %conv52, 3
  %and54 = and i32 %shr53, 7
  %conv55 = trunc i32 %and54 to i16
  %arrayidx56 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 6
  store i16 %conv55, i16* %arrayidx56, align 2, !tbaa !7
  %31 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr57 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr57, i8** %c.addr, align 8, !tbaa !2
  %32 = load i8, i8* %31, align 1, !tbaa !6
  %conv58 = zext i8 %32 to i32
  %and59 = and i32 %conv58, 7
  %conv60 = trunc i32 %and59 to i16
  %arrayidx61 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 7
  store i16 %conv60, i16* %arrayidx61, align 2, !tbaa !7
  %33 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %34 = load i8, i8* %33, align 1, !tbaa !6
  %conv62 = zext i8 %34 to i32
  %shr63 = ashr i32 %conv62, 1
  %and64 = and i32 %shr63, 127
  %conv65 = trunc i32 %and64 to i16
  %arrayidx66 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 0
  store i16 %conv65, i16* %arrayidx66, align 2, !tbaa !7
  %35 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr67 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr67, i8** %c.addr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !6
  %conv68 = zext i8 %36 to i32
  %and69 = and i32 %conv68, 1
  %shl70 = shl i32 %and69, 1
  %conv71 = trunc i32 %shl70 to i16
  %arrayidx72 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 0
  store i16 %conv71, i16* %arrayidx72, align 2, !tbaa !7
  %37 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %38 = load i8, i8* %37, align 1, !tbaa !6
  %conv73 = zext i8 %38 to i32
  %shr74 = ashr i32 %conv73, 7
  %and75 = and i32 %shr74, 1
  %arrayidx76 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 0
  %39 = load i16, i16* %arrayidx76, align 2, !tbaa !7
  %conv77 = sext i16 %39 to i32
  %or78 = or i32 %conv77, %and75
  %conv79 = trunc i32 %or78 to i16
  store i16 %conv79, i16* %arrayidx76, align 2, !tbaa !7
  %40 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %41 = load i8, i8* %40, align 1, !tbaa !6
  %conv80 = zext i8 %41 to i32
  %shr81 = ashr i32 %conv80, 5
  %and82 = and i32 %shr81, 3
  %conv83 = trunc i32 %and82 to i16
  %arrayidx84 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 0
  store i16 %conv83, i16* %arrayidx84, align 2, !tbaa !7
  %42 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr85 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr85, i8** %c.addr, align 8, !tbaa !2
  %43 = load i8, i8* %42, align 1, !tbaa !6
  %conv86 = zext i8 %43 to i32
  %and87 = and i32 %conv86, 31
  %shl88 = shl i32 %and87, 1
  %conv89 = trunc i32 %shl88 to i16
  %arrayidx90 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 0
  store i16 %conv89, i16* %arrayidx90, align 2, !tbaa !7
  %44 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %45 = load i8, i8* %44, align 1, !tbaa !6
  %conv91 = zext i8 %45 to i32
  %shr92 = ashr i32 %conv91, 7
  %and93 = and i32 %shr92, 1
  %arrayidx94 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 0
  %46 = load i16, i16* %arrayidx94, align 2, !tbaa !7
  %conv95 = sext i16 %46 to i32
  %or96 = or i32 %conv95, %and93
  %conv97 = trunc i32 %or96 to i16
  store i16 %conv97, i16* %arrayidx94, align 2, !tbaa !7
  %47 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %48 = load i8, i8* %47, align 1, !tbaa !6
  %conv98 = zext i8 %48 to i32
  %shr99 = ashr i32 %conv98, 4
  %and100 = and i32 %shr99, 7
  %conv101 = trunc i32 %and100 to i16
  %arrayidx102 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 0
  store i16 %conv101, i16* %arrayidx102, align 2, !tbaa !7
  %49 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %50 = load i8, i8* %49, align 1, !tbaa !6
  %conv103 = zext i8 %50 to i32
  %shr104 = ashr i32 %conv103, 1
  %and105 = and i32 %shr104, 7
  %conv106 = trunc i32 %and105 to i16
  %arrayidx107 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 1
  store i16 %conv106, i16* %arrayidx107, align 2, !tbaa !7
  %51 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr108 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr108, i8** %c.addr, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !6
  %conv109 = zext i8 %52 to i32
  %and110 = and i32 %conv109, 1
  %shl111 = shl i32 %and110, 2
  %conv112 = trunc i32 %shl111 to i16
  %arrayidx113 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 2
  store i16 %conv112, i16* %arrayidx113, align 2, !tbaa !7
  %53 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %54 = load i8, i8* %53, align 1, !tbaa !6
  %conv114 = zext i8 %54 to i32
  %shr115 = ashr i32 %conv114, 6
  %and116 = and i32 %shr115, 3
  %arrayidx117 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 2
  %55 = load i16, i16* %arrayidx117, align 2, !tbaa !7
  %conv118 = sext i16 %55 to i32
  %or119 = or i32 %conv118, %and116
  %conv120 = trunc i32 %or119 to i16
  store i16 %conv120, i16* %arrayidx117, align 2, !tbaa !7
  %56 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %57 = load i8, i8* %56, align 1, !tbaa !6
  %conv121 = zext i8 %57 to i32
  %shr122 = ashr i32 %conv121, 3
  %and123 = and i32 %shr122, 7
  %conv124 = trunc i32 %and123 to i16
  %arrayidx125 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 3
  store i16 %conv124, i16* %arrayidx125, align 2, !tbaa !7
  %58 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr126 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr126, i8** %c.addr, align 8, !tbaa !2
  %59 = load i8, i8* %58, align 1, !tbaa !6
  %conv127 = zext i8 %59 to i32
  %and128 = and i32 %conv127, 7
  %conv129 = trunc i32 %and128 to i16
  %arrayidx130 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 4
  store i16 %conv129, i16* %arrayidx130, align 2, !tbaa !7
  %60 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %61 = load i8, i8* %60, align 1, !tbaa !6
  %conv131 = zext i8 %61 to i32
  %shr132 = ashr i32 %conv131, 5
  %and133 = and i32 %shr132, 7
  %conv134 = trunc i32 %and133 to i16
  %arrayidx135 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 5
  store i16 %conv134, i16* %arrayidx135, align 2, !tbaa !7
  %62 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %63 = load i8, i8* %62, align 1, !tbaa !6
  %conv136 = zext i8 %63 to i32
  %shr137 = ashr i32 %conv136, 2
  %and138 = and i32 %shr137, 7
  %conv139 = trunc i32 %and138 to i16
  %arrayidx140 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 6
  store i16 %conv139, i16* %arrayidx140, align 2, !tbaa !7
  %64 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr141 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr141, i8** %c.addr, align 8, !tbaa !2
  %65 = load i8, i8* %64, align 1, !tbaa !6
  %conv142 = zext i8 %65 to i32
  %and143 = and i32 %conv142, 3
  %shl144 = shl i32 %and143, 1
  %conv145 = trunc i32 %shl144 to i16
  %arrayidx146 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 7
  store i16 %conv145, i16* %arrayidx146, align 2, !tbaa !7
  %66 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %67 = load i8, i8* %66, align 1, !tbaa !6
  %conv147 = zext i8 %67 to i32
  %shr148 = ashr i32 %conv147, 7
  %and149 = and i32 %shr148, 1
  %arrayidx150 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 7
  %68 = load i16, i16* %arrayidx150, align 2, !tbaa !7
  %conv151 = sext i16 %68 to i32
  %or152 = or i32 %conv151, %and149
  %conv153 = trunc i32 %or152 to i16
  store i16 %conv153, i16* %arrayidx150, align 2, !tbaa !7
  %69 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %70 = load i8, i8* %69, align 1, !tbaa !6
  %conv154 = zext i8 %70 to i32
  %shr155 = ashr i32 %conv154, 4
  %and156 = and i32 %shr155, 7
  %conv157 = trunc i32 %and156 to i16
  %arrayidx158 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 8
  store i16 %conv157, i16* %arrayidx158, align 2, !tbaa !7
  %71 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %72 = load i8, i8* %71, align 1, !tbaa !6
  %conv159 = zext i8 %72 to i32
  %shr160 = ashr i32 %conv159, 1
  %and161 = and i32 %shr160, 7
  %conv162 = trunc i32 %and161 to i16
  %arrayidx163 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 9
  store i16 %conv162, i16* %arrayidx163, align 2, !tbaa !7
  %73 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr164 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr164, i8** %c.addr, align 8, !tbaa !2
  %74 = load i8, i8* %73, align 1, !tbaa !6
  %conv165 = zext i8 %74 to i32
  %and166 = and i32 %conv165, 1
  %shl167 = shl i32 %and166, 2
  %conv168 = trunc i32 %shl167 to i16
  %arrayidx169 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 10
  store i16 %conv168, i16* %arrayidx169, align 2, !tbaa !7
  %75 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %76 = load i8, i8* %75, align 1, !tbaa !6
  %conv170 = zext i8 %76 to i32
  %shr171 = ashr i32 %conv170, 6
  %and172 = and i32 %shr171, 3
  %arrayidx173 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 10
  %77 = load i16, i16* %arrayidx173, align 2, !tbaa !7
  %conv174 = sext i16 %77 to i32
  %or175 = or i32 %conv174, %and172
  %conv176 = trunc i32 %or175 to i16
  store i16 %conv176, i16* %arrayidx173, align 2, !tbaa !7
  %78 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %79 = load i8, i8* %78, align 1, !tbaa !6
  %conv177 = zext i8 %79 to i32
  %shr178 = ashr i32 %conv177, 3
  %and179 = and i32 %shr178, 7
  %conv180 = trunc i32 %and179 to i16
  %arrayidx181 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 11
  store i16 %conv180, i16* %arrayidx181, align 2, !tbaa !7
  %80 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr182 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr182, i8** %c.addr, align 8, !tbaa !2
  %81 = load i8, i8* %80, align 1, !tbaa !6
  %conv183 = zext i8 %81 to i32
  %and184 = and i32 %conv183, 7
  %conv185 = trunc i32 %and184 to i16
  %arrayidx186 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 12
  store i16 %conv185, i16* %arrayidx186, align 2, !tbaa !7
  %82 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %83 = load i8, i8* %82, align 1, !tbaa !6
  %conv187 = zext i8 %83 to i32
  %shr188 = ashr i32 %conv187, 1
  %and189 = and i32 %shr188, 127
  %conv190 = trunc i32 %and189 to i16
  %arrayidx191 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 1
  store i16 %conv190, i16* %arrayidx191, align 2, !tbaa !7
  %84 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr192 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr192, i8** %c.addr, align 8, !tbaa !2
  %85 = load i8, i8* %84, align 1, !tbaa !6
  %conv193 = zext i8 %85 to i32
  %and194 = and i32 %conv193, 1
  %shl195 = shl i32 %and194, 1
  %conv196 = trunc i32 %shl195 to i16
  %arrayidx197 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 1
  store i16 %conv196, i16* %arrayidx197, align 2, !tbaa !7
  %86 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %87 = load i8, i8* %86, align 1, !tbaa !6
  %conv198 = zext i8 %87 to i32
  %shr199 = ashr i32 %conv198, 7
  %and200 = and i32 %shr199, 1
  %arrayidx201 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 1
  %88 = load i16, i16* %arrayidx201, align 2, !tbaa !7
  %conv202 = sext i16 %88 to i32
  %or203 = or i32 %conv202, %and200
  %conv204 = trunc i32 %or203 to i16
  store i16 %conv204, i16* %arrayidx201, align 2, !tbaa !7
  %89 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %90 = load i8, i8* %89, align 1, !tbaa !6
  %conv205 = zext i8 %90 to i32
  %shr206 = ashr i32 %conv205, 5
  %and207 = and i32 %shr206, 3
  %conv208 = trunc i32 %and207 to i16
  %arrayidx209 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 1
  store i16 %conv208, i16* %arrayidx209, align 2, !tbaa !7
  %91 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr210 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr210, i8** %c.addr, align 8, !tbaa !2
  %92 = load i8, i8* %91, align 1, !tbaa !6
  %conv211 = zext i8 %92 to i32
  %and212 = and i32 %conv211, 31
  %shl213 = shl i32 %and212, 1
  %conv214 = trunc i32 %shl213 to i16
  %arrayidx215 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 1
  store i16 %conv214, i16* %arrayidx215, align 2, !tbaa !7
  %93 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %94 = load i8, i8* %93, align 1, !tbaa !6
  %conv216 = zext i8 %94 to i32
  %shr217 = ashr i32 %conv216, 7
  %and218 = and i32 %shr217, 1
  %arrayidx219 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 1
  %95 = load i16, i16* %arrayidx219, align 2, !tbaa !7
  %conv220 = sext i16 %95 to i32
  %or221 = or i32 %conv220, %and218
  %conv222 = trunc i32 %or221 to i16
  store i16 %conv222, i16* %arrayidx219, align 2, !tbaa !7
  %96 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %97 = load i8, i8* %96, align 1, !tbaa !6
  %conv223 = zext i8 %97 to i32
  %shr224 = ashr i32 %conv223, 4
  %and225 = and i32 %shr224, 7
  %conv226 = trunc i32 %and225 to i16
  %arrayidx227 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 13
  store i16 %conv226, i16* %arrayidx227, align 2, !tbaa !7
  %98 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %99 = load i8, i8* %98, align 1, !tbaa !6
  %conv228 = zext i8 %99 to i32
  %shr229 = ashr i32 %conv228, 1
  %and230 = and i32 %shr229, 7
  %conv231 = trunc i32 %and230 to i16
  %arrayidx232 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 14
  store i16 %conv231, i16* %arrayidx232, align 2, !tbaa !7
  %100 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr233 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr233, i8** %c.addr, align 8, !tbaa !2
  %101 = load i8, i8* %100, align 1, !tbaa !6
  %conv234 = zext i8 %101 to i32
  %and235 = and i32 %conv234, 1
  %shl236 = shl i32 %and235, 2
  %conv237 = trunc i32 %shl236 to i16
  %arrayidx238 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 15
  store i16 %conv237, i16* %arrayidx238, align 2, !tbaa !7
  %102 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %103 = load i8, i8* %102, align 1, !tbaa !6
  %conv239 = zext i8 %103 to i32
  %shr240 = ashr i32 %conv239, 6
  %and241 = and i32 %shr240, 3
  %arrayidx242 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 15
  %104 = load i16, i16* %arrayidx242, align 2, !tbaa !7
  %conv243 = sext i16 %104 to i32
  %or244 = or i32 %conv243, %and241
  %conv245 = trunc i32 %or244 to i16
  store i16 %conv245, i16* %arrayidx242, align 2, !tbaa !7
  %105 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %106 = load i8, i8* %105, align 1, !tbaa !6
  %conv246 = zext i8 %106 to i32
  %shr247 = ashr i32 %conv246, 3
  %and248 = and i32 %shr247, 7
  %conv249 = trunc i32 %and248 to i16
  %arrayidx250 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 16
  store i16 %conv249, i16* %arrayidx250, align 2, !tbaa !7
  %107 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr251 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr251, i8** %c.addr, align 8, !tbaa !2
  %108 = load i8, i8* %107, align 1, !tbaa !6
  %conv252 = zext i8 %108 to i32
  %and253 = and i32 %conv252, 7
  %conv254 = trunc i32 %and253 to i16
  %arrayidx255 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 17
  store i16 %conv254, i16* %arrayidx255, align 2, !tbaa !7
  %109 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %110 = load i8, i8* %109, align 1, !tbaa !6
  %conv256 = zext i8 %110 to i32
  %shr257 = ashr i32 %conv256, 5
  %and258 = and i32 %shr257, 7
  %conv259 = trunc i32 %and258 to i16
  %arrayidx260 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 18
  store i16 %conv259, i16* %arrayidx260, align 2, !tbaa !7
  %111 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %112 = load i8, i8* %111, align 1, !tbaa !6
  %conv261 = zext i8 %112 to i32
  %shr262 = ashr i32 %conv261, 2
  %and263 = and i32 %shr262, 7
  %conv264 = trunc i32 %and263 to i16
  %arrayidx265 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 19
  store i16 %conv264, i16* %arrayidx265, align 2, !tbaa !7
  %113 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr266 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr266, i8** %c.addr, align 8, !tbaa !2
  %114 = load i8, i8* %113, align 1, !tbaa !6
  %conv267 = zext i8 %114 to i32
  %and268 = and i32 %conv267, 3
  %shl269 = shl i32 %and268, 1
  %conv270 = trunc i32 %shl269 to i16
  %arrayidx271 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 20
  store i16 %conv270, i16* %arrayidx271, align 2, !tbaa !7
  %115 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %116 = load i8, i8* %115, align 1, !tbaa !6
  %conv272 = zext i8 %116 to i32
  %shr273 = ashr i32 %conv272, 7
  %and274 = and i32 %shr273, 1
  %arrayidx275 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 20
  %117 = load i16, i16* %arrayidx275, align 2, !tbaa !7
  %conv276 = sext i16 %117 to i32
  %or277 = or i32 %conv276, %and274
  %conv278 = trunc i32 %or277 to i16
  store i16 %conv278, i16* %arrayidx275, align 2, !tbaa !7
  %118 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %119 = load i8, i8* %118, align 1, !tbaa !6
  %conv279 = zext i8 %119 to i32
  %shr280 = ashr i32 %conv279, 4
  %and281 = and i32 %shr280, 7
  %conv282 = trunc i32 %and281 to i16
  %arrayidx283 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 21
  store i16 %conv282, i16* %arrayidx283, align 2, !tbaa !7
  %120 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %121 = load i8, i8* %120, align 1, !tbaa !6
  %conv284 = zext i8 %121 to i32
  %shr285 = ashr i32 %conv284, 1
  %and286 = and i32 %shr285, 7
  %conv287 = trunc i32 %and286 to i16
  %arrayidx288 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 22
  store i16 %conv287, i16* %arrayidx288, align 2, !tbaa !7
  %122 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr289 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr289, i8** %c.addr, align 8, !tbaa !2
  %123 = load i8, i8* %122, align 1, !tbaa !6
  %conv290 = zext i8 %123 to i32
  %and291 = and i32 %conv290, 1
  %shl292 = shl i32 %and291, 2
  %conv293 = trunc i32 %shl292 to i16
  %arrayidx294 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 23
  store i16 %conv293, i16* %arrayidx294, align 2, !tbaa !7
  %124 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %125 = load i8, i8* %124, align 1, !tbaa !6
  %conv295 = zext i8 %125 to i32
  %shr296 = ashr i32 %conv295, 6
  %and297 = and i32 %shr296, 3
  %arrayidx298 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 23
  %126 = load i16, i16* %arrayidx298, align 2, !tbaa !7
  %conv299 = sext i16 %126 to i32
  %or300 = or i32 %conv299, %and297
  %conv301 = trunc i32 %or300 to i16
  store i16 %conv301, i16* %arrayidx298, align 2, !tbaa !7
  %127 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %128 = load i8, i8* %127, align 1, !tbaa !6
  %conv302 = zext i8 %128 to i32
  %shr303 = ashr i32 %conv302, 3
  %and304 = and i32 %shr303, 7
  %conv305 = trunc i32 %and304 to i16
  %arrayidx306 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 24
  store i16 %conv305, i16* %arrayidx306, align 2, !tbaa !7
  %129 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr307 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr307, i8** %c.addr, align 8, !tbaa !2
  %130 = load i8, i8* %129, align 1, !tbaa !6
  %conv308 = zext i8 %130 to i32
  %and309 = and i32 %conv308, 7
  %conv310 = trunc i32 %and309 to i16
  %arrayidx311 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 25
  store i16 %conv310, i16* %arrayidx311, align 2, !tbaa !7
  %131 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %132 = load i8, i8* %131, align 1, !tbaa !6
  %conv312 = zext i8 %132 to i32
  %shr313 = ashr i32 %conv312, 1
  %and314 = and i32 %shr313, 127
  %conv315 = trunc i32 %and314 to i16
  %arrayidx316 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 2
  store i16 %conv315, i16* %arrayidx316, align 2, !tbaa !7
  %133 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr317 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr317, i8** %c.addr, align 8, !tbaa !2
  %134 = load i8, i8* %133, align 1, !tbaa !6
  %conv318 = zext i8 %134 to i32
  %and319 = and i32 %conv318, 1
  %shl320 = shl i32 %and319, 1
  %conv321 = trunc i32 %shl320 to i16
  %arrayidx322 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 2
  store i16 %conv321, i16* %arrayidx322, align 2, !tbaa !7
  %135 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %136 = load i8, i8* %135, align 1, !tbaa !6
  %conv323 = zext i8 %136 to i32
  %shr324 = ashr i32 %conv323, 7
  %and325 = and i32 %shr324, 1
  %arrayidx326 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 2
  %137 = load i16, i16* %arrayidx326, align 2, !tbaa !7
  %conv327 = sext i16 %137 to i32
  %or328 = or i32 %conv327, %and325
  %conv329 = trunc i32 %or328 to i16
  store i16 %conv329, i16* %arrayidx326, align 2, !tbaa !7
  %138 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %139 = load i8, i8* %138, align 1, !tbaa !6
  %conv330 = zext i8 %139 to i32
  %shr331 = ashr i32 %conv330, 5
  %and332 = and i32 %shr331, 3
  %conv333 = trunc i32 %and332 to i16
  %arrayidx334 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 2
  store i16 %conv333, i16* %arrayidx334, align 2, !tbaa !7
  %140 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr335 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr335, i8** %c.addr, align 8, !tbaa !2
  %141 = load i8, i8* %140, align 1, !tbaa !6
  %conv336 = zext i8 %141 to i32
  %and337 = and i32 %conv336, 31
  %shl338 = shl i32 %and337, 1
  %conv339 = trunc i32 %shl338 to i16
  %arrayidx340 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 2
  store i16 %conv339, i16* %arrayidx340, align 2, !tbaa !7
  %142 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %143 = load i8, i8* %142, align 1, !tbaa !6
  %conv341 = zext i8 %143 to i32
  %shr342 = ashr i32 %conv341, 7
  %and343 = and i32 %shr342, 1
  %arrayidx344 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 2
  %144 = load i16, i16* %arrayidx344, align 2, !tbaa !7
  %conv345 = sext i16 %144 to i32
  %or346 = or i32 %conv345, %and343
  %conv347 = trunc i32 %or346 to i16
  store i16 %conv347, i16* %arrayidx344, align 2, !tbaa !7
  %145 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %146 = load i8, i8* %145, align 1, !tbaa !6
  %conv348 = zext i8 %146 to i32
  %shr349 = ashr i32 %conv348, 4
  %and350 = and i32 %shr349, 7
  %conv351 = trunc i32 %and350 to i16
  %arrayidx352 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 26
  store i16 %conv351, i16* %arrayidx352, align 2, !tbaa !7
  %147 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %148 = load i8, i8* %147, align 1, !tbaa !6
  %conv353 = zext i8 %148 to i32
  %shr354 = ashr i32 %conv353, 1
  %and355 = and i32 %shr354, 7
  %conv356 = trunc i32 %and355 to i16
  %arrayidx357 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 27
  store i16 %conv356, i16* %arrayidx357, align 2, !tbaa !7
  %149 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr358 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr358, i8** %c.addr, align 8, !tbaa !2
  %150 = load i8, i8* %149, align 1, !tbaa !6
  %conv359 = zext i8 %150 to i32
  %and360 = and i32 %conv359, 1
  %shl361 = shl i32 %and360, 2
  %conv362 = trunc i32 %shl361 to i16
  %arrayidx363 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 28
  store i16 %conv362, i16* %arrayidx363, align 2, !tbaa !7
  %151 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %152 = load i8, i8* %151, align 1, !tbaa !6
  %conv364 = zext i8 %152 to i32
  %shr365 = ashr i32 %conv364, 6
  %and366 = and i32 %shr365, 3
  %arrayidx367 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 28
  %153 = load i16, i16* %arrayidx367, align 2, !tbaa !7
  %conv368 = sext i16 %153 to i32
  %or369 = or i32 %conv368, %and366
  %conv370 = trunc i32 %or369 to i16
  store i16 %conv370, i16* %arrayidx367, align 2, !tbaa !7
  %154 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %155 = load i8, i8* %154, align 1, !tbaa !6
  %conv371 = zext i8 %155 to i32
  %shr372 = ashr i32 %conv371, 3
  %and373 = and i32 %shr372, 7
  %conv374 = trunc i32 %and373 to i16
  %arrayidx375 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 29
  store i16 %conv374, i16* %arrayidx375, align 2, !tbaa !7
  %156 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr376 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr376, i8** %c.addr, align 8, !tbaa !2
  %157 = load i8, i8* %156, align 1, !tbaa !6
  %conv377 = zext i8 %157 to i32
  %and378 = and i32 %conv377, 7
  %conv379 = trunc i32 %and378 to i16
  %arrayidx380 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 30
  store i16 %conv379, i16* %arrayidx380, align 2, !tbaa !7
  %158 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %159 = load i8, i8* %158, align 1, !tbaa !6
  %conv381 = zext i8 %159 to i32
  %shr382 = ashr i32 %conv381, 5
  %and383 = and i32 %shr382, 7
  %conv384 = trunc i32 %and383 to i16
  %arrayidx385 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 31
  store i16 %conv384, i16* %arrayidx385, align 2, !tbaa !7
  %160 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %161 = load i8, i8* %160, align 1, !tbaa !6
  %conv386 = zext i8 %161 to i32
  %shr387 = ashr i32 %conv386, 2
  %and388 = and i32 %shr387, 7
  %conv389 = trunc i32 %and388 to i16
  %arrayidx390 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 32
  store i16 %conv389, i16* %arrayidx390, align 2, !tbaa !7
  %162 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr391 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr391, i8** %c.addr, align 8, !tbaa !2
  %163 = load i8, i8* %162, align 1, !tbaa !6
  %conv392 = zext i8 %163 to i32
  %and393 = and i32 %conv392, 3
  %shl394 = shl i32 %and393, 1
  %conv395 = trunc i32 %shl394 to i16
  %arrayidx396 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 33
  store i16 %conv395, i16* %arrayidx396, align 2, !tbaa !7
  %164 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %165 = load i8, i8* %164, align 1, !tbaa !6
  %conv397 = zext i8 %165 to i32
  %shr398 = ashr i32 %conv397, 7
  %and399 = and i32 %shr398, 1
  %arrayidx400 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 33
  %166 = load i16, i16* %arrayidx400, align 2, !tbaa !7
  %conv401 = sext i16 %166 to i32
  %or402 = or i32 %conv401, %and399
  %conv403 = trunc i32 %or402 to i16
  store i16 %conv403, i16* %arrayidx400, align 2, !tbaa !7
  %167 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %168 = load i8, i8* %167, align 1, !tbaa !6
  %conv404 = zext i8 %168 to i32
  %shr405 = ashr i32 %conv404, 4
  %and406 = and i32 %shr405, 7
  %conv407 = trunc i32 %and406 to i16
  %arrayidx408 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 34
  store i16 %conv407, i16* %arrayidx408, align 2, !tbaa !7
  %169 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %170 = load i8, i8* %169, align 1, !tbaa !6
  %conv409 = zext i8 %170 to i32
  %shr410 = ashr i32 %conv409, 1
  %and411 = and i32 %shr410, 7
  %conv412 = trunc i32 %and411 to i16
  %arrayidx413 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 35
  store i16 %conv412, i16* %arrayidx413, align 2, !tbaa !7
  %171 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr414 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %incdec.ptr414, i8** %c.addr, align 8, !tbaa !2
  %172 = load i8, i8* %171, align 1, !tbaa !6
  %conv415 = zext i8 %172 to i32
  %and416 = and i32 %conv415, 1
  %shl417 = shl i32 %and416, 2
  %conv418 = trunc i32 %shl417 to i16
  %arrayidx419 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 36
  store i16 %conv418, i16* %arrayidx419, align 2, !tbaa !7
  %173 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %174 = load i8, i8* %173, align 1, !tbaa !6
  %conv420 = zext i8 %174 to i32
  %shr421 = ashr i32 %conv420, 6
  %and422 = and i32 %shr421, 3
  %arrayidx423 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 36
  %175 = load i16, i16* %arrayidx423, align 2, !tbaa !7
  %conv424 = sext i16 %175 to i32
  %or425 = or i32 %conv424, %and422
  %conv426 = trunc i32 %or425 to i16
  store i16 %conv426, i16* %arrayidx423, align 2, !tbaa !7
  %176 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %177 = load i8, i8* %176, align 1, !tbaa !6
  %conv427 = zext i8 %177 to i32
  %shr428 = ashr i32 %conv427, 3
  %and429 = and i32 %shr428, 7
  %conv430 = trunc i32 %and429 to i16
  %arrayidx431 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 37
  store i16 %conv430, i16* %arrayidx431, align 2, !tbaa !7
  %178 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr432 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr432, i8** %c.addr, align 8, !tbaa !2
  %179 = load i8, i8* %178, align 1, !tbaa !6
  %conv433 = zext i8 %179 to i32
  %and434 = and i32 %conv433, 7
  %conv435 = trunc i32 %and434 to i16
  %arrayidx436 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 38
  store i16 %conv435, i16* %arrayidx436, align 2, !tbaa !7
  %180 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %181 = load i8, i8* %180, align 1, !tbaa !6
  %conv437 = zext i8 %181 to i32
  %shr438 = ashr i32 %conv437, 1
  %and439 = and i32 %shr438, 127
  %conv440 = trunc i32 %and439 to i16
  %arrayidx441 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 3
  store i16 %conv440, i16* %arrayidx441, align 2, !tbaa !7
  %182 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr442 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr442, i8** %c.addr, align 8, !tbaa !2
  %183 = load i8, i8* %182, align 1, !tbaa !6
  %conv443 = zext i8 %183 to i32
  %and444 = and i32 %conv443, 1
  %shl445 = shl i32 %and444, 1
  %conv446 = trunc i32 %shl445 to i16
  %arrayidx447 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 3
  store i16 %conv446, i16* %arrayidx447, align 2, !tbaa !7
  %184 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %185 = load i8, i8* %184, align 1, !tbaa !6
  %conv448 = zext i8 %185 to i32
  %shr449 = ashr i32 %conv448, 7
  %and450 = and i32 %shr449, 1
  %arrayidx451 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 3
  %186 = load i16, i16* %arrayidx451, align 2, !tbaa !7
  %conv452 = sext i16 %186 to i32
  %or453 = or i32 %conv452, %and450
  %conv454 = trunc i32 %or453 to i16
  store i16 %conv454, i16* %arrayidx451, align 2, !tbaa !7
  %187 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %188 = load i8, i8* %187, align 1, !tbaa !6
  %conv455 = zext i8 %188 to i32
  %shr456 = ashr i32 %conv455, 5
  %and457 = and i32 %shr456, 3
  %conv458 = trunc i32 %and457 to i16
  %arrayidx459 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 3
  store i16 %conv458, i16* %arrayidx459, align 2, !tbaa !7
  %189 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr460 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr460, i8** %c.addr, align 8, !tbaa !2
  %190 = load i8, i8* %189, align 1, !tbaa !6
  %conv461 = zext i8 %190 to i32
  %and462 = and i32 %conv461, 31
  %shl463 = shl i32 %and462, 1
  %conv464 = trunc i32 %shl463 to i16
  %arrayidx465 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 3
  store i16 %conv464, i16* %arrayidx465, align 2, !tbaa !7
  %191 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %192 = load i8, i8* %191, align 1, !tbaa !6
  %conv466 = zext i8 %192 to i32
  %shr467 = ashr i32 %conv466, 7
  %and468 = and i32 %shr467, 1
  %arrayidx469 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 3
  %193 = load i16, i16* %arrayidx469, align 2, !tbaa !7
  %conv470 = sext i16 %193 to i32
  %or471 = or i32 %conv470, %and468
  %conv472 = trunc i32 %or471 to i16
  store i16 %conv472, i16* %arrayidx469, align 2, !tbaa !7
  %194 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %195 = load i8, i8* %194, align 1, !tbaa !6
  %conv473 = zext i8 %195 to i32
  %shr474 = ashr i32 %conv473, 4
  %and475 = and i32 %shr474, 7
  %conv476 = trunc i32 %and475 to i16
  %arrayidx477 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 39
  store i16 %conv476, i16* %arrayidx477, align 2, !tbaa !7
  %196 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %197 = load i8, i8* %196, align 1, !tbaa !6
  %conv478 = zext i8 %197 to i32
  %shr479 = ashr i32 %conv478, 1
  %and480 = and i32 %shr479, 7
  %conv481 = trunc i32 %and480 to i16
  %arrayidx482 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 40
  store i16 %conv481, i16* %arrayidx482, align 2, !tbaa !7
  %198 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr483 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr483, i8** %c.addr, align 8, !tbaa !2
  %199 = load i8, i8* %198, align 1, !tbaa !6
  %conv484 = zext i8 %199 to i32
  %and485 = and i32 %conv484, 1
  %shl486 = shl i32 %and485, 2
  %conv487 = trunc i32 %shl486 to i16
  %arrayidx488 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 41
  store i16 %conv487, i16* %arrayidx488, align 2, !tbaa !7
  %200 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %201 = load i8, i8* %200, align 1, !tbaa !6
  %conv489 = zext i8 %201 to i32
  %shr490 = ashr i32 %conv489, 6
  %and491 = and i32 %shr490, 3
  %arrayidx492 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 41
  %202 = load i16, i16* %arrayidx492, align 2, !tbaa !7
  %conv493 = sext i16 %202 to i32
  %or494 = or i32 %conv493, %and491
  %conv495 = trunc i32 %or494 to i16
  store i16 %conv495, i16* %arrayidx492, align 2, !tbaa !7
  %203 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %204 = load i8, i8* %203, align 1, !tbaa !6
  %conv496 = zext i8 %204 to i32
  %shr497 = ashr i32 %conv496, 3
  %and498 = and i32 %shr497, 7
  %conv499 = trunc i32 %and498 to i16
  %arrayidx500 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 42
  store i16 %conv499, i16* %arrayidx500, align 2, !tbaa !7
  %205 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr501 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr501, i8** %c.addr, align 8, !tbaa !2
  %206 = load i8, i8* %205, align 1, !tbaa !6
  %conv502 = zext i8 %206 to i32
  %and503 = and i32 %conv502, 7
  %conv504 = trunc i32 %and503 to i16
  %arrayidx505 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 43
  store i16 %conv504, i16* %arrayidx505, align 2, !tbaa !7
  %207 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %208 = load i8, i8* %207, align 1, !tbaa !6
  %conv506 = zext i8 %208 to i32
  %shr507 = ashr i32 %conv506, 5
  %and508 = and i32 %shr507, 7
  %conv509 = trunc i32 %and508 to i16
  %arrayidx510 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 44
  store i16 %conv509, i16* %arrayidx510, align 2, !tbaa !7
  %209 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %210 = load i8, i8* %209, align 1, !tbaa !6
  %conv511 = zext i8 %210 to i32
  %shr512 = ashr i32 %conv511, 2
  %and513 = and i32 %shr512, 7
  %conv514 = trunc i32 %and513 to i16
  %arrayidx515 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 45
  store i16 %conv514, i16* %arrayidx515, align 2, !tbaa !7
  %211 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr516 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr516, i8** %c.addr, align 8, !tbaa !2
  %212 = load i8, i8* %211, align 1, !tbaa !6
  %conv517 = zext i8 %212 to i32
  %and518 = and i32 %conv517, 3
  %shl519 = shl i32 %and518, 1
  %conv520 = trunc i32 %shl519 to i16
  %arrayidx521 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 46
  store i16 %conv520, i16* %arrayidx521, align 2, !tbaa !7
  %213 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %214 = load i8, i8* %213, align 1, !tbaa !6
  %conv522 = zext i8 %214 to i32
  %shr523 = ashr i32 %conv522, 7
  %and524 = and i32 %shr523, 1
  %arrayidx525 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 46
  %215 = load i16, i16* %arrayidx525, align 2, !tbaa !7
  %conv526 = sext i16 %215 to i32
  %or527 = or i32 %conv526, %and524
  %conv528 = trunc i32 %or527 to i16
  store i16 %conv528, i16* %arrayidx525, align 2, !tbaa !7
  %216 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %217 = load i8, i8* %216, align 1, !tbaa !6
  %conv529 = zext i8 %217 to i32
  %shr530 = ashr i32 %conv529, 4
  %and531 = and i32 %shr530, 7
  %conv532 = trunc i32 %and531 to i16
  %arrayidx533 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 47
  store i16 %conv532, i16* %arrayidx533, align 2, !tbaa !7
  %218 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %219 = load i8, i8* %218, align 1, !tbaa !6
  %conv534 = zext i8 %219 to i32
  %shr535 = ashr i32 %conv534, 1
  %and536 = and i32 %shr535, 7
  %conv537 = trunc i32 %and536 to i16
  %arrayidx538 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 48
  store i16 %conv537, i16* %arrayidx538, align 2, !tbaa !7
  %220 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr539 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr539, i8** %c.addr, align 8, !tbaa !2
  %221 = load i8, i8* %220, align 1, !tbaa !6
  %conv540 = zext i8 %221 to i32
  %and541 = and i32 %conv540, 1
  %shl542 = shl i32 %and541, 2
  %conv543 = trunc i32 %shl542 to i16
  %arrayidx544 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 49
  store i16 %conv543, i16* %arrayidx544, align 2, !tbaa !7
  %222 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %223 = load i8, i8* %222, align 1, !tbaa !6
  %conv545 = zext i8 %223 to i32
  %shr546 = ashr i32 %conv545, 6
  %and547 = and i32 %shr546, 3
  %arrayidx548 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 49
  %224 = load i16, i16* %arrayidx548, align 2, !tbaa !7
  %conv549 = sext i16 %224 to i32
  %or550 = or i32 %conv549, %and547
  %conv551 = trunc i32 %or550 to i16
  store i16 %conv551, i16* %arrayidx548, align 2, !tbaa !7
  %225 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %226 = load i8, i8* %225, align 1, !tbaa !6
  %conv552 = zext i8 %226 to i32
  %shr553 = ashr i32 %conv552, 3
  %and554 = and i32 %shr553, 7
  %conv555 = trunc i32 %and554 to i16
  %arrayidx556 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 50
  store i16 %conv555, i16* %arrayidx556, align 2, !tbaa !7
  %227 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %228 = load i8, i8* %227, align 1, !tbaa !6
  %conv557 = zext i8 %228 to i32
  %and558 = and i32 %conv557, 7
  %conv559 = trunc i32 %and558 to i16
  %arrayidx560 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 51
  store i16 %conv559, i16* %arrayidx560, align 2, !tbaa !7
  %229 = load %struct.gsm_state*, %struct.gsm_state** %s.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i32 0
  %arraydecay561 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i32 0
  %arraydecay562 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i32 0
  %arraydecay563 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i32 0
  %arraydecay564 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i32 0
  %arraydecay565 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i32 0
  %230 = load i16*, i16** %target.addr, align 8, !tbaa !2
  call void @Gsm_Decoder(%struct.gsm_state* %229, i16* %arraydecay, i16* %arraydecay561, i16* %arraydecay562, i16* %arraydecay563, i16* %arraydecay564, i16* %arraydecay565, i16* %230)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %231 = bitcast [52 x i16]* %xmc to i8*
  call void @llvm.lifetime.end(i64 104, i8* %231) #3
  %232 = bitcast [4 x i16]* %xmaxc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %232) #3
  %233 = bitcast [4 x i16]* %bc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #3
  %234 = bitcast [4 x i16]* %Mc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #3
  %235 = bitcast [4 x i16]* %Nc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %235) #3
  %236 = bitcast [8 x i16]* %LARc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %236) #3
  %237 = load i32, i32* %retval
  ret i32 %237
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @Gsm_Decoder(%struct.gsm_state*, i16*, i16*, i16*, i16*, i16*, i16*, i16*) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !4, i64 0}
