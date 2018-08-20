; ModuleID = 'cjpeg.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque
%struct.cjpeg_source_struct = type { void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, %struct.__sFILE*, i8**, i32 }

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x i8*] [i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i32 0, i32 0), i8* null], align 16
@__stderrp = external global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@__stdinp = external global %struct.__sFILE*, align 8
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Not a PPM file\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@is_targa = internal global i32 0, align 4
@.str.47 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal global i32 0, align 4
@.str.56 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's CJPEG, version %s\0A%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"qslots\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"qtables\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.79 = private unnamed_addr constant [69 x i8] c"  -quality N     Compression quality (0..100; 5-95 is useful range)\0A\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"  -grayscale     Create monochrome JPEG file\0A\00", align 1
@.str.81 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.83 = private unnamed_addr constant [66 x i8] c"  -targa         Input file is Targa format (usually not needed)\0A\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.87 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.90 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"  -smooth N      Smooth dithered input (N=1..100 is strength)\0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.96 = private unnamed_addr constant [40 x i8] c"  -baseline      Force baseline output\0A\00", align 1
@.str.97 = private unnamed_addr constant [56 x i8] c"  -qtables file  Use quantization tables given in file\0A\00", align 1
@.str.98 = private unnamed_addr constant [56 x i8] c"  -qslots N[,...]    Set component quantization tables\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"  -sample HxV[,...]  Set component sampling factors\0A\00", align 1
@.str.100 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cinfo = alloca %struct.jpeg_compress_struct, align 8
  %jerr = alloca %struct.jpeg_error_mgr, align 8
  %file_index = alloca i32, align 4
  %src_mgr = alloca %struct.cjpeg_source_struct*, align 8
  %input_file = alloca %struct.__sFILE*, align 8
  %output_file = alloca %struct.__sFILE*, align 8
  %num_scanlines = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast %struct.jpeg_compress_struct* %cinfo to i8*
  call void @llvm.lifetime.start(i64 496, i8* %0) #4
  %1 = bitcast %struct.jpeg_error_mgr* %jerr to i8*
  call void @llvm.lifetime.start(i64 168, i8* %1) #4
  %2 = bitcast i32* %file_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  %3 = bitcast %struct.cjpeg_source_struct** %src_mgr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #4
  %4 = bitcast %struct.__sFILE** %input_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  %5 = bitcast %struct.__sFILE** %output_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #4
  %6 = bitcast i32* %num_scanlines to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #4
  %7 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  store i8* %8, i8** @progname, align 8, !tbaa !6
  %9 = load i8*, i8** @progname, align 8, !tbaa !6
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i8*, i8** @progname, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx1, align 1, !tbaa !8
  %conv = sext i8 %11 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** @progname, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call = call %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* %jerr)
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 0
  store %struct.jpeg_error_mgr* %call, %struct.jpeg_error_mgr** %err, align 8, !tbaa !9
  call void @jpeg_CreateCompress(%struct.jpeg_compress_struct* %cinfo, i32 61, i64 496)
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 11
  store i8** getelementptr inbounds ([44 x i8*], [44 x i8*]* @cdjpeg_message_table, i32 0, i32 0), i8*** %addon_message_table, align 8, !tbaa !13
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 12
  store i32 1000, i32* %first_addon_message, align 4, !tbaa !16
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 13
  store i32 1043, i32* %last_addon_message, align 4, !tbaa !17
  %in_color_space = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 9
  store i32 2, i32* %in_color_space, align 4, !tbaa !18
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* %cinfo)
  %12 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %13 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %call4 = call i32 @parse_switches(%struct.jpeg_compress_struct* %cinfo, i32 %12, i8** %13, i32 0, i32 0)
  store i32 %call4, i32* %file_index, align 4, !tbaa !2
  %14 = load i32, i32* %file_index, align 4, !tbaa !2
  %15 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %15, 1
  %cmp5 = icmp slt i32 %14, %sub
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %17 = load i8*, i8** @progname, align 8, !tbaa !6
  %call8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* %17)
  call void @usage()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %18 = load i32, i32* %file_index, align 4, !tbaa !2
  %19 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp10 = icmp slt i32 %18, %19
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %20 = load i32, i32* %file_index, align 4, !tbaa !2
  %idxprom = sext i32 %20 to i64
  %21 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx13 = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  %22 = load i8*, i8** %arrayidx13, align 8, !tbaa !6
  %call14 = call %struct.__sFILE* @"\01_fopen"(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct.__sFILE* %call14, %struct.__sFILE** %input_file, align 8, !tbaa !6
  %cmp15 = icmp eq %struct.__sFILE* %call14, null
  br i1 %cmp15, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.12
  %23 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %24 = load i8*, i8** @progname, align 8, !tbaa !6
  %25 = load i32, i32* %file_index, align 4, !tbaa !2
  %idxprom18 = sext i32 %25 to i64
  %26 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx19 = getelementptr inbounds i8*, i8** %26, i64 %idxprom18
  %27 = load i8*, i8** %arrayidx19, align 8, !tbaa !6
  %call20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %24, i8* %27)
  call void @exit(i32 1) #5
  unreachable

if.end.21:                                        ; preds = %if.then.12
  br label %if.end.23

if.else:                                          ; preds = %if.end.9
  %call22 = call %struct.__sFILE* @read_stdin()
  store %struct.__sFILE* %call22, %struct.__sFILE** %input_file, align 8, !tbaa !6
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end.21
  %28 = load i8*, i8** @outfilename, align 8, !tbaa !6
  %cmp24 = icmp ne i8* %28, null
  br i1 %cmp24, label %if.then.26, label %if.else.33

