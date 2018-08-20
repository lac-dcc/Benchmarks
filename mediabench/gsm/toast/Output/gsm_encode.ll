; ModuleID = 'gsm_encode.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind ssp uwtable
define void @gsm_encode(%struct.gsm_state* %s, i16* %source, i8* %c) #0 {
entry:
  %s.addr = alloca %struct.gsm_state*, align 8
  %source.addr = alloca i16*, align 8
  %c.addr = alloca i8*, align 8
  %LARc = alloca [8 x i16], align 16
  %Nc = alloca [4 x i16], align 2
  %Mc = alloca [4 x i16], align 2
  %bc = alloca [4 x i16], align 2
  %xmaxc = alloca [4 x i16], align 2
  %xmc = alloca [52 x i16], align 16
  store %struct.gsm_state* %s, %struct.gsm_state** %s.addr, align 8, !tbaa !2
  store i16* %source, i16** %source.addr, align 8, !tbaa !2
  store i8* %c, i8** %c.addr, align 8, !tbaa !2
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
  %6 = load %struct.gsm_state*, %struct.gsm_state** %s.addr, align 8, !tbaa !2
  %7 = load i16*, i16** %source.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i32 0
  call void @Gsm_Coder(%struct.gsm_state* %6, i16* %7, i16* %arraydecay, i16* %arraydecay1, i16* %arraydecay2, i16* %arraydecay3, i16* %arraydecay4, i16* %arraydecay5)
  %arrayidx = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 0
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !6
  %conv = sext i16 %8 to i32
  %shr = ashr i32 %conv, 2
  %and = and i32 %shr, 15
  %or = or i32 208, %and
  %conv6 = trunc i32 %or to i8
  %9 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv6, i8* %9, align 1, !tbaa !8
  %arrayidx7 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 0
  %10 = load i16, i16* %arrayidx7, align 2, !tbaa !6
  %conv8 = sext i16 %10 to i32
  %and9 = and i32 %conv8, 3
  %shl = shl i32 %and9, 6
  %arrayidx10 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 1
  %11 = load i16, i16* %arrayidx10, align 2, !tbaa !6
  %conv11 = sext i16 %11 to i32
  %and12 = and i32 %conv11, 63
  %or13 = or i32 %shl, %and12
  %conv14 = trunc i32 %or13 to i8
  %12 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr15 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr15, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv14, i8* %12, align 1, !tbaa !8
  %arrayidx16 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 2
  %13 = load i16, i16* %arrayidx16, align 2, !tbaa !6
  %conv17 = sext i16 %13 to i32
  %and18 = and i32 %conv17, 31
  %shl19 = shl i32 %and18, 3
  %arrayidx20 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 3
  %14 = load i16, i16* %arrayidx20, align 2, !tbaa !6
  %conv21 = sext i16 %14 to i32
  %shr22 = ashr i32 %conv21, 2
  %and23 = and i32 %shr22, 7
  %or24 = or i32 %shl19, %and23
  %conv25 = trunc i32 %or24 to i8
  %15 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr26 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr26, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv25, i8* %15, align 1, !tbaa !8
  %arrayidx27 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 3
  %16 = load i16, i16* %arrayidx27, align 2, !tbaa !6
  %conv28 = sext i16 %16 to i32
  %and29 = and i32 %conv28, 3
  %shl30 = shl i32 %and29, 6
  %arrayidx31 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 4
  %17 = load i16, i16* %arrayidx31, align 2, !tbaa !6
  %conv32 = sext i16 %17 to i32
  %and33 = and i32 %conv32, 15
  %shl34 = shl i32 %and33, 2
  %or35 = or i32 %shl30, %shl34
  %arrayidx36 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 5
  %18 = load i16, i16* %arrayidx36, align 2, !tbaa !6
  %conv37 = sext i16 %18 to i32
  %shr38 = ashr i32 %conv37, 2
  %and39 = and i32 %shr38, 3
  %or40 = or i32 %or35, %and39
  %conv41 = trunc i32 %or40 to i8
  %19 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr42 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr42, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv41, i8* %19, align 1, !tbaa !8
  %arrayidx43 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 5
  %20 = load i16, i16* %arrayidx43, align 2, !tbaa !6
  %conv44 = sext i16 %20 to i32
  %and45 = and i32 %conv44, 3
  %shl46 = shl i32 %and45, 6
  %arrayidx47 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 6
  %21 = load i16, i16* %arrayidx47, align 2, !tbaa !6
  %conv48 = sext i16 %21 to i32
  %and49 = and i32 %conv48, 7
  %shl50 = shl i32 %and49, 3
  %or51 = or i32 %shl46, %shl50
  %arrayidx52 = getelementptr inbounds [8 x i16], [8 x i16]* %LARc, i32 0, i64 7
  %22 = load i16, i16* %arrayidx52, align 2, !tbaa !6
  %conv53 = sext i16 %22 to i32
  %and54 = and i32 %conv53, 7
  %or55 = or i32 %or51, %and54
  %conv56 = trunc i32 %or55 to i8
  %23 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr57 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr57, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv56, i8* %23, align 1, !tbaa !8
  %arrayidx58 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 0
  %24 = load i16, i16* %arrayidx58, align 2, !tbaa !6
  %conv59 = sext i16 %24 to i32
  %and60 = and i32 %conv59, 127
  %shl61 = shl i32 %and60, 1
  %arrayidx62 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 0
  %25 = load i16, i16* %arrayidx62, align 2, !tbaa !6
  %conv63 = sext i16 %25 to i32
  %shr64 = ashr i32 %conv63, 1
  %and65 = and i32 %shr64, 1
  %or66 = or i32 %shl61, %and65
  %conv67 = trunc i32 %or66 to i8
  %26 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr68 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr68, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv67, i8* %26, align 1, !tbaa !8
  %arrayidx69 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 0
  %27 = load i16, i16* %arrayidx69, align 2, !tbaa !6
  %conv70 = sext i16 %27 to i32
  %and71 = and i32 %conv70, 1
  %shl72 = shl i32 %and71, 7
  %arrayidx73 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 0
  %28 = load i16, i16* %arrayidx73, align 2, !tbaa !6
  %conv74 = sext i16 %28 to i32
  %and75 = and i32 %conv74, 3
  %shl76 = shl i32 %and75, 5
  %or77 = or i32 %shl72, %shl76
  %arrayidx78 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 0
  %29 = load i16, i16* %arrayidx78, align 2, !tbaa !6
  %conv79 = sext i16 %29 to i32
  %shr80 = ashr i32 %conv79, 1
  %and81 = and i32 %shr80, 31
  %or82 = or i32 %or77, %and81
  %conv83 = trunc i32 %or82 to i8
  %30 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr84 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr84, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv83, i8* %30, align 1, !tbaa !8
  %arrayidx85 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 0
  %31 = load i16, i16* %arrayidx85, align 2, !tbaa !6
  %conv86 = sext i16 %31 to i32
  %and87 = and i32 %conv86, 1
  %shl88 = shl i32 %and87, 7
  %arrayidx89 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 0
  %32 = load i16, i16* %arrayidx89, align 2, !tbaa !6
  %conv90 = sext i16 %32 to i32
  %and91 = and i32 %conv90, 7
  %shl92 = shl i32 %and91, 4
  %or93 = or i32 %shl88, %shl92
  %arrayidx94 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 1
  %33 = load i16, i16* %arrayidx94, align 2, !tbaa !6
  %conv95 = sext i16 %33 to i32
  %and96 = and i32 %conv95, 7
  %shl97 = shl i32 %and96, 1
  %or98 = or i32 %or93, %shl97
  %arrayidx99 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 2
  %34 = load i16, i16* %arrayidx99, align 2, !tbaa !6
  %conv100 = sext i16 %34 to i32
  %shr101 = ashr i32 %conv100, 2
  %and102 = and i32 %shr101, 1
  %or103 = or i32 %or98, %and102
  %conv104 = trunc i32 %or103 to i8
  %35 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr105 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr105, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv104, i8* %35, align 1, !tbaa !8
  %arrayidx106 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 2
  %36 = load i16, i16* %arrayidx106, align 2, !tbaa !6
  %conv107 = sext i16 %36 to i32
  %and108 = and i32 %conv107, 3
  %shl109 = shl i32 %and108, 6
  %arrayidx110 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 3
  %37 = load i16, i16* %arrayidx110, align 2, !tbaa !6
  %conv111 = sext i16 %37 to i32
  %and112 = and i32 %conv111, 7
  %shl113 = shl i32 %and112, 3
  %or114 = or i32 %shl109, %shl113
  %arrayidx115 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 4
  %38 = load i16, i16* %arrayidx115, align 2, !tbaa !6
  %conv116 = sext i16 %38 to i32
  %and117 = and i32 %conv116, 7
  %or118 = or i32 %or114, %and117
  %conv119 = trunc i32 %or118 to i8
  %39 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr120 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr120, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv119, i8* %39, align 1, !tbaa !8
  %arrayidx121 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 5
  %40 = load i16, i16* %arrayidx121, align 2, !tbaa !6
  %conv122 = sext i16 %40 to i32
  %and123 = and i32 %conv122, 7
  %shl124 = shl i32 %and123, 5
  %arrayidx125 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 6
  %41 = load i16, i16* %arrayidx125, align 2, !tbaa !6
  %conv126 = sext i16 %41 to i32
  %and127 = and i32 %conv126, 7
  %shl128 = shl i32 %and127, 2
  %or129 = or i32 %shl124, %shl128
  %arrayidx130 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 7
  %42 = load i16, i16* %arrayidx130, align 2, !tbaa !6
  %conv131 = sext i16 %42 to i32
  %shr132 = ashr i32 %conv131, 1
  %and133 = and i32 %shr132, 3
  %or134 = or i32 %or129, %and133
  %conv135 = trunc i32 %or134 to i8
  %43 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr136 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr136, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv135, i8* %43, align 1, !tbaa !8
  %arrayidx137 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 7
  %44 = load i16, i16* %arrayidx137, align 2, !tbaa !6
  %conv138 = sext i16 %44 to i32
  %and139 = and i32 %conv138, 1
  %shl140 = shl i32 %and139, 7
  %arrayidx141 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 8
  %45 = load i16, i16* %arrayidx141, align 2, !tbaa !6
  %conv142 = sext i16 %45 to i32
  %and143 = and i32 %conv142, 7
  %shl144 = shl i32 %and143, 4
  %or145 = or i32 %shl140, %shl144
  %arrayidx146 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 9
  %46 = load i16, i16* %arrayidx146, align 2, !tbaa !6
  %conv147 = sext i16 %46 to i32
  %and148 = and i32 %conv147, 7
  %shl149 = shl i32 %and148, 1
  %or150 = or i32 %or145, %shl149
  %arrayidx151 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 10
  %47 = load i16, i16* %arrayidx151, align 2, !tbaa !6
  %conv152 = sext i16 %47 to i32
  %shr153 = ashr i32 %conv152, 2
  %and154 = and i32 %shr153, 1
  %or155 = or i32 %or150, %and154
  %conv156 = trunc i32 %or155 to i8
  %48 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr157 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr157, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv156, i8* %48, align 1, !tbaa !8
  %arrayidx158 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 10
  %49 = load i16, i16* %arrayidx158, align 2, !tbaa !6
  %conv159 = sext i16 %49 to i32
  %and160 = and i32 %conv159, 3
  %shl161 = shl i32 %and160, 6
  %arrayidx162 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 11
  %50 = load i16, i16* %arrayidx162, align 2, !tbaa !6
  %conv163 = sext i16 %50 to i32
  %and164 = and i32 %conv163, 7
  %shl165 = shl i32 %and164, 3
  %or166 = or i32 %shl161, %shl165
  %arrayidx167 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 12
  %51 = load i16, i16* %arrayidx167, align 2, !tbaa !6
  %conv168 = sext i16 %51 to i32
  %and169 = and i32 %conv168, 7
  %or170 = or i32 %or166, %and169
  %conv171 = trunc i32 %or170 to i8
  %52 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr172 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr172, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv171, i8* %52, align 1, !tbaa !8
  %arrayidx173 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 1
  %53 = load i16, i16* %arrayidx173, align 2, !tbaa !6
  %conv174 = sext i16 %53 to i32
  %and175 = and i32 %conv174, 127
  %shl176 = shl i32 %and175, 1
  %arrayidx177 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 1
  %54 = load i16, i16* %arrayidx177, align 2, !tbaa !6
  %conv178 = sext i16 %54 to i32
  %shr179 = ashr i32 %conv178, 1
  %and180 = and i32 %shr179, 1
  %or181 = or i32 %shl176, %and180
  %conv182 = trunc i32 %or181 to i8
  %55 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr183 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr183, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv182, i8* %55, align 1, !tbaa !8
  %arrayidx184 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 1
  %56 = load i16, i16* %arrayidx184, align 2, !tbaa !6
  %conv185 = sext i16 %56 to i32
  %and186 = and i32 %conv185, 1
  %shl187 = shl i32 %and186, 7
  %arrayidx188 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 1
  %57 = load i16, i16* %arrayidx188, align 2, !tbaa !6
  %conv189 = sext i16 %57 to i32
  %and190 = and i32 %conv189, 3
  %shl191 = shl i32 %and190, 5
  %or192 = or i32 %shl187, %shl191
  %arrayidx193 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 1
  %58 = load i16, i16* %arrayidx193, align 2, !tbaa !6
  %conv194 = sext i16 %58 to i32
  %shr195 = ashr i32 %conv194, 1
  %and196 = and i32 %shr195, 31
  %or197 = or i32 %or192, %and196
  %conv198 = trunc i32 %or197 to i8
  %59 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr199 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr199, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv198, i8* %59, align 1, !tbaa !8
  %arrayidx200 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 1
  %60 = load i16, i16* %arrayidx200, align 2, !tbaa !6
  %conv201 = sext i16 %60 to i32
  %and202 = and i32 %conv201, 1
  %shl203 = shl i32 %and202, 7
  %arrayidx204 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 13
  %61 = load i16, i16* %arrayidx204, align 2, !tbaa !6
  %conv205 = sext i16 %61 to i32
  %and206 = and i32 %conv205, 7
  %shl207 = shl i32 %and206, 4
  %or208 = or i32 %shl203, %shl207
  %arrayidx209 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 14
  %62 = load i16, i16* %arrayidx209, align 2, !tbaa !6
  %conv210 = sext i16 %62 to i32
  %and211 = and i32 %conv210, 7
  %shl212 = shl i32 %and211, 1
  %or213 = or i32 %or208, %shl212
  %arrayidx214 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 15
  %63 = load i16, i16* %arrayidx214, align 2, !tbaa !6
  %conv215 = sext i16 %63 to i32
  %shr216 = ashr i32 %conv215, 2
  %and217 = and i32 %shr216, 1
  %or218 = or i32 %or213, %and217
  %conv219 = trunc i32 %or218 to i8
  %64 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr220 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr220, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv219, i8* %64, align 1, !tbaa !8
  %arrayidx221 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 15
  %65 = load i16, i16* %arrayidx221, align 2, !tbaa !6
  %conv222 = sext i16 %65 to i32
  %and223 = and i32 %conv222, 3
  %shl224 = shl i32 %and223, 6
  %arrayidx225 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 16
  %66 = load i16, i16* %arrayidx225, align 2, !tbaa !6
  %conv226 = sext i16 %66 to i32
  %and227 = and i32 %conv226, 7
  %shl228 = shl i32 %and227, 3
  %or229 = or i32 %shl224, %shl228
  %arrayidx230 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 17
  %67 = load i16, i16* %arrayidx230, align 2, !tbaa !6
  %conv231 = sext i16 %67 to i32
  %and232 = and i32 %conv231, 7
  %or233 = or i32 %or229, %and232
  %conv234 = trunc i32 %or233 to i8
  %68 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr235 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr235, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv234, i8* %68, align 1, !tbaa !8
  %arrayidx236 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 18
  %69 = load i16, i16* %arrayidx236, align 2, !tbaa !6
  %conv237 = sext i16 %69 to i32
  %and238 = and i32 %conv237, 7
  %shl239 = shl i32 %and238, 5
  %arrayidx240 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 19
  %70 = load i16, i16* %arrayidx240, align 2, !tbaa !6
  %conv241 = sext i16 %70 to i32
  %and242 = and i32 %conv241, 7
  %shl243 = shl i32 %and242, 2
  %or244 = or i32 %shl239, %shl243
  %arrayidx245 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 20
  %71 = load i16, i16* %arrayidx245, align 2, !tbaa !6
  %conv246 = sext i16 %71 to i32
  %shr247 = ashr i32 %conv246, 1
  %and248 = and i32 %shr247, 3
  %or249 = or i32 %or244, %and248
  %conv250 = trunc i32 %or249 to i8
  %72 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr251 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr251, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv250, i8* %72, align 1, !tbaa !8
  %arrayidx252 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 20
  %73 = load i16, i16* %arrayidx252, align 2, !tbaa !6
  %conv253 = sext i16 %73 to i32
  %and254 = and i32 %conv253, 1
  %shl255 = shl i32 %and254, 7
  %arrayidx256 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 21
  %74 = load i16, i16* %arrayidx256, align 2, !tbaa !6
  %conv257 = sext i16 %74 to i32
  %and258 = and i32 %conv257, 7
  %shl259 = shl i32 %and258, 4
  %or260 = or i32 %shl255, %shl259
  %arrayidx261 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 22
  %75 = load i16, i16* %arrayidx261, align 2, !tbaa !6
  %conv262 = sext i16 %75 to i32
  %and263 = and i32 %conv262, 7
  %shl264 = shl i32 %and263, 1
  %or265 = or i32 %or260, %shl264
  %arrayidx266 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 23
  %76 = load i16, i16* %arrayidx266, align 2, !tbaa !6
  %conv267 = sext i16 %76 to i32
  %shr268 = ashr i32 %conv267, 2
  %and269 = and i32 %shr268, 1
  %or270 = or i32 %or265, %and269
  %conv271 = trunc i32 %or270 to i8
  %77 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr272 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr272, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv271, i8* %77, align 1, !tbaa !8
  %arrayidx273 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 23
  %78 = load i16, i16* %arrayidx273, align 2, !tbaa !6
  %conv274 = sext i16 %78 to i32
  %and275 = and i32 %conv274, 3
  %shl276 = shl i32 %and275, 6
  %arrayidx277 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 24
  %79 = load i16, i16* %arrayidx277, align 2, !tbaa !6
  %conv278 = sext i16 %79 to i32
  %and279 = and i32 %conv278, 7
  %shl280 = shl i32 %and279, 3
  %or281 = or i32 %shl276, %shl280
  %arrayidx282 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 25
  %80 = load i16, i16* %arrayidx282, align 2, !tbaa !6
  %conv283 = sext i16 %80 to i32
  %and284 = and i32 %conv283, 7
  %or285 = or i32 %or281, %and284
  %conv286 = trunc i32 %or285 to i8
  %81 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr287 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr287, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv286, i8* %81, align 1, !tbaa !8
  %arrayidx288 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 2
  %82 = load i16, i16* %arrayidx288, align 2, !tbaa !6
  %conv289 = sext i16 %82 to i32
  %and290 = and i32 %conv289, 127
  %shl291 = shl i32 %and290, 1
  %arrayidx292 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 2
  %83 = load i16, i16* %arrayidx292, align 2, !tbaa !6
  %conv293 = sext i16 %83 to i32
  %shr294 = ashr i32 %conv293, 1
  %and295 = and i32 %shr294, 1
  %or296 = or i32 %shl291, %and295
  %conv297 = trunc i32 %or296 to i8
  %84 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr298 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr298, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv297, i8* %84, align 1, !tbaa !8
  %arrayidx299 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 2
  %85 = load i16, i16* %arrayidx299, align 2, !tbaa !6
  %conv300 = sext i16 %85 to i32
  %and301 = and i32 %conv300, 1
  %shl302 = shl i32 %and301, 7
  %arrayidx303 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 2
  %86 = load i16, i16* %arrayidx303, align 2, !tbaa !6
  %conv304 = sext i16 %86 to i32
  %and305 = and i32 %conv304, 3
  %shl306 = shl i32 %and305, 5
  %or307 = or i32 %shl302, %shl306
  %arrayidx308 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 2
  %87 = load i16, i16* %arrayidx308, align 2, !tbaa !6
  %conv309 = sext i16 %87 to i32
  %shr310 = ashr i32 %conv309, 1
  %and311 = and i32 %shr310, 31
  %or312 = or i32 %or307, %and311
  %conv313 = trunc i32 %or312 to i8
  %88 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr314 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr314, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv313, i8* %88, align 1, !tbaa !8
  %arrayidx315 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 2
  %89 = load i16, i16* %arrayidx315, align 2, !tbaa !6
  %conv316 = sext i16 %89 to i32
  %and317 = and i32 %conv316, 1
  %shl318 = shl i32 %and317, 7
  %arrayidx319 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 26
  %90 = load i16, i16* %arrayidx319, align 2, !tbaa !6
  %conv320 = sext i16 %90 to i32
  %and321 = and i32 %conv320, 7
  %shl322 = shl i32 %and321, 4
  %or323 = or i32 %shl318, %shl322
  %arrayidx324 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 27
  %91 = load i16, i16* %arrayidx324, align 2, !tbaa !6
  %conv325 = sext i16 %91 to i32
  %and326 = and i32 %conv325, 7
  %shl327 = shl i32 %and326, 1
  %or328 = or i32 %or323, %shl327
  %arrayidx329 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 28
  %92 = load i16, i16* %arrayidx329, align 2, !tbaa !6
  %conv330 = sext i16 %92 to i32
  %shr331 = ashr i32 %conv330, 2
  %and332 = and i32 %shr331, 1
  %or333 = or i32 %or328, %and332
  %conv334 = trunc i32 %or333 to i8
  %93 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr335 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr335, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv334, i8* %93, align 1, !tbaa !8
  %arrayidx336 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 28
  %94 = load i16, i16* %arrayidx336, align 2, !tbaa !6
  %conv337 = sext i16 %94 to i32
  %and338 = and i32 %conv337, 3
  %shl339 = shl i32 %and338, 6
  %arrayidx340 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 29
  %95 = load i16, i16* %arrayidx340, align 2, !tbaa !6
  %conv341 = sext i16 %95 to i32
  %and342 = and i32 %conv341, 7
  %shl343 = shl i32 %and342, 3
  %or344 = or i32 %shl339, %shl343
  %arrayidx345 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 30
  %96 = load i16, i16* %arrayidx345, align 2, !tbaa !6
  %conv346 = sext i16 %96 to i32
  %and347 = and i32 %conv346, 7
  %or348 = or i32 %or344, %and347
  %conv349 = trunc i32 %or348 to i8
  %97 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr350 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr350, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv349, i8* %97, align 1, !tbaa !8
  %arrayidx351 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 31
  %98 = load i16, i16* %arrayidx351, align 2, !tbaa !6
  %conv352 = sext i16 %98 to i32
  %and353 = and i32 %conv352, 7
  %shl354 = shl i32 %and353, 5
  %arrayidx355 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 32
  %99 = load i16, i16* %arrayidx355, align 2, !tbaa !6
  %conv356 = sext i16 %99 to i32
  %and357 = and i32 %conv356, 7
  %shl358 = shl i32 %and357, 2
  %or359 = or i32 %shl354, %shl358
  %arrayidx360 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 33
  %100 = load i16, i16* %arrayidx360, align 2, !tbaa !6
  %conv361 = sext i16 %100 to i32
  %shr362 = ashr i32 %conv361, 1
  %and363 = and i32 %shr362, 3
  %or364 = or i32 %or359, %and363
  %conv365 = trunc i32 %or364 to i8
  %101 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr366 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr366, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv365, i8* %101, align 1, !tbaa !8
  %arrayidx367 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 33
  %102 = load i16, i16* %arrayidx367, align 2, !tbaa !6
  %conv368 = sext i16 %102 to i32
  %and369 = and i32 %conv368, 1
  %shl370 = shl i32 %and369, 7
  %arrayidx371 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 34
  %103 = load i16, i16* %arrayidx371, align 2, !tbaa !6
  %conv372 = sext i16 %103 to i32
  %and373 = and i32 %conv372, 7
  %shl374 = shl i32 %and373, 4
  %or375 = or i32 %shl370, %shl374
  %arrayidx376 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 35
  %104 = load i16, i16* %arrayidx376, align 2, !tbaa !6
  %conv377 = sext i16 %104 to i32
  %and378 = and i32 %conv377, 7
  %shl379 = shl i32 %and378, 1
  %or380 = or i32 %or375, %shl379
  %arrayidx381 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 36
  %105 = load i16, i16* %arrayidx381, align 2, !tbaa !6
  %conv382 = sext i16 %105 to i32
  %shr383 = ashr i32 %conv382, 2
  %and384 = and i32 %shr383, 1
  %or385 = or i32 %or380, %and384
  %conv386 = trunc i32 %or385 to i8
  %106 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr387 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr387, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv386, i8* %106, align 1, !tbaa !8
  %arrayidx388 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 36
  %107 = load i16, i16* %arrayidx388, align 2, !tbaa !6
  %conv389 = sext i16 %107 to i32
  %and390 = and i32 %conv389, 3
  %shl391 = shl i32 %and390, 6
  %arrayidx392 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 37
  %108 = load i16, i16* %arrayidx392, align 2, !tbaa !6
  %conv393 = sext i16 %108 to i32
  %and394 = and i32 %conv393, 7
  %shl395 = shl i32 %and394, 3
  %or396 = or i32 %shl391, %shl395
  %arrayidx397 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 38
  %109 = load i16, i16* %arrayidx397, align 2, !tbaa !6
  %conv398 = sext i16 %109 to i32
  %and399 = and i32 %conv398, 7
  %or400 = or i32 %or396, %and399
  %conv401 = trunc i32 %or400 to i8
  %110 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr402 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr402, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv401, i8* %110, align 1, !tbaa !8
  %arrayidx403 = getelementptr inbounds [4 x i16], [4 x i16]* %Nc, i32 0, i64 3
  %111 = load i16, i16* %arrayidx403, align 2, !tbaa !6
  %conv404 = sext i16 %111 to i32
  %and405 = and i32 %conv404, 127
  %shl406 = shl i32 %and405, 1
  %arrayidx407 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 3
  %112 = load i16, i16* %arrayidx407, align 2, !tbaa !6
  %conv408 = sext i16 %112 to i32
  %shr409 = ashr i32 %conv408, 1
  %and410 = and i32 %shr409, 1
  %or411 = or i32 %shl406, %and410
  %conv412 = trunc i32 %or411 to i8
  %113 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr413 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr413, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv412, i8* %113, align 1, !tbaa !8
  %arrayidx414 = getelementptr inbounds [4 x i16], [4 x i16]* %bc, i32 0, i64 3
  %114 = load i16, i16* %arrayidx414, align 2, !tbaa !6
  %conv415 = sext i16 %114 to i32
  %and416 = and i32 %conv415, 1
  %shl417 = shl i32 %and416, 7
  %arrayidx418 = getelementptr inbounds [4 x i16], [4 x i16]* %Mc, i32 0, i64 3
  %115 = load i16, i16* %arrayidx418, align 2, !tbaa !6
  %conv419 = sext i16 %115 to i32
  %and420 = and i32 %conv419, 3
  %shl421 = shl i32 %and420, 5
  %or422 = or i32 %shl417, %shl421
  %arrayidx423 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 3
  %116 = load i16, i16* %arrayidx423, align 2, !tbaa !6
  %conv424 = sext i16 %116 to i32
  %shr425 = ashr i32 %conv424, 1
  %and426 = and i32 %shr425, 31
  %or427 = or i32 %or422, %and426
  %conv428 = trunc i32 %or427 to i8
  %117 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr429 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr429, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv428, i8* %117, align 1, !tbaa !8
  %arrayidx430 = getelementptr inbounds [4 x i16], [4 x i16]* %xmaxc, i32 0, i64 3
  %118 = load i16, i16* %arrayidx430, align 2, !tbaa !6
  %conv431 = sext i16 %118 to i32
  %and432 = and i32 %conv431, 1
  %shl433 = shl i32 %and432, 7
  %arrayidx434 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 39
  %119 = load i16, i16* %arrayidx434, align 2, !tbaa !6
  %conv435 = sext i16 %119 to i32
  %and436 = and i32 %conv435, 7
  %shl437 = shl i32 %and436, 4
  %or438 = or i32 %shl433, %shl437
  %arrayidx439 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 40
  %120 = load i16, i16* %arrayidx439, align 2, !tbaa !6
  %conv440 = sext i16 %120 to i32
  %and441 = and i32 %conv440, 7
  %shl442 = shl i32 %and441, 1
  %or443 = or i32 %or438, %shl442
  %arrayidx444 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 41
  %121 = load i16, i16* %arrayidx444, align 2, !tbaa !6
  %conv445 = sext i16 %121 to i32
  %shr446 = ashr i32 %conv445, 2
  %and447 = and i32 %shr446, 1
  %or448 = or i32 %or443, %and447
  %conv449 = trunc i32 %or448 to i8
  %122 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr450 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr450, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv449, i8* %122, align 1, !tbaa !8
  %arrayidx451 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 41
  %123 = load i16, i16* %arrayidx451, align 2, !tbaa !6
  %conv452 = sext i16 %123 to i32
  %and453 = and i32 %conv452, 3
  %shl454 = shl i32 %and453, 6
  %arrayidx455 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 42
  %124 = load i16, i16* %arrayidx455, align 2, !tbaa !6
  %conv456 = sext i16 %124 to i32
  %and457 = and i32 %conv456, 7
  %shl458 = shl i32 %and457, 3
  %or459 = or i32 %shl454, %shl458
  %arrayidx460 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 43
  %125 = load i16, i16* %arrayidx460, align 2, !tbaa !6
  %conv461 = sext i16 %125 to i32
  %and462 = and i32 %conv461, 7
  %or463 = or i32 %or459, %and462
  %conv464 = trunc i32 %or463 to i8
  %126 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr465 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %incdec.ptr465, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv464, i8* %126, align 1, !tbaa !8
  %arrayidx466 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 44
  %127 = load i16, i16* %arrayidx466, align 2, !tbaa !6
  %conv467 = sext i16 %127 to i32
  %and468 = and i32 %conv467, 7
  %shl469 = shl i32 %and468, 5
  %arrayidx470 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 45
  %128 = load i16, i16* %arrayidx470, align 2, !tbaa !6
  %conv471 = sext i16 %128 to i32
  %and472 = and i32 %conv471, 7
  %shl473 = shl i32 %and472, 2
  %or474 = or i32 %shl469, %shl473
  %arrayidx475 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 46
  %129 = load i16, i16* %arrayidx475, align 2, !tbaa !6
  %conv476 = sext i16 %129 to i32
  %shr477 = ashr i32 %conv476, 1
  %and478 = and i32 %shr477, 3
  %or479 = or i32 %or474, %and478
  %conv480 = trunc i32 %or479 to i8
  %130 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr481 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr481, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv480, i8* %130, align 1, !tbaa !8
  %arrayidx482 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 46
  %131 = load i16, i16* %arrayidx482, align 2, !tbaa !6
  %conv483 = sext i16 %131 to i32
  %and484 = and i32 %conv483, 1
  %shl485 = shl i32 %and484, 7
  %arrayidx486 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 47
  %132 = load i16, i16* %arrayidx486, align 2, !tbaa !6
  %conv487 = sext i16 %132 to i32
  %and488 = and i32 %conv487, 7
  %shl489 = shl i32 %and488, 4
  %or490 = or i32 %shl485, %shl489
  %arrayidx491 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 48
  %133 = load i16, i16* %arrayidx491, align 2, !tbaa !6
  %conv492 = sext i16 %133 to i32
  %and493 = and i32 %conv492, 7
  %shl494 = shl i32 %and493, 1
  %or495 = or i32 %or490, %shl494
  %arrayidx496 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 49
  %134 = load i16, i16* %arrayidx496, align 2, !tbaa !6
  %conv497 = sext i16 %134 to i32
  %shr498 = ashr i32 %conv497, 2
  %and499 = and i32 %shr498, 1
  %or500 = or i32 %or495, %and499
  %conv501 = trunc i32 %or500 to i8
  %135 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr502 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr502, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv501, i8* %135, align 1, !tbaa !8
  %arrayidx503 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 49
  %136 = load i16, i16* %arrayidx503, align 2, !tbaa !6
  %conv504 = sext i16 %136 to i32
  %and505 = and i32 %conv504, 3
  %shl506 = shl i32 %and505, 6
  %arrayidx507 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 50
  %137 = load i16, i16* %arrayidx507, align 2, !tbaa !6
  %conv508 = sext i16 %137 to i32
  %and509 = and i32 %conv508, 7
  %shl510 = shl i32 %and509, 3
  %or511 = or i32 %shl506, %shl510
  %arrayidx512 = getelementptr inbounds [52 x i16], [52 x i16]* %xmc, i32 0, i64 51
  %138 = load i16, i16* %arrayidx512, align 2, !tbaa !6
  %conv513 = sext i16 %138 to i32
  %and514 = and i32 %conv513, 7
  %or515 = or i32 %or511, %and514
  %conv516 = trunc i32 %or515 to i8
  %139 = load i8*, i8** %c.addr, align 8, !tbaa !2
  %incdec.ptr517 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr517, i8** %c.addr, align 8, !tbaa !2
  store i8 %conv516, i8* %139, align 1, !tbaa !8
  %140 = bitcast [52 x i16]* %xmc to i8*
  call void @llvm.lifetime.end(i64 104, i8* %140) #3
  %141 = bitcast [4 x i16]* %xmaxc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #3
  %142 = bitcast [4 x i16]* %bc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #3
  %143 = bitcast [4 x i16]* %Mc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #3
  %144 = bitcast [4 x i16]* %Nc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #3
  %145 = bitcast [8 x i16]* %LARc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %145) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @Gsm_Coder(%struct.gsm_state*, i16*, i16*, i16*, i16*, i16*, i16*, i16*) #2

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
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !4, i64 0}
!8 = !{!4, !4, i64 0}
