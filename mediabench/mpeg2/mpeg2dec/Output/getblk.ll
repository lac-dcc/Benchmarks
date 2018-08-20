; ModuleID = 'getblk.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct.DCTtab = type { i8, i8, i8 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@ld = external global %struct.layer_data*, align 8
@Fault_Flag = external global i32, align 4
@picture_coding_type = external global i32, align 4
@DCTtabnext = external global [0 x %struct.DCTtab], align 1
@DCTtab0 = external global [0 x %struct.DCTtab], align 1
@DCTtab1 = external global [0 x %struct.DCTtab], align 1
@DCTtab2 = external global [0 x %struct.DCTtab], align 1
@DCTtab3 = external global [0 x %struct.DCTtab], align 1
@DCTtab4 = external global [0 x %struct.DCTtab], align 1
@DCTtab5 = external global [0 x %struct.DCTtab], align 1
@DCTtab6 = external global [0 x %struct.DCTtab], align 1
@Quiet_Flag = external global i32, align 4
@.str = private unnamed_addr constant [52 x i8] c"invalid Huffman code in Decode_MPEG1_Intra_Block()\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (intra)\0A\00", align 1
@scan = external global [2 x [64 x i8]], align 16
@DCTtabfirst = external global [0 x %struct.DCTtab], align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"invalid Huffman code in Decode_MPEG1_Non_Intra_Block()\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"DCT coeff index (i) out of bounds (inter)\0A\00", align 1
@base = external global %struct.layer_data, align 8
@enhan = external global %struct.layer_data, align 8
@chroma_format = external global i32, align 4
@intra_dc_precision = external global i32, align 4
@intra_vlc_format = external global i32, align 4
@DCTtab0a = external global [0 x %struct.DCTtab], align 1
@DCTtab1a = external global [0 x %struct.DCTtab], align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"invalid Huffman code in Decode_MPEG2_Intra_Block()\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid escape in Decode_MPEG2_Intra_Block()\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (intra2)\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"invalid Huffman code in Decode_MPEG2_Non_Intra_Block()\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"DCT coeff index (i) out of bounds (inter2)\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @Decode_MPEG1_Intra_Block(i32 %comp, i32* %dc_dct_pred) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %dc_dct_pred.addr = alloca i32*, align 8
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sign = alloca i32, align 4
  %code = alloca i32, align 4
  %tab = alloca %struct.DCTtab*, align 8
  %bp = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !2
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %bp, align 8, !tbaa !6
  %9 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %9, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @Get_Luma_DC_dct_diff()
  %10 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx1, align 4, !tbaa !2
  %add = add nsw i32 %11, %call
  store i32 %add, i32* %arrayidx1, align 4, !tbaa !2
  %shl = shl i32 %add, 3
  %conv = trunc i32 %shl to i16
  %12 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx2 = getelementptr inbounds i16, i16* %12, i64 0
  store i16 %conv, i16* %arrayidx2, align 2, !tbaa !8
  br label %if.end.19

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %cmp3 = icmp eq i32 %13, 4
  br i1 %cmp3, label %if.then.5, label %if.else.12

if.then.5:                                        ; preds = %if.else
  %call6 = call i32 @Get_Chroma_DC_dct_diff()
  %14 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 1
  %15 = load i32, i32* %arrayidx7, align 4, !tbaa !2
  %add8 = add nsw i32 %15, %call6
  store i32 %add8, i32* %arrayidx7, align 4, !tbaa !2
  %shl9 = shl i32 %add8, 3
  %conv10 = trunc i32 %shl9 to i16
  %16 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx11 = getelementptr inbounds i16, i16* %16, i64 0
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !8
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %call13 = call i32 @Get_Chroma_DC_dct_diff()
  %17 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %arrayidx14 = getelementptr inbounds i32, i32* %17, i64 2
  %18 = load i32, i32* %arrayidx14, align 4, !tbaa !2
  %add15 = add nsw i32 %18, %call13
  store i32 %add15, i32* %arrayidx14, align 4, !tbaa !2
  %shl16 = shl i32 %add15, 3
  %conv17 = trunc i32 %shl16 to i16
  %19 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx18 = getelementptr inbounds i16, i16* %19, i64 0
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %20 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.19
  %21 = load i32, i32* @picture_coding_type, align 4, !tbaa !2
  %cmp22 = icmp eq i32 %21, 4
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.21
  store i32 1, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %call26 = call i32 @Show_Bits(i32 16)
  store i32 %call26, i32* %code, align 4, !tbaa !2
  %22 = load i32, i32* %code, align 4, !tbaa !2
  %cmp27 = icmp uge i32 %22, 16384
  br i1 %cmp27, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %for.cond
  %23 = load i32, i32* %code, align 4, !tbaa !2
  %shr = lshr i32 %23, 12
  %sub = sub i32 %shr, 4
  %idxprom30 = zext i32 %sub to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i32 0, i64 %idxprom30
  store %struct.DCTtab* %arrayidx31, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.99

if.else.32:                                       ; preds = %for.cond
  %24 = load i32, i32* %code, align 4, !tbaa !2
  %cmp33 = icmp uge i32 %24, 1024
  br i1 %cmp33, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.else.32
  %25 = load i32, i32* %code, align 4, !tbaa !2
  %shr36 = lshr i32 %25, 8
  %sub37 = sub i32 %shr36, 4
  %idxprom38 = zext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i32 0, i64 %idxprom38
  store %struct.DCTtab* %arrayidx39, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.98

if.else.40:                                       ; preds = %if.else.32
  %26 = load i32, i32* %code, align 4, !tbaa !2
  %cmp41 = icmp uge i32 %26, 512
  br i1 %cmp41, label %if.then.43, label %if.else.48

if.then.43:                                       ; preds = %if.else.40
  %27 = load i32, i32* %code, align 4, !tbaa !2
  %shr44 = lshr i32 %27, 6
  %sub45 = sub i32 %shr44, 8
  %idxprom46 = zext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i32 0, i64 %idxprom46
  store %struct.DCTtab* %arrayidx47, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.97

if.else.48:                                       ; preds = %if.else.40
  %28 = load i32, i32* %code, align 4, !tbaa !2
  %cmp49 = icmp uge i32 %28, 256
  br i1 %cmp49, label %if.then.51, label %if.else.56

if.then.51:                                       ; preds = %if.else.48
  %29 = load i32, i32* %code, align 4, !tbaa !2
  %shr52 = lshr i32 %29, 4
  %sub53 = sub i32 %shr52, 16
  %idxprom54 = zext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i32 0, i64 %idxprom54
  store %struct.DCTtab* %arrayidx55, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.96

if.else.56:                                       ; preds = %if.else.48
  %30 = load i32, i32* %code, align 4, !tbaa !2
  %cmp57 = icmp uge i32 %30, 128
  br i1 %cmp57, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %if.else.56
  %31 = load i32, i32* %code, align 4, !tbaa !2
  %shr60 = lshr i32 %31, 3
  %sub61 = sub i32 %shr60, 16
  %idxprom62 = zext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i32 0, i64 %idxprom62
  store %struct.DCTtab* %arrayidx63, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.95

if.else.64:                                       ; preds = %if.else.56
  %32 = load i32, i32* %code, align 4, !tbaa !2
  %cmp65 = icmp uge i32 %32, 64
  br i1 %cmp65, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.else.64
  %33 = load i32, i32* %code, align 4, !tbaa !2
  %shr68 = lshr i32 %33, 2
  %sub69 = sub i32 %shr68, 16
  %idxprom70 = zext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i32 0, i64 %idxprom70
  store %struct.DCTtab* %arrayidx71, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.94

if.else.72:                                       ; preds = %if.else.64
  %34 = load i32, i32* %code, align 4, !tbaa !2
  %cmp73 = icmp uge i32 %34, 32
  br i1 %cmp73, label %if.then.75, label %if.else.80

if.then.75:                                       ; preds = %if.else.72
  %35 = load i32, i32* %code, align 4, !tbaa !2
  %shr76 = lshr i32 %35, 1
  %sub77 = sub i32 %shr76, 16
  %idxprom78 = zext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i32 0, i64 %idxprom78
  store %struct.DCTtab* %arrayidx79, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.93