if.then.26:                                       ; preds = %if.end.23
  %29 = load i8*, i8** @outfilename, align 8, !tbaa !6
  %call27 = call %struct.__sFILE* @"\01_fopen"(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct.__sFILE* %call27, %struct.__sFILE** %output_file, align 8, !tbaa !6
  %cmp28 = icmp eq %struct.__sFILE* %call27, null
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.26
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %31 = load i8*, i8** @progname, align 8, !tbaa !6
  %32 = load i8*, i8** @outfilename, align 8, !tbaa !6
  %call31 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* %31, i8* %32)
  call void @exit(i32 1) #5
  unreachable

if.end.32:                                        ; preds = %if.then.26
  br label %if.end.35

if.else.33:                                       ; preds = %if.end.23
  %call34 = call %struct.__sFILE* @write_stdout()
  store %struct.__sFILE* %call34, %struct.__sFILE** %output_file, align 8, !tbaa !6
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.end.32
  %33 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !6
  %call36 = call %struct.cjpeg_source_struct* @select_file_type(%struct.jpeg_compress_struct* %cinfo, %struct.__sFILE* %33)
  store %struct.cjpeg_source_struct* %call36, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  %34 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !6
  %35 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  %input_file37 = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %35, i32 0, i32 3
  store %struct.__sFILE* %34, %struct.__sFILE** %input_file37, align 8, !tbaa !19
  %36 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  %start_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %36, i32 0, i32 0
  %37 = load void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %start_input, align 8, !tbaa !21
  %38 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  call void %37(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %38)
  call void @jpeg_default_colorspace(%struct.jpeg_compress_struct* %cinfo)
  %39 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %40 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %call38 = call i32 @parse_switches(%struct.jpeg_compress_struct* %cinfo, i32 %39, i8** %40, i32 0, i32 1)
  store i32 %call38, i32* %file_index, align 4, !tbaa !2
  %41 = load %struct.__sFILE*, %struct.__sFILE** %output_file, align 8, !tbaa !6
  call void @jpeg_stdio_dest(%struct.jpeg_compress_struct* %cinfo, %struct.__sFILE* %41)
  call void @jpeg_start_compress(%struct.jpeg_compress_struct* %cinfo, i32 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.35
  %next_scanline = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 36
  %42 = load i32, i32* %next_scanline, align 4, !tbaa !22
  %image_height = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %cinfo, i32 0, i32 7
  %43 = load i32, i32* %image_height, align 4, !tbaa !23
  %cmp39 = icmp ult i32 %42, %43
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  %get_pixel_rows = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %44, i32 0, i32 1
  %45 = load i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, i32 (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %get_pixel_rows, align 8, !tbaa !24
  %46 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  %call41 = call i32 %45(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %46)
  store i32 %call41, i32* %num_scanlines, align 4, !tbaa !2
  %47 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  %buffer = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %47, i32 0, i32 4
  %48 = load i8**, i8*** %buffer, align 8, !tbaa !25
  %49 = load i32, i32* %num_scanlines, align 4, !tbaa !2
  %call42 = call i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct* %cinfo, i8** %48, i32 %49)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  %finish_input = getelementptr inbounds %struct.cjpeg_source_struct, %struct.cjpeg_source_struct* %50, i32 0, i32 2
  %51 = load void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)*, void (%struct.jpeg_compress_struct*, %struct.cjpeg_source_struct*)** %finish_input, align 8, !tbaa !26
  %52 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %src_mgr, align 8, !tbaa !6
  call void %51(%struct.jpeg_compress_struct* %cinfo, %struct.cjpeg_source_struct* %52)
  call void @jpeg_finish_compress(%struct.jpeg_compress_struct* %cinfo)
  call void @jpeg_destroy_compress(%struct.jpeg_compress_struct* %cinfo)
  %53 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !6
  %54 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !6
  %cmp43 = icmp ne %struct.__sFILE* %53, %54
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %while.end
  %55 = load %struct.__sFILE*, %struct.__sFILE** %input_file, align 8, !tbaa !6
  %call46 = call i32 @fclose(%struct.__sFILE* %55)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %while.end
  %56 = load %struct.__sFILE*, %struct.__sFILE** %output_file, align 8, !tbaa !6
  %57 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  %cmp48 = icmp ne %struct.__sFILE* %56, %57
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %58 = load %struct.__sFILE*, %struct.__sFILE** %output_file, align 8, !tbaa !6
  %call51 = call i32 @fclose(%struct.__sFILE* %58)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %jerr, i32 0, i32 8
  %59 = load i64, i64* %num_warnings, align 8, !tbaa !27
  %tobool = icmp ne i64 %59, 0
  %cond = select i1 %tobool, i32 2, i32 0
  call void @exit(i32 %cond) #5
  unreachable

return:                                           ; No predecessors!
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr*) #2

declare void @jpeg_CreateCompress(%struct.jpeg_compress_struct*, i32, i64) #2

