; ModuleID = 'gsm_explode.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define i32 @gsm_explode(%struct.gsm_state* %s, i8* %c, i16* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.gsm_state*, align 8
  %c.addr = alloca i8*, align 8
  %target.addr = alloca i16*, align 8
  store %struct.gsm_state* %s, %struct.gsm_state** %s.addr, align 8, !tbaa !2
  store i8* %c, i8** %c.addr, align 8, !tbaa !2
  store i16* %target, i16** %target.addr, align 8, !tbaa !2
  %0 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %1 = load i8, i8* %0, align 1, !tbaa !6
  %conv = zext i8 %1 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %cmp = icmp ne i32 %and, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %c.addr, align 8, !tbaa !2
  %3 = load i8, i8* %2, align 1, !tbaa !6
  %conv2 = zext i8 %3 to i32
  %and3 = and i32 %conv2, 15
  %shl = shl i32 %and3, 2
  %conv4 = trunc i32 %shl to i16
  %4 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !7
  %5 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %6 = load i8, i8* %5, align 1, !tbaa !6
  %conv5 = zext i8 %6 to i32
  %shr6 = ashr i32 %conv5, 6
  %and7 = and i32 %shr6, 3
  %7 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 0
  %8 = load i16, i16* %arrayidx8, align 2, !tbaa !7
  %conv9 = sext i16 %8 to i32
  %or = or i32 %conv9, %and7
  %conv10 = trunc i32 %or to i16
  store i16 %conv10, i16* %arrayidx8, align 2, !tbaa !7
  %9 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr11 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr11, i8** %c.addr, align 8, !tbaa !2
  %10 = load i8, i8* %9, align 1, !tbaa !6
  %conv12 = zext i8 %10 to i32
  %and13 = and i32 %conv12, 63
  %conv14 = trunc i32 %and13 to i16
  %11 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx15 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %conv14, i16* %arrayidx15, align 2, !tbaa !7
  %12 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %13 = load i8, i8* %12, align 1, !tbaa !6
  %conv16 = zext i8 %13 to i32
  %shr17 = ashr i32 %conv16, 3
  %and18 = and i32 %shr17, 31
  %conv19 = trunc i32 %and18 to i16
  %14 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx20 = getelementptr inbounds i16, i16* %14, i64 2
  store i16 %conv19, i16* %arrayidx20, align 2, !tbaa !7
  %15 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr21 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr21, i8** %c.addr, align 8, !tbaa !2
  %16 = load i8, i8* %15, align 1, !tbaa !6
  %conv22 = zext i8 %16 to i32
  %and23 = and i32 %conv22, 7
  %shl24 = shl i32 %and23, 2
  %conv25 = trunc i32 %shl24 to i16
  %17 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx26 = getelementptr inbounds i16, i16* %17, i64 3
  store i16 %conv25, i16* %arrayidx26, align 2, !tbaa !7
  %18 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %19 = load i8, i8* %18, align 1, !tbaa !6
  %conv27 = zext i8 %19 to i32
  %shr28 = ashr i32 %conv27, 6
  %and29 = and i32 %shr28, 3
  %20 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx30 = getelementptr inbounds i16, i16* %20, i64 3
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
  %24 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i16, i16* %24, i64 4
  store i16 %conv37, i16* %arrayidx38, align 2, !tbaa !7
  %25 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr39 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr39, i8** %c.addr, align 8, !tbaa !2
  %26 = load i8, i8* %25, align 1, !tbaa !6
  %conv40 = zext i8 %26 to i32
  %and41 = and i32 %conv40, 3
  %shl42 = shl i32 %and41, 2
  %conv43 = trunc i32 %shl42 to i16
  %27 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx44 = getelementptr inbounds i16, i16* %27, i64 5
  store i16 %conv43, i16* %arrayidx44, align 2, !tbaa !7
  %28 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %29 = load i8, i8* %28, align 1, !tbaa !6
  %conv45 = zext i8 %29 to i32
  %shr46 = ashr i32 %conv45, 6
  %and47 = and i32 %shr46, 3
  %30 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds i16, i16* %30, i64 5
  %31 = load i16, i16* %arrayidx48, align 2, !tbaa !7
  %conv49 = sext i16 %31 to i32
  %or50 = or i32 %conv49, %and47
  %conv51 = trunc i32 %or50 to i16
  store i16 %conv51, i16* %arrayidx48, align 2, !tbaa !7
  %32 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %33 = load i8, i8* %32, align 1, !tbaa !6
  %conv52 = zext i8 %33 to i32
  %shr53 = ashr i32 %conv52, 3
  %and54 = and i32 %shr53, 7
  %conv55 = trunc i32 %and54 to i16
  %34 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx56 = getelementptr inbounds i16, i16* %34, i64 6
  store i16 %conv55, i16* %arrayidx56, align 2, !tbaa !7
  %35 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr57 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr57, i8** %c.addr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !6
  %conv58 = zext i8 %36 to i32
  %and59 = and i32 %conv58, 7
  %conv60 = trunc i32 %and59 to i16
  %37 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %arrayidx61 = getelementptr inbounds i16, i16* %37, i64 7
  store i16 %conv60, i16* %arrayidx61, align 2, !tbaa !7
  %38 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %39 = load i8, i8* %38, align 1, !tbaa !6
  %conv62 = zext i8 %39 to i32
  %shr63 = ashr i32 %conv62, 1
  %and64 = and i32 %shr63, 127
  %conv65 = trunc i32 %and64 to i16
  %40 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds i16, i16* %40, i64 8
  %arrayidx66 = getelementptr inbounds i16, i16* %add.ptr, i64 0
  store i16 %conv65, i16* %arrayidx66, align 2, !tbaa !7
  %41 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr67 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr67, i8** %c.addr, align 8, !tbaa !2
  %42 = load i8, i8* %41, align 1, !tbaa !6
  %conv68 = zext i8 %42 to i32
  %and69 = and i32 %conv68, 1
  %shl70 = shl i32 %and69, 1
  %conv71 = trunc i32 %shl70 to i16
  %43 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr72 = getelementptr inbounds i16, i16* %43, i64 9
  %arrayidx73 = getelementptr inbounds i16, i16* %add.ptr72, i64 0
  store i16 %conv71, i16* %arrayidx73, align 2, !tbaa !7
  %44 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %45 = load i8, i8* %44, align 1, !tbaa !6
  %conv74 = zext i8 %45 to i32
  %shr75 = ashr i32 %conv74, 7
  %and76 = and i32 %shr75, 1
  %46 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr77 = getelementptr inbounds i16, i16* %46, i64 9
  %arrayidx78 = getelementptr inbounds i16, i16* %add.ptr77, i64 0
  %47 = load i16, i16* %arrayidx78, align 2, !tbaa !7
  %conv79 = sext i16 %47 to i32
  %or80 = or i32 %conv79, %and76
  %conv81 = trunc i32 %or80 to i16
  store i16 %conv81, i16* %arrayidx78, align 2, !tbaa !7
  %48 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %49 = load i8, i8* %48, align 1, !tbaa !6
  %conv82 = zext i8 %49 to i32
  %shr83 = ashr i32 %conv82, 5
  %and84 = and i32 %shr83, 3
  %conv85 = trunc i32 %and84 to i16
  %50 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr86 = getelementptr inbounds i16, i16* %50, i64 10
  %arrayidx87 = getelementptr inbounds i16, i16* %add.ptr86, i64 0
  store i16 %conv85, i16* %arrayidx87, align 2, !tbaa !7
  %51 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr88 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr88, i8** %c.addr, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !6
  %conv89 = zext i8 %52 to i32
  %and90 = and i32 %conv89, 31
  %shl91 = shl i32 %and90, 1
  %conv92 = trunc i32 %shl91 to i16
  %53 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr93 = getelementptr inbounds i16, i16* %53, i64 11
  %arrayidx94 = getelementptr inbounds i16, i16* %add.ptr93, i64 0
  store i16 %conv92, i16* %arrayidx94, align 2, !tbaa !7
  %54 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %55 = load i8, i8* %54, align 1, !tbaa !6
  %conv95 = zext i8 %55 to i32
  %shr96 = ashr i32 %conv95, 7
  %and97 = and i32 %shr96, 1
  %56 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr98 = getelementptr inbounds i16, i16* %56, i64 11
  %arrayidx99 = getelementptr inbounds i16, i16* %add.ptr98, i64 0
  %57 = load i16, i16* %arrayidx99, align 2, !tbaa !7
  %conv100 = sext i16 %57 to i32
  %or101 = or i32 %conv100, %and97
  %conv102 = trunc i32 %or101 to i16
  store i16 %conv102, i16* %arrayidx99, align 2, !tbaa !7
  %58 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %59 = load i8, i8* %58, align 1, !tbaa !6
  %conv103 = zext i8 %59 to i32
  %shr104 = ashr i32 %conv103, 4
  %and105 = and i32 %shr104, 7
  %conv106 = trunc i32 %and105 to i16
  %60 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr107 = getelementptr inbounds i16, i16* %60, i64 12
  %arrayidx108 = getelementptr inbounds i16, i16* %add.ptr107, i64 0
  store i16 %conv106, i16* %arrayidx108, align 2, !tbaa !7
  %61 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %62 = load i8, i8* %61, align 1, !tbaa !6
  %conv109 = zext i8 %62 to i32
  %shr110 = ashr i32 %conv109, 1
  %and111 = and i32 %shr110, 7
  %conv112 = trunc i32 %and111 to i16
  %63 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr113 = getelementptr inbounds i16, i16* %63, i64 12
  %arrayidx114 = getelementptr inbounds i16, i16* %add.ptr113, i64 1
  store i16 %conv112, i16* %arrayidx114, align 2, !tbaa !7
  %64 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr115 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr115, i8** %c.addr, align 8, !tbaa !2
  %65 = load i8, i8* %64, align 1, !tbaa !6
  %conv116 = zext i8 %65 to i32
  %and117 = and i32 %conv116, 1
  %shl118 = shl i32 %and117, 2
  %conv119 = trunc i32 %shl118 to i16
  %66 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr120 = getelementptr inbounds i16, i16* %66, i64 12
  %arrayidx121 = getelementptr inbounds i16, i16* %add.ptr120, i64 2
  store i16 %conv119, i16* %arrayidx121, align 2, !tbaa !7
  %67 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %68 = load i8, i8* %67, align 1, !tbaa !6
  %conv122 = zext i8 %68 to i32
  %shr123 = ashr i32 %conv122, 6
  %and124 = and i32 %shr123, 3
  %69 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr125 = getelementptr inbounds i16, i16* %69, i64 12
  %arrayidx126 = getelementptr inbounds i16, i16* %add.ptr125, i64 2
  %70 = load i16, i16* %arrayidx126, align 2, !tbaa !7
  %conv127 = sext i16 %70 to i32
  %or128 = or i32 %conv127, %and124
  %conv129 = trunc i32 %or128 to i16
  store i16 %conv129, i16* %arrayidx126, align 2, !tbaa !7
  %71 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %72 = load i8, i8* %71, align 1, !tbaa !6
  %conv130 = zext i8 %72 to i32
  %shr131 = ashr i32 %conv130, 3
  %and132 = and i32 %shr131, 7
  %conv133 = trunc i32 %and132 to i16
  %73 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr134 = getelementptr inbounds i16, i16* %73, i64 12
  %arrayidx135 = getelementptr inbounds i16, i16* %add.ptr134, i64 3
  store i16 %conv133, i16* %arrayidx135, align 2, !tbaa !7
  %74 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr136 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr136, i8** %c.addr, align 8, !tbaa !2
  %75 = load i8, i8* %74, align 1, !tbaa !6
  %conv137 = zext i8 %75 to i32
  %and138 = and i32 %conv137, 7
  %conv139 = trunc i32 %and138 to i16
  %76 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr140 = getelementptr inbounds i16, i16* %76, i64 12
  %arrayidx141 = getelementptr inbounds i16, i16* %add.ptr140, i64 4
  store i16 %conv139, i16* %arrayidx141, align 2, !tbaa !7
  %77 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %78 = load i8, i8* %77, align 1, !tbaa !6
  %conv142 = zext i8 %78 to i32
  %shr143 = ashr i32 %conv142, 5
  %and144 = and i32 %shr143, 7
  %conv145 = trunc i32 %and144 to i16
  %79 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr146 = getelementptr inbounds i16, i16* %79, i64 12
  %arrayidx147 = getelementptr inbounds i16, i16* %add.ptr146, i64 5
  store i16 %conv145, i16* %arrayidx147, align 2, !tbaa !7
  %80 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %81 = load i8, i8* %80, align 1, !tbaa !6
  %conv148 = zext i8 %81 to i32
  %shr149 = ashr i32 %conv148, 2
  %and150 = and i32 %shr149, 7
  %conv151 = trunc i32 %and150 to i16
  %82 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr152 = getelementptr inbounds i16, i16* %82, i64 12
  %arrayidx153 = getelementptr inbounds i16, i16* %add.ptr152, i64 6
  store i16 %conv151, i16* %arrayidx153, align 2, !tbaa !7
  %83 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr154 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr154, i8** %c.addr, align 8, !tbaa !2
  %84 = load i8, i8* %83, align 1, !tbaa !6
  %conv155 = zext i8 %84 to i32
  %and156 = and i32 %conv155, 3
  %shl157 = shl i32 %and156, 1
  %conv158 = trunc i32 %shl157 to i16
  %85 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr159 = getelementptr inbounds i16, i16* %85, i64 12
  %arrayidx160 = getelementptr inbounds i16, i16* %add.ptr159, i64 7
  store i16 %conv158, i16* %arrayidx160, align 2, !tbaa !7
  %86 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %87 = load i8, i8* %86, align 1, !tbaa !6
  %conv161 = zext i8 %87 to i32
  %shr162 = ashr i32 %conv161, 7
  %and163 = and i32 %shr162, 1
  %88 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr164 = getelementptr inbounds i16, i16* %88, i64 12
  %arrayidx165 = getelementptr inbounds i16, i16* %add.ptr164, i64 7
  %89 = load i16, i16* %arrayidx165, align 2, !tbaa !7
  %conv166 = sext i16 %89 to i32
  %or167 = or i32 %conv166, %and163
  %conv168 = trunc i32 %or167 to i16
  store i16 %conv168, i16* %arrayidx165, align 2, !tbaa !7
  %90 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %91 = load i8, i8* %90, align 1, !tbaa !6
  %conv169 = zext i8 %91 to i32
  %shr170 = ashr i32 %conv169, 4
  %and171 = and i32 %shr170, 7
  %conv172 = trunc i32 %and171 to i16
  %92 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr173 = getelementptr inbounds i16, i16* %92, i64 12
  %arrayidx174 = getelementptr inbounds i16, i16* %add.ptr173, i64 8
  store i16 %conv172, i16* %arrayidx174, align 2, !tbaa !7
  %93 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %94 = load i8, i8* %93, align 1, !tbaa !6
  %conv175 = zext i8 %94 to i32
  %shr176 = ashr i32 %conv175, 1
  %and177 = and i32 %shr176, 7
  %conv178 = trunc i32 %and177 to i16
  %95 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr179 = getelementptr inbounds i16, i16* %95, i64 12
  %arrayidx180 = getelementptr inbounds i16, i16* %add.ptr179, i64 9
  store i16 %conv178, i16* %arrayidx180, align 2, !tbaa !7
  %96 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr181 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr181, i8** %c.addr, align 8, !tbaa !2
  %97 = load i8, i8* %96, align 1, !tbaa !6
  %conv182 = zext i8 %97 to i32
  %and183 = and i32 %conv182, 1
  %shl184 = shl i32 %and183, 2
  %conv185 = trunc i32 %shl184 to i16
  %98 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr186 = getelementptr inbounds i16, i16* %98, i64 12
  %arrayidx187 = getelementptr inbounds i16, i16* %add.ptr186, i64 10
  store i16 %conv185, i16* %arrayidx187, align 2, !tbaa !7
  %99 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %100 = load i8, i8* %99, align 1, !tbaa !6
  %conv188 = zext i8 %100 to i32
  %shr189 = ashr i32 %conv188, 6
  %and190 = and i32 %shr189, 3
  %101 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr191 = getelementptr inbounds i16, i16* %101, i64 12
  %arrayidx192 = getelementptr inbounds i16, i16* %add.ptr191, i64 10
  %102 = load i16, i16* %arrayidx192, align 2, !tbaa !7
  %conv193 = sext i16 %102 to i32
  %or194 = or i32 %conv193, %and190
  %conv195 = trunc i32 %or194 to i16
  store i16 %conv195, i16* %arrayidx192, align 2, !tbaa !7
  %103 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %104 = load i8, i8* %103, align 1, !tbaa !6
  %conv196 = zext i8 %104 to i32
  %shr197 = ashr i32 %conv196, 3
  %and198 = and i32 %shr197, 7
  %conv199 = trunc i32 %and198 to i16
  %105 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr200 = getelementptr inbounds i16, i16* %105, i64 12
  %arrayidx201 = getelementptr inbounds i16, i16* %add.ptr200, i64 11
  store i16 %conv199, i16* %arrayidx201, align 2, !tbaa !7
  %106 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr202 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr202, i8** %c.addr, align 8, !tbaa !2
  %107 = load i8, i8* %106, align 1, !tbaa !6
  %conv203 = zext i8 %107 to i32
  %and204 = and i32 %conv203, 7
  %conv205 = trunc i32 %and204 to i16
  %108 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr206 = getelementptr inbounds i16, i16* %108, i64 12
  %arrayidx207 = getelementptr inbounds i16, i16* %add.ptr206, i64 12
  store i16 %conv205, i16* %arrayidx207, align 2, !tbaa !7
  %109 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %110 = load i8, i8* %109, align 1, !tbaa !6
  %conv208 = zext i8 %110 to i32
  %shr209 = ashr i32 %conv208, 1
  %and210 = and i32 %shr209, 127
  %conv211 = trunc i32 %and210 to i16
  %111 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr212 = getelementptr inbounds i16, i16* %111, i64 25
  %add.ptr213 = getelementptr inbounds i16, i16* %add.ptr212, i64 -1
  %arrayidx214 = getelementptr inbounds i16, i16* %add.ptr213, i64 1
  store i16 %conv211, i16* %arrayidx214, align 2, !tbaa !7
  %112 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr215 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr215, i8** %c.addr, align 8, !tbaa !2
  %113 = load i8, i8* %112, align 1, !tbaa !6
  %conv216 = zext i8 %113 to i32
  %and217 = and i32 %conv216, 1
  %shl218 = shl i32 %and217, 1
  %conv219 = trunc i32 %shl218 to i16
  %114 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr220 = getelementptr inbounds i16, i16* %114, i64 26
  %add.ptr221 = getelementptr inbounds i16, i16* %add.ptr220, i64 -1
  %arrayidx222 = getelementptr inbounds i16, i16* %add.ptr221, i64 1
  store i16 %conv219, i16* %arrayidx222, align 2, !tbaa !7
  %115 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %116 = load i8, i8* %115, align 1, !tbaa !6
  %conv223 = zext i8 %116 to i32
  %shr224 = ashr i32 %conv223, 7
  %and225 = and i32 %shr224, 1
  %117 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr226 = getelementptr inbounds i16, i16* %117, i64 26
  %add.ptr227 = getelementptr inbounds i16, i16* %add.ptr226, i64 -1
  %arrayidx228 = getelementptr inbounds i16, i16* %add.ptr227, i64 1
  %118 = load i16, i16* %arrayidx228, align 2, !tbaa !7
  %conv229 = sext i16 %118 to i32
  %or230 = or i32 %conv229, %and225
  %conv231 = trunc i32 %or230 to i16
  store i16 %conv231, i16* %arrayidx228, align 2, !tbaa !7
  %119 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %120 = load i8, i8* %119, align 1, !tbaa !6
  %conv232 = zext i8 %120 to i32
  %shr233 = ashr i32 %conv232, 5
  %and234 = and i32 %shr233, 3
  %conv235 = trunc i32 %and234 to i16
  %121 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr236 = getelementptr inbounds i16, i16* %121, i64 27
  %add.ptr237 = getelementptr inbounds i16, i16* %add.ptr236, i64 -1
  %arrayidx238 = getelementptr inbounds i16, i16* %add.ptr237, i64 1
  store i16 %conv235, i16* %arrayidx238, align 2, !tbaa !7
  %122 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr239 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr239, i8** %c.addr, align 8, !tbaa !2
  %123 = load i8, i8* %122, align 1, !tbaa !6
  %conv240 = zext i8 %123 to i32
  %and241 = and i32 %conv240, 31
  %shl242 = shl i32 %and241, 1
  %conv243 = trunc i32 %shl242 to i16
  %124 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr244 = getelementptr inbounds i16, i16* %124, i64 28
  %add.ptr245 = getelementptr inbounds i16, i16* %add.ptr244, i64 -1
  %arrayidx246 = getelementptr inbounds i16, i16* %add.ptr245, i64 1
  store i16 %conv243, i16* %arrayidx246, align 2, !tbaa !7
  %125 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %126 = load i8, i8* %125, align 1, !tbaa !6
  %conv247 = zext i8 %126 to i32
  %shr248 = ashr i32 %conv247, 7
  %and249 = and i32 %shr248, 1
  %127 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr250 = getelementptr inbounds i16, i16* %127, i64 28
  %add.ptr251 = getelementptr inbounds i16, i16* %add.ptr250, i64 -1
  %arrayidx252 = getelementptr inbounds i16, i16* %add.ptr251, i64 1
  %128 = load i16, i16* %arrayidx252, align 2, !tbaa !7
  %conv253 = sext i16 %128 to i32
  %or254 = or i32 %conv253, %and249
  %conv255 = trunc i32 %or254 to i16
  store i16 %conv255, i16* %arrayidx252, align 2, !tbaa !7
  %129 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %130 = load i8, i8* %129, align 1, !tbaa !6
  %conv256 = zext i8 %130 to i32
  %shr257 = ashr i32 %conv256, 4
  %and258 = and i32 %shr257, 7
  %conv259 = trunc i32 %and258 to i16
  %131 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr260 = getelementptr inbounds i16, i16* %131, i64 29
  %add.ptr261 = getelementptr inbounds i16, i16* %add.ptr260, i64 -13
  %arrayidx262 = getelementptr inbounds i16, i16* %add.ptr261, i64 13
  store i16 %conv259, i16* %arrayidx262, align 2, !tbaa !7
  %132 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %133 = load i8, i8* %132, align 1, !tbaa !6
  %conv263 = zext i8 %133 to i32
  %shr264 = ashr i32 %conv263, 1
  %and265 = and i32 %shr264, 7
  %conv266 = trunc i32 %and265 to i16
  %134 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr267 = getelementptr inbounds i16, i16* %134, i64 29
  %add.ptr268 = getelementptr inbounds i16, i16* %add.ptr267, i64 -13
  %arrayidx269 = getelementptr inbounds i16, i16* %add.ptr268, i64 14
  store i16 %conv266, i16* %arrayidx269, align 2, !tbaa !7
  %135 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr270 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr270, i8** %c.addr, align 8, !tbaa !2
  %136 = load i8, i8* %135, align 1, !tbaa !6
  %conv271 = zext i8 %136 to i32
  %and272 = and i32 %conv271, 1
  %shl273 = shl i32 %and272, 2
  %conv274 = trunc i32 %shl273 to i16
  %137 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr275 = getelementptr inbounds i16, i16* %137, i64 29
  %add.ptr276 = getelementptr inbounds i16, i16* %add.ptr275, i64 -13
  %arrayidx277 = getelementptr inbounds i16, i16* %add.ptr276, i64 15
  store i16 %conv274, i16* %arrayidx277, align 2, !tbaa !7
  %138 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %139 = load i8, i8* %138, align 1, !tbaa !6
  %conv278 = zext i8 %139 to i32
  %shr279 = ashr i32 %conv278, 6
  %and280 = and i32 %shr279, 3
  %140 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr281 = getelementptr inbounds i16, i16* %140, i64 29
  %add.ptr282 = getelementptr inbounds i16, i16* %add.ptr281, i64 -13
  %arrayidx283 = getelementptr inbounds i16, i16* %add.ptr282, i64 15
  %141 = load i16, i16* %arrayidx283, align 2, !tbaa !7
  %conv284 = sext i16 %141 to i32
  %or285 = or i32 %conv284, %and280
  %conv286 = trunc i32 %or285 to i16
  store i16 %conv286, i16* %arrayidx283, align 2, !tbaa !7
  %142 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %143 = load i8, i8* %142, align 1, !tbaa !6
  %conv287 = zext i8 %143 to i32
  %shr288 = ashr i32 %conv287, 3
  %and289 = and i32 %shr288, 7
  %conv290 = trunc i32 %and289 to i16
  %144 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr291 = getelementptr inbounds i16, i16* %144, i64 29
  %add.ptr292 = getelementptr inbounds i16, i16* %add.ptr291, i64 -13
  %arrayidx293 = getelementptr inbounds i16, i16* %add.ptr292, i64 16
  store i16 %conv290, i16* %arrayidx293, align 2, !tbaa !7
  %145 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr294 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr294, i8** %c.addr, align 8, !tbaa !2
  %146 = load i8, i8* %145, align 1, !tbaa !6
  %conv295 = zext i8 %146 to i32
  %and296 = and i32 %conv295, 7
  %conv297 = trunc i32 %and296 to i16
  %147 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr298 = getelementptr inbounds i16, i16* %147, i64 29
  %add.ptr299 = getelementptr inbounds i16, i16* %add.ptr298, i64 -13
  %arrayidx300 = getelementptr inbounds i16, i16* %add.ptr299, i64 17
  store i16 %conv297, i16* %arrayidx300, align 2, !tbaa !7
  %148 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %149 = load i8, i8* %148, align 1, !tbaa !6
  %conv301 = zext i8 %149 to i32
  %shr302 = ashr i32 %conv301, 5
  %and303 = and i32 %shr302, 7
  %conv304 = trunc i32 %and303 to i16
  %150 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr305 = getelementptr inbounds i16, i16* %150, i64 29
  %add.ptr306 = getelementptr inbounds i16, i16* %add.ptr305, i64 -13
  %arrayidx307 = getelementptr inbounds i16, i16* %add.ptr306, i64 18
  store i16 %conv304, i16* %arrayidx307, align 2, !tbaa !7
  %151 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %152 = load i8, i8* %151, align 1, !tbaa !6
  %conv308 = zext i8 %152 to i32
  %shr309 = ashr i32 %conv308, 2
  %and310 = and i32 %shr309, 7
  %conv311 = trunc i32 %and310 to i16
  %153 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr312 = getelementptr inbounds i16, i16* %153, i64 29
  %add.ptr313 = getelementptr inbounds i16, i16* %add.ptr312, i64 -13
  %arrayidx314 = getelementptr inbounds i16, i16* %add.ptr313, i64 19
  store i16 %conv311, i16* %arrayidx314, align 2, !tbaa !7
  %154 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr315 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr315, i8** %c.addr, align 8, !tbaa !2
  %155 = load i8, i8* %154, align 1, !tbaa !6
  %conv316 = zext i8 %155 to i32
  %and317 = and i32 %conv316, 3
  %shl318 = shl i32 %and317, 1
  %conv319 = trunc i32 %shl318 to i16
  %156 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr320 = getelementptr inbounds i16, i16* %156, i64 29
  %add.ptr321 = getelementptr inbounds i16, i16* %add.ptr320, i64 -13
  %arrayidx322 = getelementptr inbounds i16, i16* %add.ptr321, i64 20
  store i16 %conv319, i16* %arrayidx322, align 2, !tbaa !7
  %157 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %158 = load i8, i8* %157, align 1, !tbaa !6
  %conv323 = zext i8 %158 to i32
  %shr324 = ashr i32 %conv323, 7
  %and325 = and i32 %shr324, 1
  %159 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr326 = getelementptr inbounds i16, i16* %159, i64 29
  %add.ptr327 = getelementptr inbounds i16, i16* %add.ptr326, i64 -13
  %arrayidx328 = getelementptr inbounds i16, i16* %add.ptr327, i64 20
  %160 = load i16, i16* %arrayidx328, align 2, !tbaa !7
  %conv329 = sext i16 %160 to i32
  %or330 = or i32 %conv329, %and325
  %conv331 = trunc i32 %or330 to i16
  store i16 %conv331, i16* %arrayidx328, align 2, !tbaa !7
  %161 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %162 = load i8, i8* %161, align 1, !tbaa !6
  %conv332 = zext i8 %162 to i32
  %shr333 = ashr i32 %conv332, 4
  %and334 = and i32 %shr333, 7
  %conv335 = trunc i32 %and334 to i16
  %163 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr336 = getelementptr inbounds i16, i16* %163, i64 29
  %add.ptr337 = getelementptr inbounds i16, i16* %add.ptr336, i64 -13
  %arrayidx338 = getelementptr inbounds i16, i16* %add.ptr337, i64 21
  store i16 %conv335, i16* %arrayidx338, align 2, !tbaa !7
  %164 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %165 = load i8, i8* %164, align 1, !tbaa !6
  %conv339 = zext i8 %165 to i32
  %shr340 = ashr i32 %conv339, 1
  %and341 = and i32 %shr340, 7
  %conv342 = trunc i32 %and341 to i16
  %166 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr343 = getelementptr inbounds i16, i16* %166, i64 29
  %add.ptr344 = getelementptr inbounds i16, i16* %add.ptr343, i64 -13
  %arrayidx345 = getelementptr inbounds i16, i16* %add.ptr344, i64 22
  store i16 %conv342, i16* %arrayidx345, align 2, !tbaa !7
  %167 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr346 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr346, i8** %c.addr, align 8, !tbaa !2
  %168 = load i8, i8* %167, align 1, !tbaa !6
  %conv347 = zext i8 %168 to i32
  %and348 = and i32 %conv347, 1
  %shl349 = shl i32 %and348, 2
  %conv350 = trunc i32 %shl349 to i16
  %169 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr351 = getelementptr inbounds i16, i16* %169, i64 29
  %add.ptr352 = getelementptr inbounds i16, i16* %add.ptr351, i64 -13
  %arrayidx353 = getelementptr inbounds i16, i16* %add.ptr352, i64 23
  store i16 %conv350, i16* %arrayidx353, align 2, !tbaa !7
  %170 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %171 = load i8, i8* %170, align 1, !tbaa !6
  %conv354 = zext i8 %171 to i32
  %shr355 = ashr i32 %conv354, 6
  %and356 = and i32 %shr355, 3
  %172 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr357 = getelementptr inbounds i16, i16* %172, i64 29
  %add.ptr358 = getelementptr inbounds i16, i16* %add.ptr357, i64 -13
  %arrayidx359 = getelementptr inbounds i16, i16* %add.ptr358, i64 23
  %173 = load i16, i16* %arrayidx359, align 2, !tbaa !7
  %conv360 = sext i16 %173 to i32
  %or361 = or i32 %conv360, %and356
  %conv362 = trunc i32 %or361 to i16
  store i16 %conv362, i16* %arrayidx359, align 2, !tbaa !7
  %174 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %175 = load i8, i8* %174, align 1, !tbaa !6
  %conv363 = zext i8 %175 to i32
  %shr364 = ashr i32 %conv363, 3
  %and365 = and i32 %shr364, 7
  %conv366 = trunc i32 %and365 to i16
  %176 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr367 = getelementptr inbounds i16, i16* %176, i64 29
  %add.ptr368 = getelementptr inbounds i16, i16* %add.ptr367, i64 -13
  %arrayidx369 = getelementptr inbounds i16, i16* %add.ptr368, i64 24
  store i16 %conv366, i16* %arrayidx369, align 2, !tbaa !7
  %177 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr370 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %incdec.ptr370, i8** %c.addr, align 8, !tbaa !2
  %178 = load i8, i8* %177, align 1, !tbaa !6
  %conv371 = zext i8 %178 to i32
  %and372 = and i32 %conv371, 7
  %conv373 = trunc i32 %and372 to i16
  %179 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr374 = getelementptr inbounds i16, i16* %179, i64 29
  %add.ptr375 = getelementptr inbounds i16, i16* %add.ptr374, i64 -13
  %arrayidx376 = getelementptr inbounds i16, i16* %add.ptr375, i64 25
  store i16 %conv373, i16* %arrayidx376, align 2, !tbaa !7
  %180 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %181 = load i8, i8* %180, align 1, !tbaa !6
  %conv377 = zext i8 %181 to i32
  %shr378 = ashr i32 %conv377, 1
  %and379 = and i32 %shr378, 127
  %conv380 = trunc i32 %and379 to i16
  %182 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr381 = getelementptr inbounds i16, i16* %182, i64 42
  %add.ptr382 = getelementptr inbounds i16, i16* %add.ptr381, i64 -2
  %arrayidx383 = getelementptr inbounds i16, i16* %add.ptr382, i64 2
  store i16 %conv380, i16* %arrayidx383, align 2, !tbaa !7
  %183 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr384 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr384, i8** %c.addr, align 8, !tbaa !2
  %184 = load i8, i8* %183, align 1, !tbaa !6
  %conv385 = zext i8 %184 to i32
  %and386 = and i32 %conv385, 1
  %shl387 = shl i32 %and386, 1
  %conv388 = trunc i32 %shl387 to i16
  %185 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr389 = getelementptr inbounds i16, i16* %185, i64 43
  %add.ptr390 = getelementptr inbounds i16, i16* %add.ptr389, i64 -2
  %arrayidx391 = getelementptr inbounds i16, i16* %add.ptr390, i64 2
  store i16 %conv388, i16* %arrayidx391, align 2, !tbaa !7
  %186 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %187 = load i8, i8* %186, align 1, !tbaa !6
  %conv392 = zext i8 %187 to i32
  %shr393 = ashr i32 %conv392, 7
  %and394 = and i32 %shr393, 1
  %188 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr395 = getelementptr inbounds i16, i16* %188, i64 43
  %add.ptr396 = getelementptr inbounds i16, i16* %add.ptr395, i64 -2
  %arrayidx397 = getelementptr inbounds i16, i16* %add.ptr396, i64 2
  %189 = load i16, i16* %arrayidx397, align 2, !tbaa !7
  %conv398 = sext i16 %189 to i32
  %or399 = or i32 %conv398, %and394
  %conv400 = trunc i32 %or399 to i16
  store i16 %conv400, i16* %arrayidx397, align 2, !tbaa !7
  %190 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %191 = load i8, i8* %190, align 1, !tbaa !6
  %conv401 = zext i8 %191 to i32
  %shr402 = ashr i32 %conv401, 5
  %and403 = and i32 %shr402, 3
  %conv404 = trunc i32 %and403 to i16
  %192 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr405 = getelementptr inbounds i16, i16* %192, i64 44
  %add.ptr406 = getelementptr inbounds i16, i16* %add.ptr405, i64 -2
  %arrayidx407 = getelementptr inbounds i16, i16* %add.ptr406, i64 2
  store i16 %conv404, i16* %arrayidx407, align 2, !tbaa !7
  %193 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr408 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr408, i8** %c.addr, align 8, !tbaa !2
  %194 = load i8, i8* %193, align 1, !tbaa !6
  %conv409 = zext i8 %194 to i32
  %and410 = and i32 %conv409, 31
  %shl411 = shl i32 %and410, 1
  %conv412 = trunc i32 %shl411 to i16
  %195 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr413 = getelementptr inbounds i16, i16* %195, i64 45
  %add.ptr414 = getelementptr inbounds i16, i16* %add.ptr413, i64 -2
  %arrayidx415 = getelementptr inbounds i16, i16* %add.ptr414, i64 2
  store i16 %conv412, i16* %arrayidx415, align 2, !tbaa !7
  %196 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %197 = load i8, i8* %196, align 1, !tbaa !6
  %conv416 = zext i8 %197 to i32
  %shr417 = ashr i32 %conv416, 7
  %and418 = and i32 %shr417, 1
  %198 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr419 = getelementptr inbounds i16, i16* %198, i64 45
  %add.ptr420 = getelementptr inbounds i16, i16* %add.ptr419, i64 -2
  %arrayidx421 = getelementptr inbounds i16, i16* %add.ptr420, i64 2
  %199 = load i16, i16* %arrayidx421, align 2, !tbaa !7
  %conv422 = sext i16 %199 to i32
  %or423 = or i32 %conv422, %and418
  %conv424 = trunc i32 %or423 to i16
  store i16 %conv424, i16* %arrayidx421, align 2, !tbaa !7
  %200 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %201 = load i8, i8* %200, align 1, !tbaa !6
  %conv425 = zext i8 %201 to i32
  %shr426 = ashr i32 %conv425, 4
  %and427 = and i32 %shr426, 7
  %conv428 = trunc i32 %and427 to i16
  %202 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr429 = getelementptr inbounds i16, i16* %202, i64 46
  %add.ptr430 = getelementptr inbounds i16, i16* %add.ptr429, i64 -26
  %arrayidx431 = getelementptr inbounds i16, i16* %add.ptr430, i64 26
  store i16 %conv428, i16* %arrayidx431, align 2, !tbaa !7
  %203 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %204 = load i8, i8* %203, align 1, !tbaa !6
  %conv432 = zext i8 %204 to i32
  %shr433 = ashr i32 %conv432, 1
  %and434 = and i32 %shr433, 7
  %conv435 = trunc i32 %and434 to i16
  %205 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr436 = getelementptr inbounds i16, i16* %205, i64 46
  %add.ptr437 = getelementptr inbounds i16, i16* %add.ptr436, i64 -26
  %arrayidx438 = getelementptr inbounds i16, i16* %add.ptr437, i64 27
  store i16 %conv435, i16* %arrayidx438, align 2, !tbaa !7
  %206 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr439 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr439, i8** %c.addr, align 8, !tbaa !2
  %207 = load i8, i8* %206, align 1, !tbaa !6
  %conv440 = zext i8 %207 to i32
  %and441 = and i32 %conv440, 1
  %shl442 = shl i32 %and441, 2
  %conv443 = trunc i32 %shl442 to i16
  %208 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr444 = getelementptr inbounds i16, i16* %208, i64 46
  %add.ptr445 = getelementptr inbounds i16, i16* %add.ptr444, i64 -26
  %arrayidx446 = getelementptr inbounds i16, i16* %add.ptr445, i64 28
  store i16 %conv443, i16* %arrayidx446, align 2, !tbaa !7
  %209 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %210 = load i8, i8* %209, align 1, !tbaa !6
  %conv447 = zext i8 %210 to i32
  %shr448 = ashr i32 %conv447, 6
  %and449 = and i32 %shr448, 3
  %211 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr450 = getelementptr inbounds i16, i16* %211, i64 46
  %add.ptr451 = getelementptr inbounds i16, i16* %add.ptr450, i64 -26
  %arrayidx452 = getelementptr inbounds i16, i16* %add.ptr451, i64 28
  %212 = load i16, i16* %arrayidx452, align 2, !tbaa !7
  %conv453 = sext i16 %212 to i32
  %or454 = or i32 %conv453, %and449
  %conv455 = trunc i32 %or454 to i16
  store i16 %conv455, i16* %arrayidx452, align 2, !tbaa !7
  %213 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %214 = load i8, i8* %213, align 1, !tbaa !6
  %conv456 = zext i8 %214 to i32
  %shr457 = ashr i32 %conv456, 3
  %and458 = and i32 %shr457, 7
  %conv459 = trunc i32 %and458 to i16
  %215 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr460 = getelementptr inbounds i16, i16* %215, i64 46
  %add.ptr461 = getelementptr inbounds i16, i16* %add.ptr460, i64 -26
  %arrayidx462 = getelementptr inbounds i16, i16* %add.ptr461, i64 29
  store i16 %conv459, i16* %arrayidx462, align 2, !tbaa !7
  %216 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr463 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr463, i8** %c.addr, align 8, !tbaa !2
  %217 = load i8, i8* %216, align 1, !tbaa !6
  %conv464 = zext i8 %217 to i32
  %and465 = and i32 %conv464, 7
  %conv466 = trunc i32 %and465 to i16
  %218 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr467 = getelementptr inbounds i16, i16* %218, i64 46
  %add.ptr468 = getelementptr inbounds i16, i16* %add.ptr467, i64 -26
  %arrayidx469 = getelementptr inbounds i16, i16* %add.ptr468, i64 30
  store i16 %conv466, i16* %arrayidx469, align 2, !tbaa !7
  %219 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %220 = load i8, i8* %219, align 1, !tbaa !6
  %conv470 = zext i8 %220 to i32
  %shr471 = ashr i32 %conv470, 5
  %and472 = and i32 %shr471, 7
  %conv473 = trunc i32 %and472 to i16
  %221 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr474 = getelementptr inbounds i16, i16* %221, i64 46
  %add.ptr475 = getelementptr inbounds i16, i16* %add.ptr474, i64 -26
  %arrayidx476 = getelementptr inbounds i16, i16* %add.ptr475, i64 31
  store i16 %conv473, i16* %arrayidx476, align 2, !tbaa !7
  %222 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %223 = load i8, i8* %222, align 1, !tbaa !6
  %conv477 = zext i8 %223 to i32
  %shr478 = ashr i32 %conv477, 2
  %and479 = and i32 %shr478, 7
  %conv480 = trunc i32 %and479 to i16
  %224 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr481 = getelementptr inbounds i16, i16* %224, i64 46
  %add.ptr482 = getelementptr inbounds i16, i16* %add.ptr481, i64 -26
  %arrayidx483 = getelementptr inbounds i16, i16* %add.ptr482, i64 32
  store i16 %conv480, i16* %arrayidx483, align 2, !tbaa !7
  %225 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr484 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr484, i8** %c.addr, align 8, !tbaa !2
  %226 = load i8, i8* %225, align 1, !tbaa !6
  %conv485 = zext i8 %226 to i32
  %and486 = and i32 %conv485, 3
  %shl487 = shl i32 %and486, 1
  %conv488 = trunc i32 %shl487 to i16
  %227 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr489 = getelementptr inbounds i16, i16* %227, i64 46
  %add.ptr490 = getelementptr inbounds i16, i16* %add.ptr489, i64 -26
  %arrayidx491 = getelementptr inbounds i16, i16* %add.ptr490, i64 33
  store i16 %conv488, i16* %arrayidx491, align 2, !tbaa !7
  %228 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %229 = load i8, i8* %228, align 1, !tbaa !6
  %conv492 = zext i8 %229 to i32
  %shr493 = ashr i32 %conv492, 7
  %and494 = and i32 %shr493, 1
  %230 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr495 = getelementptr inbounds i16, i16* %230, i64 46
  %add.ptr496 = getelementptr inbounds i16, i16* %add.ptr495, i64 -26
  %arrayidx497 = getelementptr inbounds i16, i16* %add.ptr496, i64 33
  %231 = load i16, i16* %arrayidx497, align 2, !tbaa !7
  %conv498 = sext i16 %231 to i32
  %or499 = or i32 %conv498, %and494
  %conv500 = trunc i32 %or499 to i16
  store i16 %conv500, i16* %arrayidx497, align 2, !tbaa !7
  %232 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %233 = load i8, i8* %232, align 1, !tbaa !6
  %conv501 = zext i8 %233 to i32
  %shr502 = ashr i32 %conv501, 4
  %and503 = and i32 %shr502, 7
  %conv504 = trunc i32 %and503 to i16
  %234 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr505 = getelementptr inbounds i16, i16* %234, i64 46
  %add.ptr506 = getelementptr inbounds i16, i16* %add.ptr505, i64 -26
  %arrayidx507 = getelementptr inbounds i16, i16* %add.ptr506, i64 34
  store i16 %conv504, i16* %arrayidx507, align 2, !tbaa !7
  %235 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %236 = load i8, i8* %235, align 1, !tbaa !6
  %conv508 = zext i8 %236 to i32
  %shr509 = ashr i32 %conv508, 1
  %and510 = and i32 %shr509, 7
  %conv511 = trunc i32 %and510 to i16
  %237 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr512 = getelementptr inbounds i16, i16* %237, i64 46
  %add.ptr513 = getelementptr inbounds i16, i16* %add.ptr512, i64 -26
  %arrayidx514 = getelementptr inbounds i16, i16* %add.ptr513, i64 35
  store i16 %conv511, i16* %arrayidx514, align 2, !tbaa !7
  %238 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr515 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %incdec.ptr515, i8** %c.addr, align 8, !tbaa !2
  %239 = load i8, i8* %238, align 1, !tbaa !6
  %conv516 = zext i8 %239 to i32
  %and517 = and i32 %conv516, 1
  %shl518 = shl i32 %and517, 2
  %conv519 = trunc i32 %shl518 to i16
  %240 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr520 = getelementptr inbounds i16, i16* %240, i64 46
  %add.ptr521 = getelementptr inbounds i16, i16* %add.ptr520, i64 -26
  %arrayidx522 = getelementptr inbounds i16, i16* %add.ptr521, i64 36
  store i16 %conv519, i16* %arrayidx522, align 2, !tbaa !7
  %241 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %242 = load i8, i8* %241, align 1, !tbaa !6
  %conv523 = zext i8 %242 to i32
  %shr524 = ashr i32 %conv523, 6
  %and525 = and i32 %shr524, 3
  %243 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr526 = getelementptr inbounds i16, i16* %243, i64 46
  %add.ptr527 = getelementptr inbounds i16, i16* %add.ptr526, i64 -26
  %arrayidx528 = getelementptr inbounds i16, i16* %add.ptr527, i64 36
  %244 = load i16, i16* %arrayidx528, align 2, !tbaa !7
  %conv529 = sext i16 %244 to i32
  %or530 = or i32 %conv529, %and525
  %conv531 = trunc i32 %or530 to i16
  store i16 %conv531, i16* %arrayidx528, align 2, !tbaa !7
  %245 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %246 = load i8, i8* %245, align 1, !tbaa !6
  %conv532 = zext i8 %246 to i32
  %shr533 = ashr i32 %conv532, 3
  %and534 = and i32 %shr533, 7
  %conv535 = trunc i32 %and534 to i16
  %247 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr536 = getelementptr inbounds i16, i16* %247, i64 46
  %add.ptr537 = getelementptr inbounds i16, i16* %add.ptr536, i64 -26
  %arrayidx538 = getelementptr inbounds i16, i16* %add.ptr537, i64 37
  store i16 %conv535, i16* %arrayidx538, align 2, !tbaa !7
  %248 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr539 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr539, i8** %c.addr, align 8, !tbaa !2
  %249 = load i8, i8* %248, align 1, !tbaa !6
  %conv540 = zext i8 %249 to i32
  %and541 = and i32 %conv540, 7
  %conv542 = trunc i32 %and541 to i16
  %250 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr543 = getelementptr inbounds i16, i16* %250, i64 46
  %add.ptr544 = getelementptr inbounds i16, i16* %add.ptr543, i64 -26
  %arrayidx545 = getelementptr inbounds i16, i16* %add.ptr544, i64 38
  store i16 %conv542, i16* %arrayidx545, align 2, !tbaa !7
  %251 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %252 = load i8, i8* %251, align 1, !tbaa !6
  %conv546 = zext i8 %252 to i32
  %shr547 = ashr i32 %conv546, 1
  %and548 = and i32 %shr547, 127
  %conv549 = trunc i32 %and548 to i16
  %253 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr550 = getelementptr inbounds i16, i16* %253, i64 59
  %add.ptr551 = getelementptr inbounds i16, i16* %add.ptr550, i64 -3
  %arrayidx552 = getelementptr inbounds i16, i16* %add.ptr551, i64 3
  store i16 %conv549, i16* %arrayidx552, align 2, !tbaa !7
  %254 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr553 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr553, i8** %c.addr, align 8, !tbaa !2
  %255 = load i8, i8* %254, align 1, !tbaa !6
  %conv554 = zext i8 %255 to i32
  %and555 = and i32 %conv554, 1
  %shl556 = shl i32 %and555, 1
  %conv557 = trunc i32 %shl556 to i16
  %256 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr558 = getelementptr inbounds i16, i16* %256, i64 60
  %add.ptr559 = getelementptr inbounds i16, i16* %add.ptr558, i64 -3
  %arrayidx560 = getelementptr inbounds i16, i16* %add.ptr559, i64 3
  store i16 %conv557, i16* %arrayidx560, align 2, !tbaa !7
  %257 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %258 = load i8, i8* %257, align 1, !tbaa !6
  %conv561 = zext i8 %258 to i32
  %shr562 = ashr i32 %conv561, 7
  %and563 = and i32 %shr562, 1
  %259 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr564 = getelementptr inbounds i16, i16* %259, i64 60
  %add.ptr565 = getelementptr inbounds i16, i16* %add.ptr564, i64 -3
  %arrayidx566 = getelementptr inbounds i16, i16* %add.ptr565, i64 3
  %260 = load i16, i16* %arrayidx566, align 2, !tbaa !7
  %conv567 = sext i16 %260 to i32
  %or568 = or i32 %conv567, %and563
  %conv569 = trunc i32 %or568 to i16
  store i16 %conv569, i16* %arrayidx566, align 2, !tbaa !7
  %261 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %262 = load i8, i8* %261, align 1, !tbaa !6
  %conv570 = zext i8 %262 to i32
  %shr571 = ashr i32 %conv570, 5
  %and572 = and i32 %shr571, 3
  %conv573 = trunc i32 %and572 to i16
  %263 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr574 = getelementptr inbounds i16, i16* %263, i64 61
  %add.ptr575 = getelementptr inbounds i16, i16* %add.ptr574, i64 -3
  %arrayidx576 = getelementptr inbounds i16, i16* %add.ptr575, i64 3
  store i16 %conv573, i16* %arrayidx576, align 2, !tbaa !7
  %264 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr577 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr577, i8** %c.addr, align 8, !tbaa !2
  %265 = load i8, i8* %264, align 1, !tbaa !6
  %conv578 = zext i8 %265 to i32
  %and579 = and i32 %conv578, 31
  %shl580 = shl i32 %and579, 1
  %conv581 = trunc i32 %shl580 to i16
  %266 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr582 = getelementptr inbounds i16, i16* %266, i64 62
  %add.ptr583 = getelementptr inbounds i16, i16* %add.ptr582, i64 -3
  %arrayidx584 = getelementptr inbounds i16, i16* %add.ptr583, i64 3
  store i16 %conv581, i16* %arrayidx584, align 2, !tbaa !7
  %267 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %268 = load i8, i8* %267, align 1, !tbaa !6
  %conv585 = zext i8 %268 to i32
  %shr586 = ashr i32 %conv585, 7
  %and587 = and i32 %shr586, 1
  %269 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr588 = getelementptr inbounds i16, i16* %269, i64 62
  %add.ptr589 = getelementptr inbounds i16, i16* %add.ptr588, i64 -3
  %arrayidx590 = getelementptr inbounds i16, i16* %add.ptr589, i64 3
  %270 = load i16, i16* %arrayidx590, align 2, !tbaa !7
  %conv591 = sext i16 %270 to i32
  %or592 = or i32 %conv591, %and587
  %conv593 = trunc i32 %or592 to i16
  store i16 %conv593, i16* %arrayidx590, align 2, !tbaa !7
  %271 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %272 = load i8, i8* %271, align 1, !tbaa !6
  %conv594 = zext i8 %272 to i32
  %shr595 = ashr i32 %conv594, 4
  %and596 = and i32 %shr595, 7
  %conv597 = trunc i32 %and596 to i16
  %273 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr598 = getelementptr inbounds i16, i16* %273, i64 63
  %add.ptr599 = getelementptr inbounds i16, i16* %add.ptr598, i64 -39
  %arrayidx600 = getelementptr inbounds i16, i16* %add.ptr599, i64 39
  store i16 %conv597, i16* %arrayidx600, align 2, !tbaa !7
  %274 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %275 = load i8, i8* %274, align 1, !tbaa !6
  %conv601 = zext i8 %275 to i32
  %shr602 = ashr i32 %conv601, 1
  %and603 = and i32 %shr602, 7
  %conv604 = trunc i32 %and603 to i16
  %276 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr605 = getelementptr inbounds i16, i16* %276, i64 63
  %add.ptr606 = getelementptr inbounds i16, i16* %add.ptr605, i64 -39
  %arrayidx607 = getelementptr inbounds i16, i16* %add.ptr606, i64 40
  store i16 %conv604, i16* %arrayidx607, align 2, !tbaa !7
  %277 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr608 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %incdec.ptr608, i8** %c.addr, align 8, !tbaa !2
  %278 = load i8, i8* %277, align 1, !tbaa !6
  %conv609 = zext i8 %278 to i32
  %and610 = and i32 %conv609, 1
  %shl611 = shl i32 %and610, 2
  %conv612 = trunc i32 %shl611 to i16
  %279 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr613 = getelementptr inbounds i16, i16* %279, i64 63
  %add.ptr614 = getelementptr inbounds i16, i16* %add.ptr613, i64 -39
  %arrayidx615 = getelementptr inbounds i16, i16* %add.ptr614, i64 41
  store i16 %conv612, i16* %arrayidx615, align 2, !tbaa !7
  %280 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %281 = load i8, i8* %280, align 1, !tbaa !6
  %conv616 = zext i8 %281 to i32
  %shr617 = ashr i32 %conv616, 6
  %and618 = and i32 %shr617, 3
  %282 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr619 = getelementptr inbounds i16, i16* %282, i64 63
  %add.ptr620 = getelementptr inbounds i16, i16* %add.ptr619, i64 -39
  %arrayidx621 = getelementptr inbounds i16, i16* %add.ptr620, i64 41
  %283 = load i16, i16* %arrayidx621, align 2, !tbaa !7
  %conv622 = sext i16 %283 to i32
  %or623 = or i32 %conv622, %and618
  %conv624 = trunc i32 %or623 to i16
  store i16 %conv624, i16* %arrayidx621, align 2, !tbaa !7
  %284 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %285 = load i8, i8* %284, align 1, !tbaa !6
  %conv625 = zext i8 %285 to i32
  %shr626 = ashr i32 %conv625, 3
  %and627 = and i32 %shr626, 7
  %conv628 = trunc i32 %and627 to i16
  %286 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr629 = getelementptr inbounds i16, i16* %286, i64 63
  %add.ptr630 = getelementptr inbounds i16, i16* %add.ptr629, i64 -39
  %arrayidx631 = getelementptr inbounds i16, i16* %add.ptr630, i64 42
  store i16 %conv628, i16* %arrayidx631, align 2, !tbaa !7
  %287 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr632 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %incdec.ptr632, i8** %c.addr, align 8, !tbaa !2
  %288 = load i8, i8* %287, align 1, !tbaa !6
  %conv633 = zext i8 %288 to i32
  %and634 = and i32 %conv633, 7
  %conv635 = trunc i32 %and634 to i16
  %289 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr636 = getelementptr inbounds i16, i16* %289, i64 63
  %add.ptr637 = getelementptr inbounds i16, i16* %add.ptr636, i64 -39
  %arrayidx638 = getelementptr inbounds i16, i16* %add.ptr637, i64 43
  store i16 %conv635, i16* %arrayidx638, align 2, !tbaa !7
  %290 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %291 = load i8, i8* %290, align 1, !tbaa !6
  %conv639 = zext i8 %291 to i32
  %shr640 = ashr i32 %conv639, 5
  %and641 = and i32 %shr640, 7
  %conv642 = trunc i32 %and641 to i16
  %292 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr643 = getelementptr inbounds i16, i16* %292, i64 63
  %add.ptr644 = getelementptr inbounds i16, i16* %add.ptr643, i64 -39
  %arrayidx645 = getelementptr inbounds i16, i16* %add.ptr644, i64 44
  store i16 %conv642, i16* %arrayidx645, align 2, !tbaa !7
  %293 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %294 = load i8, i8* %293, align 1, !tbaa !6
  %conv646 = zext i8 %294 to i32
  %shr647 = ashr i32 %conv646, 2
  %and648 = and i32 %shr647, 7
  %conv649 = trunc i32 %and648 to i16
  %295 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr650 = getelementptr inbounds i16, i16* %295, i64 63
  %add.ptr651 = getelementptr inbounds i16, i16* %add.ptr650, i64 -39
  %arrayidx652 = getelementptr inbounds i16, i16* %add.ptr651, i64 45
  store i16 %conv649, i16* %arrayidx652, align 2, !tbaa !7
  %296 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr653 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %incdec.ptr653, i8** %c.addr, align 8, !tbaa !2
  %297 = load i8, i8* %296, align 1, !tbaa !6
  %conv654 = zext i8 %297 to i32
  %and655 = and i32 %conv654, 3
  %shl656 = shl i32 %and655, 1
  %conv657 = trunc i32 %shl656 to i16
  %298 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr658 = getelementptr inbounds i16, i16* %298, i64 63
  %add.ptr659 = getelementptr inbounds i16, i16* %add.ptr658, i64 -39
  %arrayidx660 = getelementptr inbounds i16, i16* %add.ptr659, i64 46
  store i16 %conv657, i16* %arrayidx660, align 2, !tbaa !7
  %299 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %300 = load i8, i8* %299, align 1, !tbaa !6
  %conv661 = zext i8 %300 to i32
  %shr662 = ashr i32 %conv661, 7
  %and663 = and i32 %shr662, 1
  %301 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr664 = getelementptr inbounds i16, i16* %301, i64 63
  %add.ptr665 = getelementptr inbounds i16, i16* %add.ptr664, i64 -39
  %arrayidx666 = getelementptr inbounds i16, i16* %add.ptr665, i64 46
  %302 = load i16, i16* %arrayidx666, align 2, !tbaa !7
  %conv667 = sext i16 %302 to i32
  %or668 = or i32 %conv667, %and663
  %conv669 = trunc i32 %or668 to i16
  store i16 %conv669, i16* %arrayidx666, align 2, !tbaa !7
  %303 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %304 = load i8, i8* %303, align 1, !tbaa !6
  %conv670 = zext i8 %304 to i32
  %shr671 = ashr i32 %conv670, 4
  %and672 = and i32 %shr671, 7
  %conv673 = trunc i32 %and672 to i16
  %305 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr674 = getelementptr inbounds i16, i16* %305, i64 63
  %add.ptr675 = getelementptr inbounds i16, i16* %add.ptr674, i64 -39
  %arrayidx676 = getelementptr inbounds i16, i16* %add.ptr675, i64 47
  store i16 %conv673, i16* %arrayidx676, align 2, !tbaa !7
  %306 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %307 = load i8, i8* %306, align 1, !tbaa !6
  %conv677 = zext i8 %307 to i32
  %shr678 = ashr i32 %conv677, 1
  %and679 = and i32 %shr678, 7
  %conv680 = trunc i32 %and679 to i16
  %308 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr681 = getelementptr inbounds i16, i16* %308, i64 63
  %add.ptr682 = getelementptr inbounds i16, i16* %add.ptr681, i64 -39
  %arrayidx683 = getelementptr inbounds i16, i16* %add.ptr682, i64 48
  store i16 %conv680, i16* %arrayidx683, align 2, !tbaa !7
  %309 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr684 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %incdec.ptr684, i8** %c.addr, align 8, !tbaa !2
  %310 = load i8, i8* %309, align 1, !tbaa !6
  %conv685 = zext i8 %310 to i32
  %and686 = and i32 %conv685, 1
  %shl687 = shl i32 %and686, 2
  %conv688 = trunc i32 %shl687 to i16
  %311 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr689 = getelementptr inbounds i16, i16* %311, i64 63
  %add.ptr690 = getelementptr inbounds i16, i16* %add.ptr689, i64 -39
  %arrayidx691 = getelementptr inbounds i16, i16* %add.ptr690, i64 49
  store i16 %conv688, i16* %arrayidx691, align 2, !tbaa !7
  %312 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %313 = load i8, i8* %312, align 1, !tbaa !6
  %conv692 = zext i8 %313 to i32
  %shr693 = ashr i32 %conv692, 6
  %and694 = and i32 %shr693, 3
  %314 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr695 = getelementptr inbounds i16, i16* %314, i64 63
  %add.ptr696 = getelementptr inbounds i16, i16* %add.ptr695, i64 -39
  %arrayidx697 = getelementptr inbounds i16, i16* %add.ptr696, i64 49
  %315 = load i16, i16* %arrayidx697, align 2, !tbaa !7
  %conv698 = sext i16 %315 to i32
  %or699 = or i32 %conv698, %and694
  %conv700 = trunc i32 %or699 to i16
  store i16 %conv700, i16* %arrayidx697, align 2, !tbaa !7
  %316 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %317 = load i8, i8* %316, align 1, !tbaa !6
  %conv701 = zext i8 %317 to i32
  %shr702 = ashr i32 %conv701, 3
  %and703 = and i32 %shr702, 7
  %conv704 = trunc i32 %and703 to i16
  %318 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr705 = getelementptr inbounds i16, i16* %318, i64 63
  %add.ptr706 = getelementptr inbounds i16, i16* %add.ptr705, i64 -39
  %arrayidx707 = getelementptr inbounds i16, i16* %add.ptr706, i64 50
  store i16 %conv704, i16* %arrayidx707, align 2, !tbaa !7
  %319 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %320 = load i8, i8* %319, align 1, !tbaa !6
  %conv708 = zext i8 %320 to i32
  %and709 = and i32 %conv708, 7
  %conv710 = trunc i32 %and709 to i16
  %321 = load i16*, i16** %target.addr, align 8, !tbaa !2
  %add.ptr711 = getelementptr inbounds i16, i16* %321, i64 63
  %add.ptr712 = getelementptr inbounds i16, i16* %add.ptr711, i64 -39
  %arrayidx713 = getelementptr inbounds i16, i16* %add.ptr712, i64 51
  store i16 %conv710, i16* %arrayidx713, align 2, !tbaa !7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %322 = load i32, i32* %retval
  ret i32 %322
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