if.else.80:                                       ; preds = %if.else.72
  %36 = load i32, i32* %code, align 4, !tbaa !2
  %cmp81 = icmp uge i32 %36, 16
  br i1 %cmp81, label %if.then.83, label %if.else.87

if.then.83:                                       ; preds = %if.else.80
  %37 = load i32, i32* %code, align 4, !tbaa !2
  %sub84 = sub i32 %37, 16
  %idxprom85 = zext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i32 0, i64 %idxprom85
  store %struct.DCTtab* %arrayidx86, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.92

if.else.87:                                       ; preds = %if.else.80
  %38 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool88 = icmp ne i32 %38, 0
  br i1 %tobool88, label %if.end.91, label %if.then.89

if.then.89:                                       ; preds = %if.else.87
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i32 0, i32 0))
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.else.87
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.92:                                        ; preds = %if.then.83
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.75
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.67
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.59
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.51
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.43
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.35
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.29
  %39 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %len = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %39, i32 0, i32 2
  %40 = load i8, i8* %len, align 1, !tbaa !10
  %conv100 = sext i8 %40 to i32
  call void @Flush_Buffer(i32 %conv100)
  %41 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %41, i32 0, i32 0
  %42 = load i8, i8* %run, align 1, !tbaa !12
  %conv101 = sext i8 %42 to i32
  %cmp102 = icmp eq i32 %conv101, 64
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.99
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %if.end.99
  %43 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run106 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %43, i32 0, i32 0
  %44 = load i8, i8* %run106, align 1, !tbaa !12
  %conv107 = sext i8 %44 to i32
  %cmp108 = icmp eq i32 %conv107, 65
  br i1 %cmp108, label %if.then.110, label %if.else.137

if.then.110:                                      ; preds = %if.end.105
  %call111 = call i32 @Get_Bits(i32 6)
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %add112 = add i32 %45, %call111
  store i32 %add112, i32* %i, align 4, !tbaa !2
  %call113 = call i32 @Get_Bits(i32 8)
  store i32 %call113, i32* %val, align 4, !tbaa !2
  %46 = load i32, i32* %val, align 4, !tbaa !2
  %cmp114 = icmp eq i32 %46, 0
  br i1 %cmp114, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %if.then.110
  %call117 = call i32 @Get_Bits(i32 8)
  store i32 %call117, i32* %val, align 4, !tbaa !2
  br label %if.end.131

if.else.118:                                      ; preds = %if.then.110
  %47 = load i32, i32* %val, align 4, !tbaa !2
  %cmp119 = icmp eq i32 %47, 128
  br i1 %cmp119, label %if.then.121, label %if.else.124

if.then.121:                                      ; preds = %if.else.118
  %call122 = call i32 @Get_Bits(i32 8)
  %sub123 = sub i32 %call122, 256
  store i32 %sub123, i32* %val, align 4, !tbaa !2
  br label %if.end.130

if.else.124:                                      ; preds = %if.else.118
  %48 = load i32, i32* %val, align 4, !tbaa !2
  %cmp125 = icmp sgt i32 %48, 128
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %if.else.124
  %49 = load i32, i32* %val, align 4, !tbaa !2
  %sub128 = sub nsw i32 %49, 256
  store i32 %sub128, i32* %val, align 4, !tbaa !2
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %if.else.124
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.121
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.116
  %50 = load i32, i32* %val, align 4, !tbaa !2
  %cmp132 = icmp slt i32 %50, 0
  %conv133 = zext i1 %cmp132 to i32
  store i32 %conv133, i32* %sign, align 4, !tbaa !2
  br i1 %cmp132, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %if.end.131
  %51 = load i32, i32* %val, align 4, !tbaa !2
  %sub135 = sub nsw i32 0, %51
  store i32 %sub135, i32* %val, align 4, !tbaa !2
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.end.131
  br label %if.end.143

if.else.137:                                      ; preds = %if.end.105
  %52 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run138 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %52, i32 0, i32 0
  %53 = load i8, i8* %run138, align 1, !tbaa !12
  %conv139 = sext i8 %53 to i32
  %54 = load i32, i32* %i, align 4, !tbaa !2
  %add140 = add nsw i32 %54, %conv139
  store i32 %add140, i32* %i, align 4, !tbaa !2
  %55 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %level = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %55, i32 0, i32 1
  %56 = load i8, i8* %level, align 1, !tbaa !13
  %conv141 = sext i8 %56 to i32
  store i32 %conv141, i32* %val, align 4, !tbaa !2
  %call142 = call i32 @Get_Bits(i32 1)
  store i32 %call142, i32* %sign, align 4, !tbaa !2
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.137, %if.end.136
  %57 = load i32, i32* %i, align 4, !tbaa !2
  %cmp144 = icmp sge i32 %57, 64
  br i1 %cmp144, label %if.then.146, label %if.end.151

if.then.146:                                      ; preds = %if.end.143
  %58 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool147 = icmp ne i32 %58, 0
  br i1 %tobool147, label %if.end.150, label %if.then.148

if.then.148:                                      ; preds = %if.then.146
  %59 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  %call149 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.then.146
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.151:                                       ; preds = %if.end.143
  %60 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom152 = sext i32 %60 to i64
  %arrayidx153 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom152
  %61 = load i8, i8* %arrayidx153, align 1, !tbaa !14
  %conv154 = zext i8 %61 to i32
  store i32 %conv154, i32* %j, align 4, !tbaa !2
  %62 = load i32, i32* %val, align 4, !tbaa !2
  %63 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %63, i32 0, i32 22
  %64 = load i32, i32* %quantizer_scale, align 4, !tbaa !15
  %mul = mul nsw i32 %62, %64
  %65 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom155 = sext i32 %65 to i64
  %66 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %66, i32 0, i32 8
  %arrayidx156 = getelementptr inbounds [64 x i32], [64 x i32]* %intra_quantizer_matrix, i32 0, i64 %idxprom155
  %67 = load i32, i32* %arrayidx156, align 4, !tbaa !2
  %mul157 = mul nsw i32 %mul, %67
  %shr158 = ashr i32 %mul157, 3
  store i32 %shr158, i32* %val, align 4, !tbaa !2
  %68 = load i32, i32* %val, align 4, !tbaa !2
  %cmp159 = icmp ne i32 %68, 0
  br i1 %cmp159, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.151
  %69 = load i32, i32* %val, align 4, !tbaa !2
  %sub162 = sub nsw i32 %69, 1
  %or = or i32 %sub162, 1
  store i32 %or, i32* %val, align 4, !tbaa !2
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.161, %if.end.151
  %70 = load i32, i32* %sign, align 4, !tbaa !2
  %tobool164 = icmp ne i32 %70, 0
  br i1 %tobool164, label %if.else.171, label %if.then.165

if.then.165:                                      ; preds = %if.end.163
  %71 = load i32, i32* %val, align 4, !tbaa !2
  %cmp166 = icmp sgt i32 %71, 2047
  br i1 %cmp166, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.165
  br label %cond.end

cond.false:                                       ; preds = %if.then.165
  %72 = load i32, i32* %val, align 4, !tbaa !2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2047, %cond.true ], [ %72, %cond.false ]
  %conv168 = trunc i32 %cond to i16
  %73 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom169 = sext i32 %73 to i64
  %74 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx170 = getelementptr inbounds i16, i16* %74, i64 %idxprom169
  store i16 %conv168, i16* %arrayidx170, align 2, !tbaa !8
  br label %if.end.182

if.else.171:                                      ; preds = %if.end.163
  %75 = load i32, i32* %val, align 4, !tbaa !2
  %cmp172 = icmp sgt i32 %75, 2048
  br i1 %cmp172, label %cond.true.174, label %cond.false.175

cond.true.174:                                    ; preds = %if.else.171
  br label %cond.end.177

cond.false.175:                                   ; preds = %if.else.171
  %76 = load i32, i32* %val, align 4, !tbaa !2
  %sub176 = sub nsw i32 0, %76
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.175, %cond.true.174
  %cond178 = phi i32 [ -2048, %cond.true.174 ], [ %sub176, %cond.false.175 ]
  %conv179 = trunc i32 %cond178 to i16
  %77 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom180 = sext i32 %77 to i64
  %78 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx181 = getelementptr inbounds i16, i16* %78, i64 %idxprom180
  store i16 %conv179, i16* %arrayidx181, align 2, !tbaa !8
  br label %if.end.182