declare void @jpeg_set_defaults(%struct.jpeg_compress_struct*) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @parse_switches(%struct.jpeg_compress_struct* %cinfo, i32 %argc, i8** %argv, i32 %last_file_arg_seen, i32 %for_real) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %last_file_arg_seen.addr = alloca i32, align 4
  %for_real.addr = alloca i32, align 4
  %argn = alloca i32, align 4
  %arg = alloca i8*, align 8
  %quality = alloca i32, align 4
  %q_scale_factor = alloca i32, align 4
  %force_baseline = alloca i32, align 4
  %simple_progressive = alloca i32, align 4
  %qtablefile = alloca i8*, align 8
  %qslotsarg = alloca i8*, align 8
  %samplearg = alloca i8*, align 8
  %scansarg = alloca i8*, align 8
  %lval = alloca i64, align 8
  %ch = alloca i8, align 1
  %lval154 = alloca i64, align 8
  %ch155 = alloca i8, align 1
  %val = alloca i32, align 4
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  store i32 %last_file_arg_seen, i32* %last_file_arg_seen.addr, align 4, !tbaa !2
  store i32 %for_real, i32* %for_real.addr, align 4, !tbaa !2
  %0 = bitcast i32* %argn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #4
  %2 = bitcast i32* %quality to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #4
  %3 = bitcast i32* %q_scale_factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  %4 = bitcast i32* %force_baseline to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #4
  %5 = bitcast i32* %simple_progressive to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #4
  %6 = bitcast i8** %qtablefile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #4
  store i8* null, i8** %qtablefile, align 8, !tbaa !6
  %7 = bitcast i8** %qslotsarg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #4
  store i8* null, i8** %qslotsarg, align 8, !tbaa !6
  %8 = bitcast i8** %samplearg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #4
  store i8* null, i8** %samplearg, align 8, !tbaa !6
  %9 = bitcast i8** %scansarg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #4
  store i8* null, i8** %scansarg, align 8, !tbaa !6
  store i32 75, i32* %quality, align 4, !tbaa !2
  store i32 100, i32* %q_scale_factor, align 4, !tbaa !2
  store i32 0, i32* %force_baseline, align 4, !tbaa !2
  store i32 0, i32* %simple_progressive, align 4, !tbaa !2
  store i32 0, i32* @is_targa, align 4, !tbaa !2
  store i8* null, i8** @outfilename, align 8, !tbaa !6
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !9
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 7
  store i32 0, i32* %trace_level, align 4, !tbaa !28
  store i32 1, i32* %argn, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %argn, align 4, !tbaa !2
  %13 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom = sext i32 %14 to i64
  %15 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  store i8* %16, i8** %arg, align 8, !tbaa !6
  %17 = load i8*, i8** %arg, align 8, !tbaa !6
  %18 = load i8, i8* %17, align 1, !tbaa !8
  %conv = sext i8 %18 to i32
  %cmp1 = icmp ne i32 %conv, 45
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %argn, align 4, !tbaa !2
  %20 = load i32, i32* %last_file_arg_seen.addr, align 4, !tbaa !2
  %cmp3 = icmp sle i32 %19, %20
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i8* null, i8** @outfilename, align 8, !tbaa !6
  br label %for.inc

if.end:                                           ; preds = %if.then
  br label %for.end

if.end.6:                                         ; preds = %for.body
  %21 = load i8*, i8** %arg, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %arg, align 8, !tbaa !6
  %22 = load i8*, i8** %arg, align 8, !tbaa !6
  %call = call i32 @keymatch(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %23 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %24 = load i8*, i8** @progname, align 8, !tbaa !6
  %call8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i32 0, i32 0), i8* %24)
  call void @exit(i32 1) #5
  unreachable

if.else:                                          ; preds = %if.end.6
  %25 = load i8*, i8** %arg, align 8, !tbaa !6
  %call9 = call i32 @keymatch(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  store i32 1, i32* %force_baseline, align 4, !tbaa !2
  br label %if.end.253

if.else.12:                                       ; preds = %if.else
  %26 = load i8*, i8** %arg, align 8, !tbaa !6
  %call13 = call i32 @keymatch(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i32 2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.43

if.then.15:                                       ; preds = %if.else.12
  %27 = load i32, i32* %argn, align 4, !tbaa !2
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %argn, align 4, !tbaa !2
  %28 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp16 = icmp sge i32 %inc, %28
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  call void @usage()
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.then.15
  %29 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom20 = sext i32 %29 to i64
  %30 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx21 = getelementptr inbounds i8*, i8** %30, i64 %idxprom20
  %31 = load i8*, i8** %arrayidx21, align 8, !tbaa !6
  %call22 = call i32 @keymatch(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i32 1)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.19
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %dct_method = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 28
  store i32 0, i32* %dct_method, align 4, !tbaa !29
  br label %if.end.42

if.else.25:                                       ; preds = %if.end.19
  %33 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom26 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx27 = getelementptr inbounds i8*, i8** %34, i64 %idxprom26
  %35 = load i8*, i8** %arrayidx27, align 8, !tbaa !6
  %call28 = call i32 @keymatch(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 2)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.else.25
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %dct_method31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 28
  store i32 1, i32* %dct_method31, align 4, !tbaa !29
  br label %if.end.41

if.else.32:                                       ; preds = %if.else.25
  %37 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom33 = sext i32 %37 to i64
  %38 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx34 = getelementptr inbounds i8*, i8** %38, i64 %idxprom33
  %39 = load i8*, i8** %arrayidx34, align 8, !tbaa !6
  %call35 = call i32 @keymatch(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 2)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.32
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %dct_method38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 28
  store i32 2, i32* %dct_method38, align 4, !tbaa !29
  br label %if.end.40

if.else.39:                                       ; preds = %if.else.32
  call void @usage()
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.then.37
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.24
  br label %if.end.252

if.else.43:                                       ; preds = %if.else.12
  %41 = load i8*, i8** %arg, align 8, !tbaa !6
  %call44 = call i32 @keymatch(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 1)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.43
  %42 = load i8*, i8** %arg, align 8, !tbaa !6
  %call46 = call i32 @keymatch(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 1)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.56

if.then.48:                                       ; preds = %lor.lhs.false, %if.else.43
  %43 = load i32, i32* @parse_switches.printed_version, align 4, !tbaa !2
  %tobool49 = icmp ne i32 %43, 0
  br i1 %tobool49, label %if.end.52, label %if.then.50

if.then.50:                                       ; preds = %if.then.48
  %44 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call51 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.58, i32 0, i32 0))
  store i32 1, i32* @parse_switches.printed_version, align 4, !tbaa !2
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.then.48
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err53, align 8, !tbaa !9
  %trace_level54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 7
  %47 = load i32, i32* %trace_level54, align 4, !tbaa !28
  %inc55 = add nsw i32 %47, 1
  store i32 %inc55, i32* %trace_level54, align 4, !tbaa !28
  br label %if.end.251

if.else.56:                                       ; preds = %lor.lhs.false
  %48 = load i8*, i8** %arg, align 8, !tbaa !6
  %call57 = call i32 @keymatch(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 2)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.62, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.else.56
  %49 = load i8*, i8** %arg, align 8, !tbaa !6
  %call60 = call i32 @keymatch(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 2)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %lor.lhs.false.59, %if.else.56
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* %50, i32 1)
  br label %if.end.250

if.else.63:                                       ; preds = %lor.lhs.false.59
  %51 = load i8*, i8** %arg, align 8, !tbaa !6
  %call64 = call i32 @keymatch(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 3)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.else.89

if.then.66:                                       ; preds = %if.else.63
  %52 = bitcast i64* %lval to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #4
  call void @llvm.lifetime.start(i64 1, i8* %ch) #4
  store i8 120, i8* %ch, align 1, !tbaa !8
  %53 = load i32, i32* %argn, align 4, !tbaa !2
  %inc67 = add nsw i32 %53, 1
  store i32 %inc67, i32* %argn, align 4, !tbaa !2
  %54 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp68 = icmp sge i32 %inc67, %54
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.66
  call void @usage()
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.66
  %55 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom72 = sext i32 %55 to i64
  %56 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx73 = getelementptr inbounds i8*, i8** %56, i64 %idxprom72
  %57 = load i8*, i8** %arrayidx73, align 8, !tbaa !6
  %call74 = call i32 (i8*, i8*, ...) @sscanf(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i64* %lval, i8* %ch)
  %cmp75 = icmp slt i32 %call74, 1
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.71
  call void @usage()
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.71
  %58 = load i8, i8* %ch, align 1, !tbaa !8
  %conv79 = sext i8 %58 to i32
  %cmp80 = icmp eq i32 %conv79, 109
  br i1 %cmp80, label %if.then.86, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %if.end.78
  %59 = load i8, i8* %ch, align 1, !tbaa !8
  %conv83 = sext i8 %59 to i32
  %cmp84 = icmp eq i32 %conv83, 77
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %lor.lhs.false.82, %if.end.78
  %60 = load i64, i64* %lval, align 8, !tbaa !30
  %mul = mul nsw i64 %60, 1000
  store i64 %mul, i64* %lval, align 8, !tbaa !30
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %lor.lhs.false.82
  %61 = load i64, i64* %lval, align 8, !tbaa !30
  %mul88 = mul nsw i64 %61, 1000
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %mem = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %62, i32 0, i32 1
  %63 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !31
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %63, i32 0, i32 11
  store i64 %mul88, i64* %max_memory_to_use, align 8, !tbaa !32
  call void @llvm.lifetime.end(i64 1, i8* %ch) #4
  %64 = bitcast i64* %lval to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #4
  br label %if.end.249

if.else.89:                                       ; preds = %if.else.63
  %65 = load i8*, i8** %arg, align 8, !tbaa !6
  %call90 = call i32 @keymatch(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 1)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %if.else.89
  %66 = load i8*, i8** %arg, align 8, !tbaa !6
  %call93 = call i32 @keymatch(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 1)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %lor.lhs.false.92, %if.else.89
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %optimize_coding = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 25
  store i32 1, i32* %optimize_coding, align 4, !tbaa !34
  br label %if.end.248

if.else.96:                                       ; preds = %lor.lhs.false.92
  %68 = load i8*, i8** %arg, align 8, !tbaa !6
  %call97 = call i32 @keymatch(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i32 4)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.else.107

if.then.99:                                       ; preds = %if.else.96
  %69 = load i32, i32* %argn, align 4, !tbaa !2
  %inc100 = add nsw i32 %69, 1
  store i32 %inc100, i32* %argn, align 4, !tbaa !2
  %70 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp101 = icmp sge i32 %inc100, %70
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.99
  call void @usage()
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %if.then.99
  %71 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom105 = sext i32 %71 to i64
  %72 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx106 = getelementptr inbounds i8*, i8** %72, i64 %idxprom105
  %73 = load i8*, i8** %arrayidx106, align 8, !tbaa !6
  store i8* %73, i8** @outfilename, align 8, !tbaa !6
  br label %if.end.247

if.else.107:                                      ; preds = %if.else.96
  %74 = load i8*, i8** %arg, align 8, !tbaa !6
  %call108 = call i32 @keymatch(i8* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i32 1)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %if.else.107
  store i32 1, i32* %simple_progressive, align 4, !tbaa !2
  br label %if.end.246

if.else.111:                                      ; preds = %if.else.107
  %75 = load i8*, i8** %arg, align 8, !tbaa !6
  %call112 = call i32 @keymatch(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 1)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.else.128

if.then.114:                                      ; preds = %if.else.111
  %76 = load i32, i32* %argn, align 4, !tbaa !2
  %inc115 = add nsw i32 %76, 1
  store i32 %inc115, i32* %argn, align 4, !tbaa !2
  %77 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp116 = icmp sge i32 %inc115, %77
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.114
  call void @usage()
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.then.114
  %78 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom120 = sext i32 %78 to i64
  %79 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx121 = getelementptr inbounds i8*, i8** %79, i64 %idxprom120
  %80 = load i8*, i8** %arrayidx121, align 8, !tbaa !6
  %call122 = call i32 (i8*, i8*, ...) @sscanf(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32* %quality)
  %cmp123 = icmp ne i32 %call122, 1
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.end.119
  call void @usage()
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %if.end.119
  %81 = load i32, i32* %quality, align 4, !tbaa !2
  %call127 = call i32 @jpeg_quality_scaling(i32 %81)
  store i32 %call127, i32* %q_scale_factor, align 4, !tbaa !2
  br label %if.end.245