if.end.182:                                       ; preds = %cond.end.177, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.182
  %79 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

cleanup:                                          ; preds = %if.end.150, %if.then.104, %if.end.91, %if.then.24, %if.then.20
  %80 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #3
  %82 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #3
  %83 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #3
  %84 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @Get_Luma_DC_dct_diff() #2

declare i32 @Get_Chroma_DC_dct_diff() #2

declare i32 @Show_Bits(i32) #2

declare i32 @printf(i8*, ...) #2

declare void @Flush_Buffer(i32) #2

declare i32 @Get_Bits(i32) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @Decode_MPEG1_Non_Intra_Block(i32 %comp) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sign = alloca i32, align 4
  %code = alloca i32, align 4
  %tab = alloca %struct.DCTtab*, align 8
  %bp = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !2
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %8, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %bp, align 8, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call i32 @Show_Bits(i32 16)
  store i32 %call, i32* %code, align 4, !tbaa !2
  %9 = load i32, i32* %code, align 4, !tbaa !2
  %cmp = icmp uge i32 %9, 16384
  br i1 %cmp, label %if.then, label %if.else.9

if.then:                                          ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %10, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !2
  %shr = lshr i32 %11, 12
  %sub = sub i32 %shr, 4
  %idxprom3 = zext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabfirst, i32 0, i64 %idxprom3
  store %struct.DCTtab* %arrayidx4, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !2
  %shr5 = lshr i32 %12, 12
  %sub6 = sub i32 %shr5, 4
  %idxprom7 = zext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i32 0, i64 %idxprom7
  store %struct.DCTtab* %arrayidx8, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.68

if.else.9:                                        ; preds = %for.cond
  %13 = load i32, i32* %code, align 4, !tbaa !2
  %cmp10 = icmp uge i32 %13, 1024
  br i1 %cmp10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.else.9
  %14 = load i32, i32* %code, align 4, !tbaa !2
  %shr12 = lshr i32 %14, 8
  %sub13 = sub i32 %shr12, 4
  %idxprom14 = zext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i32 0, i64 %idxprom14
  store %struct.DCTtab* %arrayidx15, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.67

if.else.16:                                       ; preds = %if.else.9
  %15 = load i32, i32* %code, align 4, !tbaa !2
  %cmp17 = icmp uge i32 %15, 512
  br i1 %cmp17, label %if.then.18, label %if.else.23

if.then.18:                                       ; preds = %if.else.16
  %16 = load i32, i32* %code, align 4, !tbaa !2
  %shr19 = lshr i32 %16, 6
  %sub20 = sub i32 %shr19, 8
  %idxprom21 = zext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i32 0, i64 %idxprom21
  store %struct.DCTtab* %arrayidx22, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.66

if.else.23:                                       ; preds = %if.else.16
  %17 = load i32, i32* %code, align 4, !tbaa !2
  %cmp24 = icmp uge i32 %17, 256
  br i1 %cmp24, label %if.then.25, label %if.else.30

if.then.25:                                       ; preds = %if.else.23
  %18 = load i32, i32* %code, align 4, !tbaa !2
  %shr26 = lshr i32 %18, 4
  %sub27 = sub i32 %shr26, 16
  %idxprom28 = zext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i32 0, i64 %idxprom28
  store %struct.DCTtab* %arrayidx29, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.65

if.else.30:                                       ; preds = %if.else.23
  %19 = load i32, i32* %code, align 4, !tbaa !2
  %cmp31 = icmp uge i32 %19, 128
  br i1 %cmp31, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.else.30
  %20 = load i32, i32* %code, align 4, !tbaa !2
  %shr33 = lshr i32 %20, 3
  %sub34 = sub i32 %shr33, 16
  %idxprom35 = zext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i32 0, i64 %idxprom35
  store %struct.DCTtab* %arrayidx36, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.64

if.else.37:                                       ; preds = %if.else.30
  %21 = load i32, i32* %code, align 4, !tbaa !2
  %cmp38 = icmp uge i32 %21, 64
  br i1 %cmp38, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %if.else.37
  %22 = load i32, i32* %code, align 4, !tbaa !2
  %shr40 = lshr i32 %22, 2
  %sub41 = sub i32 %shr40, 16
  %idxprom42 = zext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i32 0, i64 %idxprom42
  store %struct.DCTtab* %arrayidx43, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.63

if.else.44:                                       ; preds = %if.else.37
  %23 = load i32, i32* %code, align 4, !tbaa !2
  %cmp45 = icmp uge i32 %23, 32
  br i1 %cmp45, label %if.then.46, label %if.else.51

if.then.46:                                       ; preds = %if.else.44
  %24 = load i32, i32* %code, align 4, !tbaa !2
  %shr47 = lshr i32 %24, 1
  %sub48 = sub i32 %shr47, 16
  %idxprom49 = zext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i32 0, i64 %idxprom49
  store %struct.DCTtab* %arrayidx50, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.62

if.else.51:                                       ; preds = %if.else.44
  %25 = load i32, i32* %code, align 4, !tbaa !2
  %cmp52 = icmp uge i32 %25, 16
  br i1 %cmp52, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %if.else.51
  %26 = load i32, i32* %code, align 4, !tbaa !2
  %sub54 = sub i32 %26, 16
  %idxprom55 = zext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i32 0, i64 %idxprom55
  store %struct.DCTtab* %arrayidx56, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.61

if.else.57:                                       ; preds = %if.else.51
  %27 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end.60, label %if.then.58

if.then.58:                                       ; preds = %if.else.57
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.else.57
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.46
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.39
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.32
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.25
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.18
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.11
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end
  %28 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %len = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %28, i32 0, i32 2
  %29 = load i8, i8* %len, align 1, !tbaa !10
  %conv = sext i8 %29 to i32
  call void @Flush_Buffer(i32 %conv)
  %30 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %30, i32 0, i32 0
  %31 = load i8, i8* %run, align 1, !tbaa !12
  %conv69 = sext i8 %31 to i32
  %cmp70 = icmp eq i32 %conv69, 64
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.68
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.73:                                        ; preds = %if.end.68
  %32 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run74 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %32, i32 0, i32 0
  %33 = load i8, i8* %run74, align 1, !tbaa !12
  %conv75 = sext i8 %33 to i32
  %cmp76 = icmp eq i32 %conv75, 65
  br i1 %cmp76, label %if.then.78, label %if.else.104

if.then.78:                                       ; preds = %if.end.73
  %call79 = call i32 @Get_Bits(i32 6)
  %34 = load i32, i32* %i, align 4, !tbaa !2
  %add = add i32 %34, %call79
  store i32 %add, i32* %i, align 4, !tbaa !2
  %call80 = call i32 @Get_Bits(i32 8)
  store i32 %call80, i32* %val, align 4, !tbaa !2
  %35 = load i32, i32* %val, align 4, !tbaa !2
  %cmp81 = icmp eq i32 %35, 0
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.then.78
  %call84 = call i32 @Get_Bits(i32 8)
  store i32 %call84, i32* %val, align 4, !tbaa !2
  br label %if.end.98

if.else.85:                                       ; preds = %if.then.78
  %36 = load i32, i32* %val, align 4, !tbaa !2
  %cmp86 = icmp eq i32 %36, 128
  br i1 %cmp86, label %if.then.88, label %if.else.91

if.then.88:                                       ; preds = %if.else.85
  %call89 = call i32 @Get_Bits(i32 8)
  %sub90 = sub i32 %call89, 256
  store i32 %sub90, i32* %val, align 4, !tbaa !2
  br label %if.end.97