if.else.128:                                      ; preds = %if.else.111
  %82 = load i8*, i8** %arg, align 8, !tbaa !6
  %call129 = call i32 @keymatch(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 2)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.else.139

if.then.131:                                      ; preds = %if.else.128
  %83 = load i32, i32* %argn, align 4, !tbaa !2
  %inc132 = add nsw i32 %83, 1
  store i32 %inc132, i32* %argn, align 4, !tbaa !2
  %84 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp133 = icmp sge i32 %inc132, %84
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.131
  call void @usage()
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %if.then.131
  %85 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom137 = sext i32 %85 to i64
  %86 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx138 = getelementptr inbounds i8*, i8** %86, i64 %idxprom137
  %87 = load i8*, i8** %arrayidx138, align 8, !tbaa !6
  store i8* %87, i8** %qslotsarg, align 8, !tbaa !6
  br label %if.end.244

if.else.139:                                      ; preds = %if.else.128
  %88 = load i8*, i8** %arg, align 8, !tbaa !6
  %call140 = call i32 @keymatch(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 2)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.142, label %if.else.150

if.then.142:                                      ; preds = %if.else.139
  %89 = load i32, i32* %argn, align 4, !tbaa !2
  %inc143 = add nsw i32 %89, 1
  store i32 %inc143, i32* %argn, align 4, !tbaa !2
  %90 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp144 = icmp sge i32 %inc143, %90
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.then.142
  call void @usage()
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.then.142
  %91 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom148 = sext i32 %91 to i64
  %92 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx149 = getelementptr inbounds i8*, i8** %92, i64 %idxprom148
  %93 = load i8*, i8** %arrayidx149, align 8, !tbaa !6
  store i8* %93, i8** %qtablefile, align 8, !tbaa !6
  br label %if.end.243

if.else.150:                                      ; preds = %if.else.139
  %94 = load i8*, i8** %arg, align 8, !tbaa !6
  %call151 = call i32 @keymatch(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i32 1)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.188

if.then.153:                                      ; preds = %if.else.150
  %95 = bitcast i64* %lval154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #4
  call void @llvm.lifetime.start(i64 1, i8* %ch155) #4
  store i8 120, i8* %ch155, align 1, !tbaa !8
  %96 = load i32, i32* %argn, align 4, !tbaa !2
  %inc156 = add nsw i32 %96, 1
  store i32 %inc156, i32* %argn, align 4, !tbaa !2
  %97 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp157 = icmp sge i32 %inc156, %97
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.then.153
  call void @usage()
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.then.153
  %98 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom161 = sext i32 %98 to i64
  %99 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx162 = getelementptr inbounds i8*, i8** %99, i64 %idxprom161
  %100 = load i8*, i8** %arrayidx162, align 8, !tbaa !6
  %call163 = call i32 (i8*, i8*, ...) @sscanf(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i64* %lval154, i8* %ch155)
  %cmp164 = icmp slt i32 %call163, 1
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.160
  call void @usage()
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.166, %if.end.160
  %101 = load i64, i64* %lval154, align 8, !tbaa !30
  %cmp168 = icmp slt i64 %101, 0
  br i1 %cmp168, label %if.then.173, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %if.end.167
  %102 = load i64, i64* %lval154, align 8, !tbaa !30
  %cmp171 = icmp sgt i64 %102, 65535
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %lor.lhs.false.170, %if.end.167
  call void @usage()
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %lor.lhs.false.170
  %103 = load i8, i8* %ch155, align 1, !tbaa !8
  %conv175 = sext i8 %103 to i32
  %cmp176 = icmp eq i32 %conv175, 98
  br i1 %cmp176, label %if.then.182, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %if.end.174
  %104 = load i8, i8* %ch155, align 1, !tbaa !8
  %conv179 = sext i8 %104 to i32
  %cmp180 = icmp eq i32 %conv179, 66
  br i1 %cmp180, label %if.then.182, label %if.else.184

if.then.182:                                      ; preds = %lor.lhs.false.178, %if.end.174
  %105 = load i64, i64* %lval154, align 8, !tbaa !30
  %conv183 = trunc i64 %105 to i32
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %restart_interval = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 29
  store i32 %conv183, i32* %restart_interval, align 4, !tbaa !35
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %restart_in_rows = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 30
  store i32 0, i32* %restart_in_rows, align 4, !tbaa !36
  br label %if.end.187

if.else.184:                                      ; preds = %lor.lhs.false.178
  %108 = load i64, i64* %lval154, align 8, !tbaa !30
  %conv185 = trunc i64 %108 to i32
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %restart_in_rows186 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %109, i32 0, i32 30
  store i32 %conv185, i32* %restart_in_rows186, align 4, !tbaa !36
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.then.182
  call void @llvm.lifetime.end(i64 1, i8* %ch155) #4
  %110 = bitcast i64* %lval154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #4
  br label %if.end.242

if.else.188:                                      ; preds = %if.else.150
  %111 = load i8*, i8** %arg, align 8, !tbaa !6
  %call189 = call i32 @keymatch(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 2)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then.191, label %if.else.199