if.else.91:                                       ; preds = %if.else.85
  %37 = load i32, i32* %val, align 4, !tbaa !2
  %cmp92 = icmp sgt i32 %37, 128
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %if.else.91
  %38 = load i32, i32* %val, align 4, !tbaa !2
  %sub95 = sub nsw i32 %38, 256
  store i32 %sub95, i32* %val, align 4, !tbaa !2
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %if.else.91
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.88
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.83
  %39 = load i32, i32* %val, align 4, !tbaa !2
  %cmp99 = icmp slt i32 %39, 0
  %conv100 = zext i1 %cmp99 to i32
  store i32 %conv100, i32* %sign, align 4, !tbaa !2
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.98
  %40 = load i32, i32* %val, align 4, !tbaa !2
  %sub102 = sub nsw i32 0, %40
  store i32 %sub102, i32* %val, align 4, !tbaa !2
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.98
  br label %if.end.110

if.else.104:                                      ; preds = %if.end.73
  %41 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run105 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %41, i32 0, i32 0
  %42 = load i8, i8* %run105, align 1, !tbaa !12
  %conv106 = sext i8 %42 to i32
  %43 = load i32, i32* %i, align 4, !tbaa !2
  %add107 = add nsw i32 %43, %conv106
  store i32 %add107, i32* %i, align 4, !tbaa !2
  %44 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %level = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %44, i32 0, i32 1
  %45 = load i8, i8* %level, align 1, !tbaa !13
  %conv108 = sext i8 %45 to i32
  store i32 %conv108, i32* %val, align 4, !tbaa !2
  %call109 = call i32 @Get_Bits(i32 1)
  store i32 %call109, i32* %sign, align 4, !tbaa !2
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.104, %if.end.103
  %46 = load i32, i32* %i, align 4, !tbaa !2
  %cmp111 = icmp sge i32 %46, 64
  br i1 %cmp111, label %if.then.113, label %if.end.118

if.then.113:                                      ; preds = %if.end.110
  %47 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool114 = icmp ne i32 %47, 0
  br i1 %tobool114, label %if.end.117, label %if.then.115

if.then.115:                                      ; preds = %if.then.113
  %48 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  %call116 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.then.113
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.118:                                       ; preds = %if.end.110
  %49 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom119 = sext i32 %49 to i64
  %arrayidx120 = getelementptr inbounds [64 x i8], [64 x i8]* getelementptr inbounds ([2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 0), i32 0, i64 %idxprom119
  %50 = load i8, i8* %arrayidx120, align 1, !tbaa !14
  %conv121 = zext i8 %50 to i32
  store i32 %conv121, i32* %j, align 4, !tbaa !2
  %51 = load i32, i32* %val, align 4, !tbaa !2
  %shl = shl i32 %51, 1
  %add122 = add nsw i32 %shl, 1
  %52 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %52, i32 0, i32 22
  %53 = load i32, i32* %quantizer_scale, align 4, !tbaa !15
  %mul = mul nsw i32 %add122, %53
  %54 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom123 = sext i32 %54 to i64
  %55 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %55, i32 0, i32 9
  %arrayidx124 = getelementptr inbounds [64 x i32], [64 x i32]* %non_intra_quantizer_matrix, i32 0, i64 %idxprom123
  %56 = load i32, i32* %arrayidx124, align 4, !tbaa !2
  %mul125 = mul nsw i32 %mul, %56
  %shr126 = ashr i32 %mul125, 4
  store i32 %shr126, i32* %val, align 4, !tbaa !2
  %57 = load i32, i32* %val, align 4, !tbaa !2
  %cmp127 = icmp ne i32 %57, 0
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.118
  %58 = load i32, i32* %val, align 4, !tbaa !2
  %sub130 = sub nsw i32 %58, 1
  %or = or i32 %sub130, 1
  store i32 %or, i32* %val, align 4, !tbaa !2
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.118
  %59 = load i32, i32* %sign, align 4, !tbaa !2
  %tobool132 = icmp ne i32 %59, 0
  br i1 %tobool132, label %if.else.139, label %if.then.133

if.then.133:                                      ; preds = %if.end.131
  %60 = load i32, i32* %val, align 4, !tbaa !2
  %cmp134 = icmp sgt i32 %60, 2047
  br i1 %cmp134, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.133
  br label %cond.end

cond.false:                                       ; preds = %if.then.133
  %61 = load i32, i32* %val, align 4, !tbaa !2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2047, %cond.true ], [ %61, %cond.false ]
  %conv136 = trunc i32 %cond to i16
  %62 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom137 = sext i32 %62 to i64
  %63 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx138 = getelementptr inbounds i16, i16* %63, i64 %idxprom137
  store i16 %conv136, i16* %arrayidx138, align 2, !tbaa !8
  br label %if.end.150

if.else.139:                                      ; preds = %if.end.131
  %64 = load i32, i32* %val, align 4, !tbaa !2
  %cmp140 = icmp sgt i32 %64, 2048
  br i1 %cmp140, label %cond.true.142, label %cond.false.143

cond.true.142:                                    ; preds = %if.else.139
  br label %cond.end.145

cond.false.143:                                   ; preds = %if.else.139
  %65 = load i32, i32* %val, align 4, !tbaa !2
  %sub144 = sub nsw i32 0, %65
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.143, %cond.true.142
  %cond146 = phi i32 [ -2048, %cond.true.142 ], [ %sub144, %cond.false.143 ]
  %conv147 = trunc i32 %cond146 to i16
  %66 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom148 = sext i32 %66 to i64
  %67 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx149 = getelementptr inbounds i16, i16* %67, i64 %idxprom148
  store i16 %conv147, i16* %arrayidx149, align 2, !tbaa !8
  br label %if.end.150

if.end.150:                                       ; preds = %cond.end.145, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.150
  %68 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

cleanup:                                          ; preds = %if.end.117, %if.then.72, %if.end.60
  %69 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #3
  %70 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #3
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #3
  %72 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #3
  %73 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #3
  %74 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #3
  %75 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Decode_MPEG2_Intra_Block(i32 %comp, i32* %dc_dct_pred) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %dc_dct_pred.addr = alloca i32*, align 8
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sign = alloca i32, align 4
  %nc = alloca i32, align 4
  %cc = alloca i32, align 4
  %run = alloca i32, align 4
  %code = alloca i32, align 4
  %tab = alloca %struct.DCTtab*, align 8
  %bp = alloca i16*, align 8
  %qmat = alloca i32*, align 8
  %ld1 = alloca %struct.layer_data*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !2
  store i32* %dc_dct_pred, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast i32** %qmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = bitcast %struct.layer_data** %ld1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #3
  %12 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %scalable_mode = getelementptr inbounds %struct.layer_data, %struct.layer_data* %12, i32 0, i32 17
  %13 = load i32, i32* %scalable_mode, align 4, !tbaa !17
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.layer_data* [ @base, %cond.true ], [ %14, %cond.false ]
  store %struct.layer_data* %cond, %struct.layer_data** %ld1, align 8, !tbaa !6
  %15 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %16, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %bp, align 8, !tbaa !6
  %17 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !17
  %cmp1 = icmp eq i32 %17, 1
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %cond.end
  %18 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !18
  %cmp2 = icmp slt i32 %18, 64
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %cond.end
  %19 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %19, 4
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %if.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %if.end.4
  %20 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %and = and i32 %20, 1
  %add = add nsw i32 %and, 1
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.7, %cond.true.6
  %cond9 = phi i32 [ 0, %cond.true.6 ], [ %add, %cond.false.7 ]
  store i32 %cond9, i32* %cc, align 4, !tbaa !2
  %21 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %cmp10 = icmp slt i32 %21, 4
  br i1 %cmp10, label %cond.true.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.8
  %22 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp11 = icmp eq i32 %22, 1
  br i1 %cmp11, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %lor.lhs.false, %cond.end.8
  %23 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %23, i32 0, i32 8
  %arraydecay13 = getelementptr inbounds [64 x i32], [64 x i32]* %intra_quantizer_matrix, i32 0, i32 0
  br label %cond.end.16

cond.false.14:                                    ; preds = %lor.lhs.false
  %24 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %chroma_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %24, i32 0, i32 10
  %arraydecay15 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_intra_quantizer_matrix, i32 0, i32 0
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.12
  %cond17 = phi i32* [ %arraydecay13, %cond.true.12 ], [ %arraydecay15, %cond.false.14 ]
  store i32* %cond17, i32** %qmat, align 8, !tbaa !6
  %25 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp18 = icmp eq i32 %25, 0
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %cond.end.16
  %call = call i32 @Get_Luma_DC_dct_diff()
  %26 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32, i32* %arrayidx20, align 4, !tbaa !2
  %add21 = add nsw i32 %27, %call
  store i32 %add21, i32* %arrayidx20, align 4, !tbaa !2
  store i32 %add21, i32* %val, align 4, !tbaa !2
  br label %if.end.33