if.then.191:                                      ; preds = %if.else.188
  %112 = load i32, i32* %argn, align 4, !tbaa !2
  %inc192 = add nsw i32 %112, 1
  store i32 %inc192, i32* %argn, align 4, !tbaa !2
  %113 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp193 = icmp sge i32 %inc192, %113
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.then.191
  call void @usage()
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.195, %if.then.191
  %114 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom197 = sext i32 %114 to i64
  %115 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx198 = getelementptr inbounds i8*, i8** %115, i64 %idxprom197
  %116 = load i8*, i8** %arrayidx198, align 8, !tbaa !6
  store i8* %116, i8** %samplearg, align 8, !tbaa !6
  br label %if.end.241

if.else.199:                                      ; preds = %if.else.188
  %117 = load i8*, i8** %arg, align 8, !tbaa !6
  %call200 = call i32 @keymatch(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i32 2)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then.202, label %if.else.210

if.then.202:                                      ; preds = %if.else.199
  %118 = load i32, i32* %argn, align 4, !tbaa !2
  %inc203 = add nsw i32 %118, 1
  store i32 %inc203, i32* %argn, align 4, !tbaa !2
  %119 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp204 = icmp sge i32 %inc203, %119
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.202
  call void @usage()
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.then.202
  %120 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom208 = sext i32 %120 to i64
  %121 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx209 = getelementptr inbounds i8*, i8** %121, i64 %idxprom208
  %122 = load i8*, i8** %arrayidx209, align 8, !tbaa !6
  store i8* %122, i8** %scansarg, align 8, !tbaa !6
  br label %if.end.240

if.else.210:                                      ; preds = %if.else.199
  %123 = load i8*, i8** %arg, align 8, !tbaa !6
  %call211 = call i32 @keymatch(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), i32 2)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %if.then.213, label %if.else.233

if.then.213:                                      ; preds = %if.else.210
  %124 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #4
  %125 = load i32, i32* %argn, align 4, !tbaa !2
  %inc214 = add nsw i32 %125, 1
  store i32 %inc214, i32* %argn, align 4, !tbaa !2
  %126 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp215 = icmp sge i32 %inc214, %126
  br i1 %cmp215, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %if.then.213
  call void @usage()
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %if.then.213
  %127 = load i32, i32* %argn, align 4, !tbaa !2
  %idxprom219 = sext i32 %127 to i64
  %128 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx220 = getelementptr inbounds i8*, i8** %128, i64 %idxprom219
  %129 = load i8*, i8** %arrayidx220, align 8, !tbaa !6
  %call221 = call i32 (i8*, i8*, ...) @sscanf(i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32* %val)
  %cmp222 = icmp ne i32 %call221, 1
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.218
  call void @usage()
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.218
  %130 = load i32, i32* %val, align 4, !tbaa !2
  %cmp226 = icmp slt i32 %130, 0
  br i1 %cmp226, label %if.then.231, label %lor.lhs.false.228

lor.lhs.false.228:                                ; preds = %if.end.225
  %131 = load i32, i32* %val, align 4, !tbaa !2
  %cmp229 = icmp sgt i32 %131, 100
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %lor.lhs.false.228, %if.end.225
  call void @usage()
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %lor.lhs.false.228
  %132 = load i32, i32* %val, align 4, !tbaa !2
  %133 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %smoothing_factor = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %133, i32 0, i32 27
  store i32 %132, i32* %smoothing_factor, align 4, !tbaa !37
  %134 = bitcast i32* %val to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #4
  br label %if.end.239

if.else.233:                                      ; preds = %if.else.210
  %135 = load i8*, i8** %arg, align 8, !tbaa !6
  %call234 = call i32 @keymatch(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 1)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %if.else.233
  store i32 1, i32* @is_targa, align 4, !tbaa !2
  br label %if.end.238

if.else.237:                                      ; preds = %if.else.233
  call void @usage()
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.237, %if.then.236
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.end.232
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.207
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.end.196
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.187
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.147
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.end.136
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.end.126
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.then.110
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %if.end.104
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.then.95
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.87
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.62
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %if.end.52
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251, %if.end.42
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %if.then.11
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253
  br label %for.inc

for.inc:                                          ; preds = %if.end.254, %if.then.5
  %136 = load i32, i32* %argn, align 4, !tbaa !2
  %inc255 = add nsw i32 %136, 1
  store i32 %inc255, i32* %argn, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %137 = load i32, i32* %for_real.addr, align 4, !tbaa !2
  %tobool256 = icmp ne i32 %137, 0
  br i1 %tobool256, label %if.then.257, label %if.end.293

if.then.257:                                      ; preds = %for.end
  %138 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %139 = load i32, i32* %quality, align 4, !tbaa !2
  %140 = load i32, i32* %force_baseline, align 4, !tbaa !2
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* %138, i32 %139, i32 %140)
  %141 = load i8*, i8** %qtablefile, align 8, !tbaa !6
  %cmp258 = icmp ne i8* %141, null
  br i1 %cmp258, label %if.then.260, label %if.end.265

if.then.260:                                      ; preds = %if.then.257
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %143 = load i8*, i8** %qtablefile, align 8, !tbaa !6
  %144 = load i32, i32* %q_scale_factor, align 4, !tbaa !2
  %145 = load i32, i32* %force_baseline, align 4, !tbaa !2
  %call261 = call i32 @read_quant_tables(%struct.jpeg_compress_struct* %142, i8* %143, i32 %144, i32 %145)
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.end.264, label %if.then.263

if.then.263:                                      ; preds = %if.then.260
  call void @usage()
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %if.then.260
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.257
  %146 = load i8*, i8** %qslotsarg, align 8, !tbaa !6
  %cmp266 = icmp ne i8* %146, null
  br i1 %cmp266, label %if.then.268, label %if.end.273

if.then.268:                                      ; preds = %if.end.265
  %147 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %148 = load i8*, i8** %qslotsarg, align 8, !tbaa !6
  %call269 = call i32 @set_quant_slots(%struct.jpeg_compress_struct* %147, i8* %148)
  %tobool270 = icmp ne i32 %call269, 0
  br i1 %tobool270, label %if.end.272, label %if.then.271

if.then.271:                                      ; preds = %if.then.268
  call void @usage()
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.271, %if.then.268
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.end.265
  %149 = load i8*, i8** %samplearg, align 8, !tbaa !6
  %cmp274 = icmp ne i8* %149, null
  br i1 %cmp274, label %if.then.276, label %if.end.281

if.then.276:                                      ; preds = %if.end.273
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %151 = load i8*, i8** %samplearg, align 8, !tbaa !6
  %call277 = call i32 @set_sample_factors(%struct.jpeg_compress_struct* %150, i8* %151)
  %tobool278 = icmp ne i32 %call277, 0
  br i1 %tobool278, label %if.end.280, label %if.then.279

if.then.279:                                      ; preds = %if.then.276
  call void @usage()
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.279, %if.then.276
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.end.273
  %152 = load i32, i32* %simple_progressive, align 4, !tbaa !2
  %tobool282 = icmp ne i32 %152, 0
  br i1 %tobool282, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.281
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  call void @jpeg_simple_progression(%struct.jpeg_compress_struct* %153)
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.283, %if.end.281
  %154 = load i8*, i8** %scansarg, align 8, !tbaa !6
  %cmp285 = icmp ne i8* %154, null
  br i1 %cmp285, label %if.then.287, label %if.end.292

if.then.287:                                      ; preds = %if.end.284
  %155 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %156 = load i8*, i8** %scansarg, align 8, !tbaa !6
  %call288 = call i32 @read_scan_script(%struct.jpeg_compress_struct* %155, i8* %156)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.end.291, label %if.then.290

if.then.290:                                      ; preds = %if.then.287
  call void @usage()
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.290, %if.then.287
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %if.end.284
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %for.end
  %157 = load i32, i32* %argn, align 4, !tbaa !2
  %158 = bitcast i8** %scansarg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #4
  %159 = bitcast i8** %samplearg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #4
  %160 = bitcast i8** %qslotsarg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #4
  %161 = bitcast i8** %qtablefile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #4
  %162 = bitcast i32* %simple_progressive to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #4
  %163 = bitcast i32* %force_baseline to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #4
  %164 = bitcast i32* %q_scale_factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #4
  %165 = bitcast i32* %quality to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #4
  %166 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #4
  %167 = bitcast i32* %argn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #4
  ret i32 %157
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define internal void @usage() #0 {
entry:
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %1 = load i8*, i8** @progname, align 8, !tbaa !6
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.76, i32 0, i32 0), i8* %1)
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0))
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.78, i32 0, i32 0))
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call3 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.79, i32 0, i32 0))
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.80, i32 0, i32 0))
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.81, i32 0, i32 0))
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i32 0, i32 0))
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.83, i32 0, i32 0))
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i32 0, i32 0))
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call9 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0))
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call10 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.88, i32 0, i32 0))
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call11 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.88, i32 0, i32 0))
  %13 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call12 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.90, i32 0, i32 0))
  %14 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.91, i32 0, i32 0))
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call14 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i32 0, i32 0))
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call15 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i32 0, i32 0))
  %17 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call16 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i32 0, i32 0))
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call17 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i32 0, i32 0))
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.96, i32 0, i32 0))
  %20 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call19 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.97, i32 0, i32 0))
  %21 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.98, i32 0, i32 0))
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.99, i32 0, i32 0))
  %23 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call22 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.100, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare %struct.__sFILE* @read_stdin() #2

declare %struct.__sFILE* @write_stdout() #2

; Function Attrs: nounwind ssp uwtable
define internal %struct.cjpeg_source_struct* @select_file_type(%struct.jpeg_compress_struct* %cinfo, %struct.__sFILE* %infile) #0 {
entry:
  %retval = alloca %struct.cjpeg_source_struct*, align 8
  %cinfo.addr = alloca %struct.jpeg_compress_struct*, align 8
  %infile.addr = alloca %struct.__sFILE*, align 8
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_compress_struct* %cinfo, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  store %struct.__sFILE* %infile, %struct.__sFILE** %infile.addr, align 8, !tbaa !6
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #4
  %1 = load i32, i32* @is_targa, align 4, !tbaa !2
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %call = call %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* %2)
  store %struct.cjpeg_source_struct* %call, %struct.cjpeg_source_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8, !tbaa !6
  %call1 = call i32 @getc(%struct.__sFILE* %3)
  store i32 %call1, i32* %c, align 4, !tbaa !2
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 0
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !9
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 5
  store i32 41, i32* %msg_code, align 4, !tbaa !38
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !9
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 0
  %8 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !39
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  call void %8(%struct.jpeg_common_struct* %10)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %11 = load i32, i32* %c, align 4, !tbaa !2
  %12 = load %struct.__sFILE*, %struct.__sFILE** %infile.addr, align 8, !tbaa !6
  %call5 = call i32 @ungetc(i32 %11, %struct.__sFILE* %12)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.4
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !9
  %msg_code9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 1040, i32* %msg_code9, align 4, !tbaa !38
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !9
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit11, align 8, !tbaa !39
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %19 = bitcast %struct.jpeg_compress_struct* %18 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* %19)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end.4
  %20 = load i32, i32* %c, align 4, !tbaa !2
  switch i32 %20, label %sw.default [
    i32 66, label %sw.bb
    i32 71, label %sw.bb.14
    i32 80, label %sw.bb.16
    i32 0, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.12
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %call13 = call %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct* %21)
  store %struct.cjpeg_source_struct* %call13, %struct.cjpeg_source_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.14:                                         ; preds = %if.end.12
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %call15 = call %struct.cjpeg_source_struct* @jinit_read_gif(%struct.jpeg_compress_struct* %22)
  store %struct.cjpeg_source_struct* %call15, %struct.cjpeg_source_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.16:                                         ; preds = %if.end.12
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %call17 = call %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct* %23)
  store %struct.cjpeg_source_struct* %call17, %struct.cjpeg_source_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.18:                                         ; preds = %if.end.12
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %call19 = call %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct* %24)
  store %struct.cjpeg_source_struct* %call19, %struct.cjpeg_source_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %if.end.12
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err20, align 8, !tbaa !9
  %msg_code21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 1041, i32* %msg_code21, align 4, !tbaa !38
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %err22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err22, align 8, !tbaa !9
  %error_exit23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit23, align 8, !tbaa !39
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %cinfo.addr, align 8, !tbaa !6
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* %31)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store %struct.cjpeg_source_struct* null, %struct.cjpeg_source_struct** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb, %if.then
  %32 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #4
  %33 = load %struct.cjpeg_source_struct*, %struct.cjpeg_source_struct** %retval
  ret %struct.cjpeg_source_struct* %33
}