if.else.22:                                       ; preds = %cond.end.16
  %28 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp23 = icmp eq i32 %28, 1
  br i1 %cmp23, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.else.22
  %call25 = call i32 @Get_Chroma_DC_dct_diff()
  %29 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %arrayidx26 = getelementptr inbounds i32, i32* %29, i64 1
  %30 = load i32, i32* %arrayidx26, align 4, !tbaa !2
  %add27 = add nsw i32 %30, %call25
  store i32 %add27, i32* %arrayidx26, align 4, !tbaa !2
  store i32 %add27, i32* %val, align 4, !tbaa !2
  br label %if.end.32

if.else.28:                                       ; preds = %if.else.22
  %call29 = call i32 @Get_Chroma_DC_dct_diff()
  %31 = load i32*, i32** %dc_dct_pred.addr, align 8, !tbaa !6
  %arrayidx30 = getelementptr inbounds i32, i32* %31, i64 2
  %32 = load i32, i32* %arrayidx30, align 4, !tbaa !2
  %add31 = add nsw i32 %32, %call29
  store i32 %add31, i32* %arrayidx30, align 4, !tbaa !2
  store i32 %add31, i32* %val, align 4, !tbaa !2
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.19
  %33 = load i32, i32* @Fault_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.33
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.33
  %34 = load i32, i32* %val, align 4, !tbaa !2
  %35 = load i32, i32* @intra_dc_precision, align 4, !tbaa !2
  %sub = sub nsw i32 3, %35
  %shl = shl i32 %34, %sub
  %conv = trunc i32 %shl to i16
  %36 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx36 = getelementptr inbounds i16, i16* %36, i64 0
  store i16 %conv, i16* %arrayidx36, align 2, !tbaa !8
  store i32 0, i32* %nc, align 4, !tbaa !2
  store i32 1, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %call37 = call i32 @Show_Bits(i32 16)
  store i32 %call37, i32* %code, align 4, !tbaa !2
  %37 = load i32, i32* %code, align 4, !tbaa !2
  %cmp38 = icmp uge i32 %37, 16384
  br i1 %cmp38, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %for.cond
  %38 = load i32, i32* @intra_vlc_format, align 4, !tbaa !2
  %tobool40 = icmp ne i32 %38, 0
  br i1 %tobool40, label %if.else.45, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %code, align 4, !tbaa !2
  %shr = lshr i32 %39, 12
  %sub42 = sub i32 %shr, 4
  %idxprom43 = zext i32 %sub42 to i64
  %arrayidx44 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i32 0, i64 %idxprom43
  store %struct.DCTtab* %arrayidx44, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.128

if.else.45:                                       ; preds = %land.lhs.true, %for.cond
  %40 = load i32, i32* %code, align 4, !tbaa !2
  %cmp46 = icmp uge i32 %40, 1024
  br i1 %cmp46, label %if.then.48, label %if.else.61

if.then.48:                                       ; preds = %if.else.45
  %41 = load i32, i32* @intra_vlc_format, align 4, !tbaa !2
  %tobool49 = icmp ne i32 %41, 0
  br i1 %tobool49, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %if.then.48
  %42 = load i32, i32* %code, align 4, !tbaa !2
  %shr51 = lshr i32 %42, 8
  %sub52 = sub i32 %shr51, 4
  %idxprom53 = zext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0a, i32 0, i64 %idxprom53
  store %struct.DCTtab* %arrayidx54, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.60

if.else.55:                                       ; preds = %if.then.48
  %43 = load i32, i32* %code, align 4, !tbaa !2
  %shr56 = lshr i32 %43, 8
  %sub57 = sub i32 %shr56, 4
  %idxprom58 = zext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i32 0, i64 %idxprom58
  store %struct.DCTtab* %arrayidx59, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.55, %if.then.50
  br label %if.end.127

if.else.61:                                       ; preds = %if.else.45
  %44 = load i32, i32* %code, align 4, !tbaa !2
  %cmp62 = icmp uge i32 %44, 512
  br i1 %cmp62, label %if.then.64, label %if.else.77

if.then.64:                                       ; preds = %if.else.61
  %45 = load i32, i32* @intra_vlc_format, align 4, !tbaa !2
  %tobool65 = icmp ne i32 %45, 0
  br i1 %tobool65, label %if.then.66, label %if.else.71

if.then.66:                                       ; preds = %if.then.64
  %46 = load i32, i32* %code, align 4, !tbaa !2
  %shr67 = lshr i32 %46, 6
  %sub68 = sub i32 %shr67, 8
  %idxprom69 = zext i32 %sub68 to i64
  %arrayidx70 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1a, i32 0, i64 %idxprom69
  store %struct.DCTtab* %arrayidx70, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.76

if.else.71:                                       ; preds = %if.then.64
  %47 = load i32, i32* %code, align 4, !tbaa !2
  %shr72 = lshr i32 %47, 6
  %sub73 = sub i32 %shr72, 8
  %idxprom74 = zext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i32 0, i64 %idxprom74
  store %struct.DCTtab* %arrayidx75, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.71, %if.then.66
  br label %if.end.126

if.else.77:                                       ; preds = %if.else.61
  %48 = load i32, i32* %code, align 4, !tbaa !2
  %cmp78 = icmp uge i32 %48, 256
  br i1 %cmp78, label %if.then.80, label %if.else.85

if.then.80:                                       ; preds = %if.else.77
  %49 = load i32, i32* %code, align 4, !tbaa !2
  %shr81 = lshr i32 %49, 4
  %sub82 = sub i32 %shr81, 16
  %idxprom83 = zext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i32 0, i64 %idxprom83
  store %struct.DCTtab* %arrayidx84, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.125

if.else.85:                                       ; preds = %if.else.77
  %50 = load i32, i32* %code, align 4, !tbaa !2
  %cmp86 = icmp uge i32 %50, 128
  br i1 %cmp86, label %if.then.88, label %if.else.93

if.then.88:                                       ; preds = %if.else.85
  %51 = load i32, i32* %code, align 4, !tbaa !2
  %shr89 = lshr i32 %51, 3
  %sub90 = sub i32 %shr89, 16
  %idxprom91 = zext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i32 0, i64 %idxprom91
  store %struct.DCTtab* %arrayidx92, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.124

if.else.93:                                       ; preds = %if.else.85
  %52 = load i32, i32* %code, align 4, !tbaa !2
  %cmp94 = icmp uge i32 %52, 64
  br i1 %cmp94, label %if.then.96, label %if.else.101

if.then.96:                                       ; preds = %if.else.93
  %53 = load i32, i32* %code, align 4, !tbaa !2
  %shr97 = lshr i32 %53, 2
  %sub98 = sub i32 %shr97, 16
  %idxprom99 = zext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i32 0, i64 %idxprom99
  store %struct.DCTtab* %arrayidx100, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.123

if.else.101:                                      ; preds = %if.else.93
  %54 = load i32, i32* %code, align 4, !tbaa !2
  %cmp102 = icmp uge i32 %54, 32
  br i1 %cmp102, label %if.then.104, label %if.else.109

if.then.104:                                      ; preds = %if.else.101
  %55 = load i32, i32* %code, align 4, !tbaa !2
  %shr105 = lshr i32 %55, 1
  %sub106 = sub i32 %shr105, 16
  %idxprom107 = zext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i32 0, i64 %idxprom107
  store %struct.DCTtab* %arrayidx108, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.122

if.else.109:                                      ; preds = %if.else.101
  %56 = load i32, i32* %code, align 4, !tbaa !2
  %cmp110 = icmp uge i32 %56, 16
  br i1 %cmp110, label %if.then.112, label %if.else.116

if.then.112:                                      ; preds = %if.else.109
  %57 = load i32, i32* %code, align 4, !tbaa !2
  %sub113 = sub i32 %57, 16
  %idxprom114 = zext i32 %sub113 to i64
  %arrayidx115 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i32 0, i64 %idxprom114
  store %struct.DCTtab* %arrayidx115, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.121

if.else.116:                                      ; preds = %if.else.109
  %58 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool117 = icmp ne i32 %58, 0
  br i1 %tobool117, label %if.end.120, label %if.then.118

if.then.118:                                      ; preds = %if.else.116
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.else.116
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.121:                                       ; preds = %if.then.112
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.104
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.96
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.88
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then.80
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.76
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.end.60
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.41
  %59 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %len = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %59, i32 0, i32 2
  %60 = load i8, i8* %len, align 1, !tbaa !10
  %conv129 = sext i8 %60 to i32
  call void @Flush_Buffer(i32 %conv129)
  %61 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run130 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %61, i32 0, i32 0
  %62 = load i8, i8* %run130, align 1, !tbaa !12
  %conv131 = sext i8 %62 to i32
  %cmp132 = icmp eq i32 %conv131, 64
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.128
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.135:                                       ; preds = %if.end.128
  %63 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run136 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %63, i32 0, i32 0
  %64 = load i8, i8* %run136, align 1, !tbaa !12
  %conv137 = sext i8 %64 to i32
  %cmp138 = icmp eq i32 %conv137, 65
  br i1 %cmp138, label %if.then.140, label %if.else.158

if.then.140:                                      ; preds = %if.end.135
  %call141 = call i32 @Get_Bits(i32 6)
  store i32 %call141, i32* %run, align 4, !tbaa !2
  %65 = load i32, i32* %i, align 4, !tbaa !2
  %add142 = add nsw i32 %65, %call141
  store i32 %add142, i32* %i, align 4, !tbaa !2
  %call143 = call i32 @Get_Bits(i32 12)
  store i32 %call143, i32* %val, align 4, !tbaa !2
  %66 = load i32, i32* %val, align 4, !tbaa !2
  %and144 = and i32 %66, 2047
  %cmp145 = icmp eq i32 %and144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %if.then.140
  %67 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool148 = icmp ne i32 %67, 0
  br i1 %tobool148, label %if.end.151, label %if.then.149

if.then.149:                                      ; preds = %if.then.147
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.149, %if.then.147
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.152:                                       ; preds = %if.then.140
  %68 = load i32, i32* %val, align 4, !tbaa !2
  %cmp153 = icmp sge i32 %68, 2048
  %conv154 = zext i1 %cmp153 to i32
  store i32 %conv154, i32* %sign, align 4, !tbaa !2
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.end.152
  %69 = load i32, i32* %val, align 4, !tbaa !2
  %sub156 = sub nsw i32 4096, %69
  store i32 %sub156, i32* %val, align 4, !tbaa !2
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.152
  br label %if.end.164

if.else.158:                                      ; preds = %if.end.135
  %70 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run159 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %70, i32 0, i32 0
  %71 = load i8, i8* %run159, align 1, !tbaa !12
  %conv160 = sext i8 %71 to i32
  store i32 %conv160, i32* %run, align 4, !tbaa !2
  %72 = load i32, i32* %i, align 4, !tbaa !2
  %add161 = add nsw i32 %72, %conv160
  store i32 %add161, i32* %i, align 4, !tbaa !2
  %73 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %level = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %73, i32 0, i32 1
  %74 = load i8, i8* %level, align 1, !tbaa !13
  %conv162 = sext i8 %74 to i32
  store i32 %conv162, i32* %val, align 4, !tbaa !2
  %call163 = call i32 @Get_Bits(i32 1)
  store i32 %call163, i32* %sign, align 4, !tbaa !2
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.158, %if.end.157
  %75 = load i32, i32* %i, align 4, !tbaa !2
  %cmp165 = icmp sge i32 %75, 64
  br i1 %cmp165, label %if.then.167, label %if.end.172

if.then.167:                                      ; preds = %if.end.164
  %76 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool168 = icmp ne i32 %76, 0
  br i1 %tobool168, label %if.end.171, label %if.then.169

if.then.169:                                      ; preds = %if.then.167
  %77 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  %call170 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %if.then.167
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.172:                                       ; preds = %if.end.164
  %78 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom173 = sext i32 %78 to i64
  %79 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %alternate_scan = getelementptr inbounds %struct.layer_data, %struct.layer_data* %79, i32 0, i32 19
  %80 = load i32, i32* %alternate_scan, align 4, !tbaa !19
  %idxprom174 = sext i32 %80 to i64
  %arrayidx175 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx175, i32 0, i64 %idxprom173
  %81 = load i8, i8* %arrayidx176, align 1, !tbaa !14
  %conv177 = zext i8 %81 to i32
  store i32 %conv177, i32* %j, align 4, !tbaa !2
  %82 = load i32, i32* %val, align 4, !tbaa !2
  %83 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %83, i32 0, i32 22
  %84 = load i32, i32* %quantizer_scale, align 4, !tbaa !15
  %mul = mul nsw i32 %82, %84
  %85 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom178 = sext i32 %85 to i64
  %86 = load i32*, i32** %qmat, align 8, !tbaa !6
  %arrayidx179 = getelementptr inbounds i32, i32* %86, i64 %idxprom178
  %87 = load i32, i32* %arrayidx179, align 4, !tbaa !2
  %mul180 = mul nsw i32 %mul, %87
  %shr181 = ashr i32 %mul180, 4
  store i32 %shr181, i32* %val, align 4, !tbaa !2
  %88 = load i32, i32* %sign, align 4, !tbaa !2
  %tobool182 = icmp ne i32 %88, 0
  br i1 %tobool182, label %cond.true.183, label %cond.false.185

cond.true.183:                                    ; preds = %if.end.172
  %89 = load i32, i32* %val, align 4, !tbaa !2
  %sub184 = sub nsw i32 0, %89
  br label %cond.end.186

cond.false.185:                                   ; preds = %if.end.172
  %90 = load i32, i32* %val, align 4, !tbaa !2
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.183
  %cond187 = phi i32 [ %sub184, %cond.true.183 ], [ %90, %cond.false.185 ]
  %conv188 = trunc i32 %cond187 to i16
  %91 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom189 = sext i32 %91 to i64
  %92 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx190 = getelementptr inbounds i16, i16* %92, i64 %idxprom189
  store i16 %conv188, i16* %arrayidx190, align 2, !tbaa !8
  %93 = load i32, i32* %nc, align 4, !tbaa !2
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %nc, align 4, !tbaa !2
  %94 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !17
  %cmp191 = icmp eq i32 %94, 1
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.198

land.lhs.true.193:                                ; preds = %cond.end.186
  %95 = load i32, i32* %nc, align 4, !tbaa !2
  %96 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !18
  %sub194 = sub nsw i32 %96, 63
  %cmp195 = icmp eq i32 %95, %sub194
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %land.lhs.true.193
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %land.lhs.true.193, %cond.end.186
  br label %for.inc

for.inc:                                          ; preds = %if.end.198
  %97 = load i32, i32* %i, align 4, !tbaa !2
  %inc199 = add nsw i32 %97, 1
  store i32 %inc199, i32* %i, align 4, !tbaa !2
  br label %for.cond

cleanup:                                          ; preds = %if.end.171, %if.end.151, %if.then.134, %if.end.120, %if.then.34
  %98 = bitcast %struct.layer_data** %ld1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #3
  %99 = bitcast i32** %qmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #3
  %100 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #3
  %101 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #3
  %102 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #3
  %103 = bitcast i32* %run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #3
  %104 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #3
  %105 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #3
  %106 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #3
  %107 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #3
  %108 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #3
  %109 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @Decode_MPEG2_Non_Intra_Block(i32 %comp) #0 {