declare void @jpeg_default_colorspace(%struct.jpeg_compress_struct*) #2

declare void @jpeg_stdio_dest(%struct.jpeg_compress_struct*, %struct.__sFILE*) #2

declare void @jpeg_start_compress(%struct.jpeg_compress_struct*, i32) #2

declare i32 @jpeg_write_scanlines(%struct.jpeg_compress_struct*, i8**, i32) #2

declare void @jpeg_finish_compress(%struct.jpeg_compress_struct*) #2

declare void @jpeg_destroy_compress(%struct.jpeg_compress_struct*) #2

declare i32 @fclose(%struct.__sFILE*) #2

declare i32 @keymatch(i8*, i8*, i32) #2

declare void @jpeg_set_colorspace(%struct.jpeg_compress_struct*, i32) #2

declare i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @jpeg_quality_scaling(i32) #2

declare void @jpeg_set_quality(%struct.jpeg_compress_struct*, i32, i32) #2

declare i32 @read_quant_tables(%struct.jpeg_compress_struct*, i8*, i32, i32) #2

declare i32 @set_quant_slots(%struct.jpeg_compress_struct*, i8*) #2

declare i32 @set_sample_factors(%struct.jpeg_compress_struct*, i8*) #2

declare void @jpeg_simple_progression(%struct.jpeg_compress_struct*) #2

declare i32 @read_scan_script(%struct.jpeg_compress_struct*, i8*) #2

declare %struct.cjpeg_source_struct* @jinit_read_targa(%struct.jpeg_compress_struct*) #2

declare i32 @getc(%struct.__sFILE*) #2

declare i32 @ungetc(i32, %struct.__sFILE*) #2

declare %struct.cjpeg_source_struct* @jinit_read_bmp(%struct.jpeg_compress_struct*) #2

declare %struct.cjpeg_source_struct* @jinit_read_gif(%struct.jpeg_compress_struct*) #2

declare %struct.cjpeg_source_struct* @jinit_read_ppm(%struct.jpeg_compress_struct*) #2

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
!8 = !{!4, !4, i64 0}
!9 = !{!10, !7, i64 0}
!10 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !3, i64 24, !3, i64 28, !7, i64 32, !3, i64 40, !3, i64 44, !3, i64 48, !4, i64 52, !11, i64 56, !3, i64 64, !3, i64 68, !4, i64 72, !7, i64 80, !4, i64 88, !4, i64 120, !4, i64 152, !4, i64 184, !4, i64 200, !4, i64 216, !3, i64 232, !7, i64 240, !3, i64 248, !3, i64 252, !3, i64 256, !3, i64 260, !3, i64 264, !4, i64 268, !3, i64 272, !3, i64 276, !3, i64 280, !4, i64 284, !12, i64 286, !12, i64 288, !3, i64 292, !3, i64 296, !3, i64 300, !3, i64 304, !3, i64 308, !3, i64 312, !3, i64 316, !4, i64 320, !3, i64 352, !3, i64 356, !3, i64 360, !4, i64 364, !3, i64 404, !3, i64 408, !3, i64 412, !3, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!11 = !{!"double", !4, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!14, !7, i64 152}
!14 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !3, i64 40, !4, i64 44, !3, i64 124, !15, i64 128, !7, i64 136, !3, i64 144, !7, i64 152, !3, i64 160, !3, i64 164}
!15 = !{!"long", !4, i64 0}
!16 = !{!14, !3, i64 160}
!17 = !{!14, !3, i64 164}
!18 = !{!10, !4, i64 52}
!19 = !{!20, !7, i64 24}
!20 = !{!"cjpeg_source_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !3, i64 40}
!21 = !{!20, !7, i64 0}
!22 = !{!10, !3, i64 296}
!23 = !{!10, !3, i64 44}
!24 = !{!20, !7, i64 8}
!25 = !{!20, !7, i64 32}
!26 = !{!20, !7, i64 16}
!27 = !{!14, !15, i64 128}
!28 = !{!14, !3, i64 124}
!29 = !{!10, !4, i64 268}
!30 = !{!15, !15, i64 0}
!31 = !{!10, !7, i64 8}
!32 = !{!33, !15, i64 88}
!33 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!34 = !{!10, !3, i64 256}
!35 = !{!10, !3, i64 272}
!36 = !{!10, !3, i64 276}
!37 = !{!10, !3, i64 264}
!38 = !{!14, !3, i64 40}
!39 = !{!14, !7, i64 0}