entry:
  %comp.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sign = alloca i32, align 4
  %nc = alloca i32, align 4
  %run = alloca i32, align 4
  %code = alloca i32, align 4
  %tab = alloca %struct.DCTtab*, align 8
  %bp = alloca i16*, align 8
  %qmat = alloca i32*, align 8
  %ld1 = alloca %struct.layer_data*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %comp, i32* %comp.addr, align 4, !tbaa !2
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  %5 = bitcast i32* %run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i32** %qmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast %struct.layer_data** %ld1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  %11 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  %scalable_mode = getelementptr inbounds %struct.layer_data, %struct.layer_data* %11, i32 0, i32 17
  %12 = load i32, i32* %scalable_mode, align 4, !tbaa !17
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load %struct.layer_data*, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.layer_data* [ @base, %cond.true ], [ %13, %cond.false ]
  store %struct.layer_data* %cond, %struct.layer_data** %ld1, align 8, !tbaa !6
  %14 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %block = getelementptr inbounds %struct.layer_data, %struct.layer_data* %15, i32 0, i32 24
  %arrayidx = getelementptr inbounds [12 x [64 x i16]], [12 x [64 x i16]]* %block, i32 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i32 0, i32 0
  store i16* %arraydecay, i16** %bp, align 8, !tbaa !6
  %16 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !17
  %cmp1 = icmp eq i32 %16, 1
  br i1 %cmp1, label %if.then, label %if.end.4

if.then:                                          ; preds = %cond.end
  %17 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !18
  %cmp2 = icmp slt i32 %17, 64
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %cond.end
  %18 = load i32, i32* %comp.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %18, 4
  br i1 %cmp5, label %cond.true.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %19 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp6 = icmp eq i32 %19, 1
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %lor.lhs.false, %if.end.4
  %20 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %20, i32 0, i32 9
  %arraydecay8 = getelementptr inbounds [64 x i32], [64 x i32]* %non_intra_quantizer_matrix, i32 0, i32 0
  br label %cond.end.11

cond.false.9:                                     ; preds = %lor.lhs.false
  %21 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %chroma_non_intra_quantizer_matrix = getelementptr inbounds %struct.layer_data, %struct.layer_data* %21, i32 0, i32 11
  %arraydecay10 = getelementptr inbounds [64 x i32], [64 x i32]* %chroma_non_intra_quantizer_matrix, i32 0, i32 0
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.9, %cond.true.7
  %cond12 = phi i32* [ %arraydecay8, %cond.true.7 ], [ %arraydecay10, %cond.false.9 ]
  store i32* %cond12, i32** %qmat, align 8, !tbaa !6
  store i32 0, i32* %nc, align 4, !tbaa !2
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.11
  %call = call i32 @Show_Bits(i32 16)
  store i32 %call, i32* %code, align 4, !tbaa !2
  %22 = load i32, i32* %code, align 4, !tbaa !2
  %cmp13 = icmp uge i32 %22, 16384
  br i1 %cmp13, label %if.then.14, label %if.else.25

if.then.14:                                       ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %cmp15 = icmp eq i32 %23, 0
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.then.14
  %24 = load i32, i32* %code, align 4, !tbaa !2
  %shr = lshr i32 %24, 12
  %sub = sub i32 %shr, 4
  %idxprom17 = zext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabfirst, i32 0, i64 %idxprom17
  store %struct.DCTtab* %arrayidx18, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.24

if.else.19:                                       ; preds = %if.then.14
  %25 = load i32, i32* %code, align 4, !tbaa !2
  %shr20 = lshr i32 %25, 12
  %sub21 = sub i32 %shr20, 4
  %idxprom22 = zext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtabnext, i32 0, i64 %idxprom22
  store %struct.DCTtab* %arrayidx23, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.19, %if.then.16
  br label %if.end.84

if.else.25:                                       ; preds = %for.cond
  %26 = load i32, i32* %code, align 4, !tbaa !2
  %cmp26 = icmp uge i32 %26, 1024
  br i1 %cmp26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.else.25
  %27 = load i32, i32* %code, align 4, !tbaa !2
  %shr28 = lshr i32 %27, 8
  %sub29 = sub i32 %shr28, 4
  %idxprom30 = zext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab0, i32 0, i64 %idxprom30
  store %struct.DCTtab* %arrayidx31, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.83

if.else.32:                                       ; preds = %if.else.25
  %28 = load i32, i32* %code, align 4, !tbaa !2
  %cmp33 = icmp uge i32 %28, 512
  br i1 %cmp33, label %if.then.34, label %if.else.39

if.then.34:                                       ; preds = %if.else.32
  %29 = load i32, i32* %code, align 4, !tbaa !2
  %shr35 = lshr i32 %29, 6
  %sub36 = sub i32 %shr35, 8
  %idxprom37 = zext i32 %sub36 to i64
  %arrayidx38 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab1, i32 0, i64 %idxprom37
  store %struct.DCTtab* %arrayidx38, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.82

if.else.39:                                       ; preds = %if.else.32
  %30 = load i32, i32* %code, align 4, !tbaa !2
  %cmp40 = icmp uge i32 %30, 256
  br i1 %cmp40, label %if.then.41, label %if.else.46

if.then.41:                                       ; preds = %if.else.39
  %31 = load i32, i32* %code, align 4, !tbaa !2
  %shr42 = lshr i32 %31, 4
  %sub43 = sub i32 %shr42, 16
  %idxprom44 = zext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab2, i32 0, i64 %idxprom44
  store %struct.DCTtab* %arrayidx45, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.81

if.else.46:                                       ; preds = %if.else.39
  %32 = load i32, i32* %code, align 4, !tbaa !2
  %cmp47 = icmp uge i32 %32, 128
  br i1 %cmp47, label %if.then.48, label %if.else.53

if.then.48:                                       ; preds = %if.else.46
  %33 = load i32, i32* %code, align 4, !tbaa !2
  %shr49 = lshr i32 %33, 3
  %sub50 = sub i32 %shr49, 16
  %idxprom51 = zext i32 %sub50 to i64
  %arrayidx52 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab3, i32 0, i64 %idxprom51
  store %struct.DCTtab* %arrayidx52, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.80

if.else.53:                                       ; preds = %if.else.46
  %34 = load i32, i32* %code, align 4, !tbaa !2
  %cmp54 = icmp uge i32 %34, 64
  br i1 %cmp54, label %if.then.55, label %if.else.60

if.then.55:                                       ; preds = %if.else.53
  %35 = load i32, i32* %code, align 4, !tbaa !2
  %shr56 = lshr i32 %35, 2
  %sub57 = sub i32 %shr56, 16
  %idxprom58 = zext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab4, i32 0, i64 %idxprom58
  store %struct.DCTtab* %arrayidx59, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.79

if.else.60:                                       ; preds = %if.else.53
  %36 = load i32, i32* %code, align 4, !tbaa !2
  %cmp61 = icmp uge i32 %36, 32
  br i1 %cmp61, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %if.else.60
  %37 = load i32, i32* %code, align 4, !tbaa !2
  %shr63 = lshr i32 %37, 1
  %sub64 = sub i32 %shr63, 16
  %idxprom65 = zext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab5, i32 0, i64 %idxprom65
  store %struct.DCTtab* %arrayidx66, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.78

if.else.67:                                       ; preds = %if.else.60
  %38 = load i32, i32* %code, align 4, !tbaa !2
  %cmp68 = icmp uge i32 %38, 16
  br i1 %cmp68, label %if.then.69, label %if.else.73

if.then.69:                                       ; preds = %if.else.67
  %39 = load i32, i32* %code, align 4, !tbaa !2
  %sub70 = sub i32 %39, 16
  %idxprom71 = zext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [0 x %struct.DCTtab], [0 x %struct.DCTtab]* @DCTtab6, i32 0, i64 %idxprom71
  store %struct.DCTtab* %arrayidx72, %struct.DCTtab** %tab, align 8, !tbaa !6
  br label %if.end.77

if.else.73:                                       ; preds = %if.else.67
  %40 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.end.76, label %if.then.74

if.then.74:                                       ; preds = %if.else.73
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.else.73
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.77:                                        ; preds = %if.then.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.62
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.55
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.48
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.41
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.34
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.27
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.24
  %41 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %len = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %41, i32 0, i32 2
  %42 = load i8, i8* %len, align 1, !tbaa !10
  %conv = sext i8 %42 to i32
  call void @Flush_Buffer(i32 %conv)
  %43 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run85 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %43, i32 0, i32 0
  %44 = load i8, i8* %run85, align 1, !tbaa !12
  %conv86 = sext i8 %44 to i32
  %cmp87 = icmp eq i32 %conv86, 64
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.84
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.end.84
  %45 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run91 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %45, i32 0, i32 0
  %46 = load i8, i8* %run91, align 1, !tbaa !12
  %conv92 = sext i8 %46 to i32
  %cmp93 = icmp eq i32 %conv92, 65
  br i1 %cmp93, label %if.then.95, label %if.else.111

if.then.95:                                       ; preds = %if.end.90
  %call96 = call i32 @Get_Bits(i32 6)
  store i32 %call96, i32* %run, align 4, !tbaa !2
  %47 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %47, %call96
  store i32 %add, i32* %i, align 4, !tbaa !2
  %call97 = call i32 @Get_Bits(i32 12)
  store i32 %call97, i32* %val, align 4, !tbaa !2
  %48 = load i32, i32* %val, align 4, !tbaa !2
  %and = and i32 %48, 2047
  %cmp98 = icmp eq i32 %and, 0
  br i1 %cmp98, label %if.then.100, label %if.end.105

if.then.100:                                      ; preds = %if.then.95
  %49 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool101 = icmp ne i32 %49, 0
  br i1 %tobool101, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %if.then.100
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.then.100
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.105:                                       ; preds = %if.then.95
  %50 = load i32, i32* %val, align 4, !tbaa !2
  %cmp106 = icmp sge i32 %50, 2048
  %conv107 = zext i1 %cmp106 to i32
  store i32 %conv107, i32* %sign, align 4, !tbaa !2
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.end.105
  %51 = load i32, i32* %val, align 4, !tbaa !2
  %sub109 = sub nsw i32 4096, %51
  store i32 %sub109, i32* %val, align 4, !tbaa !2
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.end.105
  br label %if.end.117

if.else.111:                                      ; preds = %if.end.90
  %52 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %run112 = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %52, i32 0, i32 0
  %53 = load i8, i8* %run112, align 1, !tbaa !12
  %conv113 = sext i8 %53 to i32
  store i32 %conv113, i32* %run, align 4, !tbaa !2
  %54 = load i32, i32* %i, align 4, !tbaa !2
  %add114 = add nsw i32 %54, %conv113
  store i32 %add114, i32* %i, align 4, !tbaa !2
  %55 = load %struct.DCTtab*, %struct.DCTtab** %tab, align 8, !tbaa !6
  %level = getelementptr inbounds %struct.DCTtab, %struct.DCTtab* %55, i32 0, i32 1
  %56 = load i8, i8* %level, align 1, !tbaa !13
  %conv115 = sext i8 %56 to i32
  store i32 %conv115, i32* %val, align 4, !tbaa !2
  %call116 = call i32 @Get_Bits(i32 1)
  store i32 %call116, i32* %sign, align 4, !tbaa !2
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.111, %if.end.110
  %57 = load i32, i32* %i, align 4, !tbaa !2
  %cmp118 = icmp sge i32 %57, 64
  br i1 %cmp118, label %if.then.120, label %if.end.125

if.then.120:                                      ; preds = %if.end.117
  %58 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool121 = icmp ne i32 %58, 0
  br i1 %tobool121, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %if.then.120
  %59 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  %call123 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.then.120
  store i32 1, i32* @Fault_Flag, align 4, !tbaa !2
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %if.end.117
  %60 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom126 = sext i32 %60 to i64
  %61 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %alternate_scan = getelementptr inbounds %struct.layer_data, %struct.layer_data* %61, i32 0, i32 19
  %62 = load i32, i32* %alternate_scan, align 4, !tbaa !19
  %idxprom127 = sext i32 %62 to i64
  %arrayidx128 = getelementptr inbounds [2 x [64 x i8]], [2 x [64 x i8]]* @scan, i32 0, i64 %idxprom127
  %arrayidx129 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx128, i32 0, i64 %idxprom126
  %63 = load i8, i8* %arrayidx129, align 1, !tbaa !14
  %conv130 = zext i8 %63 to i32
  store i32 %conv130, i32* %j, align 4, !tbaa !2
  %64 = load i32, i32* %val, align 4, !tbaa !2
  %shl = shl i32 %64, 1
  %add131 = add nsw i32 %shl, 1
  %65 = load %struct.layer_data*, %struct.layer_data** %ld1, align 8, !tbaa !6
  %quantizer_scale = getelementptr inbounds %struct.layer_data, %struct.layer_data* %65, i32 0, i32 22
  %66 = load i32, i32* %quantizer_scale, align 4, !tbaa !15
  %mul = mul nsw i32 %add131, %66
  %67 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom132 = sext i32 %67 to i64
  %68 = load i32*, i32** %qmat, align 8, !tbaa !6
  %arrayidx133 = getelementptr inbounds i32, i32* %68, i64 %idxprom132
  %69 = load i32, i32* %arrayidx133, align 4, !tbaa !2
  %mul134 = mul nsw i32 %mul, %69
  %shr135 = ashr i32 %mul134, 5
  store i32 %shr135, i32* %val, align 4, !tbaa !2
  %70 = load i32, i32* %sign, align 4, !tbaa !2
  %tobool136 = icmp ne i32 %70, 0
  br i1 %tobool136, label %cond.true.137, label %cond.false.139

cond.true.137:                                    ; preds = %if.end.125
  %71 = load i32, i32* %val, align 4, !tbaa !2
  %sub138 = sub nsw i32 0, %71
  br label %cond.end.140

cond.false.139:                                   ; preds = %if.end.125
  %72 = load i32, i32* %val, align 4, !tbaa !2
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.137
  %cond141 = phi i32 [ %sub138, %cond.true.137 ], [ %72, %cond.false.139 ]
  %conv142 = trunc i32 %cond141 to i16
  %73 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom143 = sext i32 %73 to i64
  %74 = load i16*, i16** %bp, align 8, !tbaa !6
  %arrayidx144 = getelementptr inbounds i16, i16* %74, i64 %idxprom143
  store i16 %conv142, i16* %arrayidx144, align 2, !tbaa !8
  %75 = load i32, i32* %nc, align 4, !tbaa !2
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %nc, align 4, !tbaa !2
  %76 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !17
  %cmp145 = icmp eq i32 %76, 1
  br i1 %cmp145, label %land.lhs.true, label %if.end.151

land.lhs.true:                                    ; preds = %cond.end.140
  %77 = load i32, i32* %nc, align 4, !tbaa !2
  %78 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 21), align 4, !tbaa !18
  %sub147 = sub nsw i32 %78, 63
  %cmp148 = icmp eq i32 %77, %sub147
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %land.lhs.true, %cond.end.140
  br label %for.inc

for.inc:                                          ; preds = %if.end.151
  %79 = load i32, i32* %i, align 4, !tbaa !2
  %inc152 = add nsw i32 %79, 1
  store i32 %inc152, i32* %i, align 4, !tbaa !2
  br label %for.cond

cleanup:                                          ; preds = %if.end.124, %if.end.104, %if.then.89, %if.end.76
  %80 = bitcast %struct.layer_data** %ld1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #3
  %81 = bitcast i32** %qmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #3
  %82 = bitcast i16** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #3
  %83 = bitcast %struct.DCTtab** %tab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #3
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #3
  %85 = bitcast i32* %run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #3
  %86 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #3
  %87 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #3
  %88 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #3
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #3
  %90 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #3
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
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!11, !4, i64 2}
!11 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!12 = !{!11, !4, i64 0}
!13 = !{!11, !4, i64 1}
!14 = !{!4, !4, i64 0}
!15 = !{!16, !3, i64 3168}
!16 = !{!"layer_data", !3, i64 0, !4, i64 4, !7, i64 2056, !4, i64 2064, !3, i64 2080, !7, i64 2088, !3, i64 2096, !3, i64 2100, !4, i64 2104, !4, i64 2360, !4, i64 2616, !4, i64 2872, !3, i64 3128, !3, i64 3132, !3, i64 3136, !3, i64 3140, !3, i64 3144, !3, i64 3148, !3, i64 3152, !3, i64 3156, !3, i64 3160, !3, i64 3164, !3, i64 3168, !3, i64 3172, !4, i64 3176}
!17 = !{!16, !3, i64 3148}
!18 = !{!16, !3, i64 3164}
!19 = !{!16, !3, i64 3156}
