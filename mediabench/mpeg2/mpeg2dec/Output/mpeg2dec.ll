; ModuleID = 'mpeg2dec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.layer_data = type { i32, [2048 x i8], i8*, [16 x i8], i32, i8*, i32, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x [64 x i16]] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@Version = global [28 x i8] c"mpeg2decode V1.2a, 96/07/19\00", align 16
@Author = global [41 x i8] c"(C) 1996, MPEG Software Simulation Group\00", align 16
@scan = global [2 x [64 x i8]] [[64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", [64 x i8] c"\00\08\10\18\01\09\02\0A\11\19 (0891)!\1A\12\03\0B\04\0C\13\1B\22*2:#+3;\14\1C\05\0D\06\0E\15\1D$,4<%-5=\16\1E\07\0F\17\1F&.6>'/7?"], align 16
@default_intra_quantizer_matrix = global [64 x i8] c"\08\10\13\16\1A\1B\1D\22\10\10\16\18\1B\1D\22%\13\16\1A\1B\1D\22\22&\16\16\1A\1B\1D\22%(\16\1A\1B\1D #(0\1A\1B\1D #(0:\1A\1B\1D\22&.8E\1B\1D#&.8ES", align 16
@Non_Linear_quantizer_scale = global [32 x i8] c"\00\01\02\03\04\05\06\07\08\0A\0C\0E\10\12\14\16\18\1C $(,048@HPX`hp", align 16
@Inverse_Table_6_9 = global [8 x [4 x i32]] [[4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 117504, i32 138453, i32 13954, i32 34903], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104448, i32 132798, i32 24759, i32 53109], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 104597, i32 132201, i32 25675, i32 53279], [4 x i32] [i32 117579, i32 136230, i32 16907, i32 35559]], align 16
@base = common global %struct.layer_data zeroinitializer, align 8
@ld = common global %struct.layer_data* null, align 8
@Main_Bitstream_Filename = common global i8* null, align 8
@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"Base layer input file %s not found\0A\00", align 1
@Error_Text = common global [256 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [52 x i8] c"Decoder currently does not parse transport streams\0A\00", align 1
@System_Stream_Flag = common global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to recognize stream type\0A\00", align 1
@Two_Streams = common global i32 0, align 4
@enhan = common global %struct.layer_data zeroinitializer, align 8
@Enhancement_Layer_Bitstream_Filename = common global i8* null, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"enhancment layer bitstream file %s not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Output_Type = common global i32 0, align 4
@hiQdither = common global i32 0, align 4
@Quiet_Flag = common global i32 0, align 4
@Trace_Flag = common global i32 0, align 4
@Fault_Flag = common global i32 0, align 4
@Verbose_Flag = common global i32 0, align 4
@Spatial_Flag = common global i32 0, align 4
@Reference_IDCT_Flag = common global i32 0, align 4
@Frame_Store_Flag = common global i32 0, align 4
@Display_Progressive_Flag = common global i32 0, align 4
@Ersatz_Flag = common global i32 0, align 4
@Big_Picture_Flag = common global i32 0, align 4
@Verify_Flag = common global i32 0, align 4
@Stats_Flag = common global i32 0, align 4
@User_Data_Flag = common global i32 0, align 4
@Main_Bitstream_Flag = common global i32 0, align 4
@Output_Picture_Filename = common global i8* null, align 8
@Substitute_Picture_Filename = common global i8* null, align 8
@Clip = common global i8* null, align 8
@backward_reference_frame = common global [3 x i8*] zeroinitializer, align 16
@forward_reference_frame = common global [3 x i8*] zeroinitializer, align 16
@auxframe = common global [3 x i8*] zeroinitializer, align 16
@current_frame = common global [3 x i8*] zeroinitializer, align 16
@substitute_frame = common global [3 x i8*] zeroinitializer, align 16
@llframe0 = common global [3 x i8*] zeroinitializer, align 16
@llframe1 = common global [3 x i8*] zeroinitializer, align 16
@lltmp = common global i16* null, align 8
@Lower_Layer_Picture_Filename = common global i8* null, align 8
@Coded_Picture_Width = common global i32 0, align 4
@Coded_Picture_Height = common global i32 0, align 4
@Chroma_Width = common global i32 0, align 4
@Chroma_Height = common global i32 0, align 4
@block_count = common global i32 0, align 4
@Second_Field = common global i32 0, align 4
@profile = common global i32 0, align 4
@level = common global i32 0, align 4
@horizontal_size = common global i32 0, align 4
@vertical_size = common global i32 0, align 4
@mb_width = common global i32 0, align 4
@mb_height = common global i32 0, align 4
@bit_rate = common global double 0.000000e+00, align 8
@frame_rate = common global double 0.000000e+00, align 8
@aspect_ratio_information = common global i32 0, align 4
@frame_rate_code = common global i32 0, align 4
@bit_rate_value = common global i32 0, align 4
@vbv_buffer_size = common global i32 0, align 4
@constrained_parameters_flag = common global i32 0, align 4
@profile_and_level_indication = common global i32 0, align 4
@progressive_sequence = common global i32 0, align 4
@chroma_format = common global i32 0, align 4
@low_delay = common global i32 0, align 4
@frame_rate_extension_n = common global i32 0, align 4
@frame_rate_extension_d = common global i32 0, align 4
@video_format = common global i32 0, align 4
@color_description = common global i32 0, align 4
@color_primaries = common global i32 0, align 4
@transfer_characteristics = common global i32 0, align 4
@matrix_coefficients = common global i32 0, align 4
@display_horizontal_size = common global i32 0, align 4
@display_vertical_size = common global i32 0, align 4
@temporal_reference = common global i32 0, align 4
@picture_coding_type = common global i32 0, align 4
@vbv_delay = common global i32 0, align 4
@full_pel_forward_vector = common global i32 0, align 4
@forward_f_code = common global i32 0, align 4
@full_pel_backward_vector = common global i32 0, align 4
@backward_f_code = common global i32 0, align 4
@f_code = common global [2 x [2 x i32]] zeroinitializer, align 16
@intra_dc_precision = common global i32 0, align 4
@picture_structure = common global i32 0, align 4
@top_field_first = common global i32 0, align 4
@frame_pred_frame_dct = common global i32 0, align 4
@concealment_motion_vectors = common global i32 0, align 4
@intra_vlc_format = common global i32 0, align 4
@repeat_first_field = common global i32 0, align 4
@chroma_420_type = common global i32 0, align 4
@progressive_frame = common global i32 0, align 4
@composite_display_flag = common global i32 0, align 4
@v_axis = common global i32 0, align 4
@field_sequence = common global i32 0, align 4
@sub_carrier = common global i32 0, align 4
@burst_amplitude = common global i32 0, align 4
@sub_carrier_phase = common global i32 0, align 4
@frame_center_horizontal_offset = common global [3 x i32] zeroinitializer, align 4
@frame_center_vertical_offset = common global [3 x i32] zeroinitializer, align 4
@layer_id = common global i32 0, align 4
@lower_layer_prediction_horizontal_size = common global i32 0, align 4
@lower_layer_prediction_vertical_size = common global i32 0, align 4
@horizontal_subsampling_factor_m = common global i32 0, align 4
@horizontal_subsampling_factor_n = common global i32 0, align 4
@vertical_subsampling_factor_m = common global i32 0, align 4
@vertical_subsampling_factor_n = common global i32 0, align 4
@lower_layer_temporal_reference = common global i32 0, align 4
@lower_layer_horizontal_offset = common global i32 0, align 4
@lower_layer_vertical_offset = common global i32 0, align 4
@spatial_temporal_weight_code_table_index = common global i32 0, align 4
@lower_layer_progressive_frame = common global i32 0, align 4
@lower_layer_deinterlaced_field_select = common global i32 0, align 4
@copyright_flag = common global i32 0, align 4
@copyright_identifier = common global i32 0, align 4
@original_or_copy = common global i32 0, align 4
@copyright_number_1 = common global i32 0, align 4
@copyright_number_2 = common global i32 0, align 4
@copyright_number_3 = common global i32 0, align 4
@drop_flag = common global i32 0, align 4
@hour = common global i32 0, align 4
@minute = common global i32 0, align 4
@sec = common global i32 0, align 4
@frame = common global i32 0, align 4
@closed_gop = common global i32 0, align 4
@broken_link = common global i32 0, align 4
@Decode_Layer = common global i32 0, align 4
@global_MBA = common global i32 0, align 4
@global_pic = common global i32 0, align 4
@True_Framenum = common global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Clip[] malloc failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0A%s, %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [1195 x i8] c"Usage:  mpeg2decode {options}\0AOptions: -b  file  main bitstream (base or spatial enhancement layer)\0A         -cn file  conformance report (n: level)\0A         -e  file  enhancement layer bitstream (SNR or Data Partitioning)\0A         -f        store/display interlaced video in frame format\0A         -g        concatenated file format for substitution method (-x)\0A         -in file  information & statistics report  (n: level)\0A         -l  file  file name pattern for lower layer sequence\0A                   (for spatial scalability)\0A         -on file  output format (0:YUV 1:SIF 2:TGA 3:PPM 4:X11 5:X11HiQ)\0A         -q        disable warnings to stderr\0A         -r        use double precision reference IDCT\0A         -t        enable low level tracing to stdout\0A         -u  file  print user_data to stdio or file\0A         -vn       verbose output (n: level)\0A         -x  file  filename pattern of picture substitution sequence\0A\0AFile patterns:  for sequential filenames, \22printf\22 style, e.g. rec%%d\0A                 or rec%%d%%c for fieldwise storage\0ALevels:        0:none 1:sequence 2:picture 3:slice 4:macroblock 5:block\0A\0AExample:       mpeg2decode -b bitstream.mpg -f -r -o0 rec%%d\0A         \0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"ERROR: -b must be followed the main bitstream filename\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"This program not compiled for Verify_Flag option\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"ERROR: -e must be followed by filename\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"WARNING: This program not compiled for -i option\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"ERROR: -l must be followed by filename\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"ERROR: -o must be followed by filename\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"WARNING: This program not compiled for -t option\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"This program not compiled for -v option\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"ERROR: -x must be followed by filename\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"undefined option -%c ignored. Exiting program\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"There must be a main bitstream specified (-b filename)\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"streams out of sync\0A\00", align 1
@Initialize_Sequence.Table_6_20 = internal global [3 x i32] [i32 6, i32 8, i32 12], align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"unsupported scalability mode\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"backward_reference_frame[] malloc failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"forward_reference_frame[] malloc failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"auxframe[] malloc failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"substitute_frame[] malloc failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"llframe0 malloc failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"llframe1 malloc failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"lltmp malloc failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %code = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  call void @Clear_Options()
  %2 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %3 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  call void @Process_Options(i32 %2, i8** %3)
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !6
  %4 = load i8*, i8** @Main_Bitstream_Filename, align 8, !tbaa !6
  %call = call i32 (i8*, i32, ...) @"\01_open"(i8* %4, i32 0)
  store i32 %call, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 4, !tbaa !8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %6 = load i8*, i8** @Main_Bitstream_Filename, align 8, !tbaa !6
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8* %6)
  call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 4, !tbaa !8
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  call void @Initialize_Buffer()
  %call4 = call i32 @Show_Bits(i32 8)
  %cmp5 = icmp eq i32 %call4, 71
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.3
  %call7 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i32 0, i64 256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0))
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  call void @next_start_code()
  %call9 = call i32 @Show_Bits(i32 32)
  store i32 %call9, i32* %code, align 4, !tbaa !2
  %8 = load i32, i32* %code, align 4, !tbaa !2
  switch i32 %8, label %sw.default [
    i32 435, label %sw.epilog
    i32 442, label %sw.bb
    i32 480, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end.8
  store i32 1, i32* @System_Stream_Flag, align 4, !tbaa !2
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %if.end.8, %sw.bb
  store i32 1, i32* @System_Stream_Flag, align 4, !tbaa !2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  %call11 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i32 0, i64 256, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %if.end.8
  %9 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 4, !tbaa !8
  %call12 = call i64 @lseek(i32 %9, i64 0, i32 0)
  call void @Initialize_Buffer()
  br label %if.end.13

if.end.13:                                        ; preds = %sw.epilog, %if.end
  %10 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 4, !tbaa !8
  %cmp14 = icmp ne i32 %10, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %11 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 4, !tbaa !8
  %call16 = call i64 @lseek(i32 %11, i64 0, i32 0)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  call void @Initialize_Buffer()
  %12 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.17
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !6
  %13 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !6
  %call19 = call i32 (i8*, i32, ...) @"\01_open"(i8* %13, i32 0)
  store i32 %call19, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 0), align 4, !tbaa !8
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.then.18
  %14 = load i8*, i8** @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !6
  %call22 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0), i32 0, i64 256, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* %14)
  call void @Error(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @Error_Text, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.18
  call void @Initialize_Buffer()
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.17
  call void @Initialize_Decoder()
  %call25 = call i32 @Decode_Bitstream()
  store i32 %call25, i32* %ret, align 4, !tbaa !2
  %15 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 0), align 4, !tbaa !8
  %call26 = call i32 @"\01_close"(i32 %15)
  %16 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool27 = icmp ne i32 %16, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.24
  %17 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 0), align 4, !tbaa !8
  %call29 = call i32 @"\01_close"(i32 %17)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.24
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #5
  %19 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #5
  ret i32 0
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @Process_Options(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %LastArg = alloca i32, align 4
  %NextArg = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %LastArg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i32* %NextArg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @Version, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @Author, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1195 x i8], [1195 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %entry
  store i32 -1, i32* @Output_Type, align 4, !tbaa !2
  store i32 1, i32* %i, align 4, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %if.end.104, %if.end
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %sub = sub nsw i32 %6, %7
  %cmp3 = icmp eq i32 %sub, 1
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %LastArg, align 4, !tbaa !2
  %8 = load i32, i32* %LastArg, align 4, !tbaa !2
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %while.body
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %9, 1
  %idxprom = sext i32 %add to i64
  %10 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx5, align 1, !tbaa !10
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 45
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, i32* %NextArg, align 4, !tbaa !2
  br label %if.end.9

if.else:                                          ; preds = %while.body
  store i32 0, i32* %NextArg, align 4, !tbaa !2
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.4
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom10 = sext i32 %13 to i64
  %14 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx11 = getelementptr inbounds i8*, i8** %14, i64 %idxprom10
  %15 = load i8*, i8** %arrayidx11, align 8, !tbaa !6
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx12, align 1, !tbaa !10
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 45
  br i1 %cmp14, label %if.then.16, label %if.end.104

if.then.16:                                       ; preds = %if.end.9
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom17 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx18 = getelementptr inbounds i8*, i8** %18, i64 %idxprom17
  %19 = load i8*, i8** %arrayidx18, align 8, !tbaa !6
  %arrayidx19 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx19, align 1, !tbaa !10
  %conv20 = sext i8 %20 to i32
  %call21 = call i32 @toupper(i32 %conv20)
  switch i32 %call21, label %sw.default [
    i32 66, label %sw.bb
    i32 67, label %sw.bb.30
    i32 69, label %sw.bb.32
    i32 70, label %sw.bb.43
    i32 71, label %sw.bb.44
    i32 73, label %sw.bb.45
    i32 76, label %sw.bb.47
    i32 79, label %sw.bb.58
    i32 81, label %sw.bb.81
    i32 82, label %sw.bb.82
    i32 84, label %sw.bb.83
    i32 85, label %sw.bb.85
    i32 86, label %sw.bb.86
    i32 88, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %if.then.16
  store i32 1, i32* @Main_Bitstream_Flag, align 4, !tbaa !2
  %21 = load i32, i32* %NextArg, align 4, !tbaa !2
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %22 = load i32, i32* %LastArg, align 4, !tbaa !2
  %tobool23 = icmp ne i32 %22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %lor.lhs.false, %sw.bb
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.29

if.else.26:                                       ; preds = %lor.lhs.false
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  %idxprom27 = sext i32 %inc to i64
  %24 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx28 = getelementptr inbounds i8*, i8** %24, i64 %idxprom27
  %25 = load i8*, i8** %arrayidx28, align 8, !tbaa !6
  store i8* %25, i8** @Main_Bitstream_Filename, align 8, !tbaa !6
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.24
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.16
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.then.16
  store i32 1, i32* @Two_Streams, align 4, !tbaa !2
  %26 = load i32, i32* %NextArg, align 4, !tbaa !2
  %tobool33 = icmp ne i32 %26, 0
  br i1 %tobool33, label %if.then.36, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %sw.bb.32
  %27 = load i32, i32* %LastArg, align 4, !tbaa !2
  %tobool35 = icmp ne i32 %27, 0
  br i1 %tobool35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %lor.lhs.false.34, %sw.bb.32
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.else.38:                                       ; preds = %lor.lhs.false.34
  %28 = load i32, i32* %i, align 4, !tbaa !2
  %inc39 = add nsw i32 %28, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !2
  %idxprom40 = sext i32 %inc39 to i64
  %29 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx41 = getelementptr inbounds i8*, i8** %29, i64 %idxprom40
  %30 = load i8*, i8** %arrayidx41, align 8, !tbaa !6
  store i8* %30, i8** @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !6
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.then.16
  store i32 1, i32* @Frame_Store_Flag, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then.16
  store i32 1, i32* @Big_Picture_Flag, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.45:                                         ; preds = %if.then.16
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0))
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.then.16
  store i32 1, i32* @Spatial_Flag, align 4, !tbaa !2
  %31 = load i32, i32* %NextArg, align 4, !tbaa !2
  %tobool48 = icmp ne i32 %31, 0
  br i1 %tobool48, label %if.then.51, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %sw.bb.47
  %32 = load i32, i32* %LastArg, align 4, !tbaa !2
  %tobool50 = icmp ne i32 %32, 0
  br i1 %tobool50, label %if.then.51, label %if.else.53

if.then.51:                                       ; preds = %lor.lhs.false.49, %sw.bb.47
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.else.53:                                       ; preds = %lor.lhs.false.49
  %33 = load i32, i32* %i, align 4, !tbaa !2
  %inc54 = add nsw i32 %33, 1
  store i32 %inc54, i32* %i, align 4, !tbaa !2
  %idxprom55 = sext i32 %inc54 to i64
  %34 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx56 = getelementptr inbounds i8*, i8** %34, i64 %idxprom55
  %35 = load i8*, i8** %arrayidx56, align 8, !tbaa !6
  store i8* %35, i8** @Lower_Layer_Picture_Filename, align 8, !tbaa !6
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.53
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.then.16
  %36 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom59 = sext i32 %36 to i64
  %37 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx60 = getelementptr inbounds i8*, i8** %37, i64 %idxprom59
  %38 = load i8*, i8** %arrayidx60, align 8, !tbaa !6
  %arrayidx61 = getelementptr inbounds i8, i8* %38, i64 2
  %call62 = call i32 @atoi(i8* %arrayidx61)
  store i32 %call62, i32* @Output_Type, align 4, !tbaa !2
  %39 = load i32, i32* @Output_Type, align 4, !tbaa !2
  %cmp63 = icmp eq i32 %39, 4
  br i1 %cmp63, label %if.then.68, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %sw.bb.58
  %40 = load i32, i32* @Output_Type, align 4, !tbaa !2
  %cmp66 = icmp eq i32 %40, 5
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %lor.lhs.false.65, %sw.bb.58
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8** @Output_Picture_Filename, align 8, !tbaa !6
  br label %if.end.80

if.else.69:                                       ; preds = %lor.lhs.false.65
  %41 = load i32, i32* %NextArg, align 4, !tbaa !2
  %tobool70 = icmp ne i32 %41, 0
  br i1 %tobool70, label %if.then.73, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.else.69
  %42 = load i32, i32* %LastArg, align 4, !tbaa !2
  %tobool72 = icmp ne i32 %42, 0
  br i1 %tobool72, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %lor.lhs.false.71, %if.else.69
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.else.75:                                       ; preds = %lor.lhs.false.71
  %43 = load i32, i32* %i, align 4, !tbaa !2
  %inc76 = add nsw i32 %43, 1
  store i32 %inc76, i32* %i, align 4, !tbaa !2
  %idxprom77 = sext i32 %inc76 to i64
  %44 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx78 = getelementptr inbounds i8*, i8** %44, i64 %idxprom77
  %45 = load i8*, i8** %arrayidx78, align 8, !tbaa !6
  store i8* %45, i8** @Output_Picture_Filename, align 8, !tbaa !6
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.68
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.then.16
  store i32 1, i32* @Quiet_Flag, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.then.16
  store i32 1, i32* @Reference_IDCT_Flag, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.83:                                         ; preds = %if.then.16
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.then.16
  store i32 1, i32* @User_Data_Flag, align 4, !tbaa !2
  br label %sw.bb.86

sw.bb.86:                                         ; preds = %if.then.16, %sw.bb.85
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.then.16
  store i32 1, i32* @Ersatz_Flag, align 4, !tbaa !2
  %46 = load i32, i32* %NextArg, align 4, !tbaa !2
  %tobool89 = icmp ne i32 %46, 0
  br i1 %tobool89, label %if.then.92, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %sw.bb.88
  %47 = load i32, i32* %LastArg, align 4, !tbaa !2
  %tobool91 = icmp ne i32 %47, 0
  br i1 %tobool91, label %if.then.92, label %if.else.94

if.then.92:                                       ; preds = %lor.lhs.false.90, %sw.bb.88
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0))
  call void @exit(i32 -1) #6
  unreachable

if.else.94:                                       ; preds = %lor.lhs.false.90
  %48 = load i32, i32* %i, align 4, !tbaa !2
  %inc95 = add nsw i32 %48, 1
  store i32 %inc95, i32* %i, align 4, !tbaa !2
  %idxprom96 = sext i32 %inc95 to i64
  %49 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx97 = getelementptr inbounds i8*, i8** %49, i64 %idxprom96
  %50 = load i8*, i8** %arrayidx97, align 8, !tbaa !6
  store i8* %50, i8** @Substitute_Picture_Filename, align 8, !tbaa !6
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.94
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.16
  %51 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %52 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom99 = sext i32 %52 to i64
  %53 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx100 = getelementptr inbounds i8*, i8** %53, i64 %idxprom99
  %54 = load i8*, i8** %arrayidx100, align 8, !tbaa !6
  %arrayidx101 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx101, align 1, !tbaa !10
  %conv102 = sext i8 %55 to i32
  %call103 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i32 0, i32 0), i32 %conv102)
  call void @exit(i32 -1) #6
  unreachable

sw.epilog:                                        ; preds = %if.end.98, %sw.bb.86, %sw.bb.83, %sw.bb.82, %sw.bb.81, %if.end.80, %if.end.57, %sw.bb.45, %sw.bb.44, %sw.bb.43, %if.end.42, %sw.bb.30, %if.end.29
  br label %if.end.104

if.end.104:                                       ; preds = %sw.epilog, %if.end.9
  %56 = load i32, i32* %i, align 4, !tbaa !2
  %inc105 = add nsw i32 %56, 1
  store i32 %inc105, i32* %i, align 4, !tbaa !2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = load i32, i32* @Main_Bitstream_Flag, align 4, !tbaa !2
  %cmp106 = icmp ne i32 %57, 1
  br i1 %cmp106, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %while.end
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %while.end
  %58 = load i32, i32* @Output_Type, align 4, !tbaa !2
  %cmp111 = icmp eq i32 %58, 4
  br i1 %cmp111, label %land.lhs.true, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %if.end.110
  %59 = load i32, i32* @Output_Type, align 4, !tbaa !2
  %cmp114 = icmp eq i32 %59, 5
  br i1 %cmp114, label %land.lhs.true, label %if.else.118

land.lhs.true:                                    ; preds = %lor.lhs.false.113, %if.end.110
  %60 = load i32, i32* @Frame_Store_Flag, align 4, !tbaa !2
  %tobool116 = icmp ne i32 %60, 0
  br i1 %tobool116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %land.lhs.true
  store i32 1, i32* @Display_Progressive_Flag, align 4, !tbaa !2
  br label %if.end.119

if.else.118:                                      ; preds = %land.lhs.true, %lor.lhs.false.113
  store i32 0, i32* @Display_Progressive_Flag, align 4, !tbaa !2
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.118, %if.then.117
  %61 = load i32, i32* @Output_Type, align 4, !tbaa !2
  %cmp120 = icmp eq i32 %61, -1
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.119
  store i32 9, i32* @Output_Type, align 4, !tbaa !2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8** @Output_Picture_Filename, align 8, !tbaa !6
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.119
  %62 = bitcast i32* %NextArg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #5
  %63 = bitcast i32* %LastArg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #5
  %64 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #5
  ret void
}

declare i32 @"\01_open"(i8*, i32, ...) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare void @Initialize_Buffer() #2

declare i32 @Show_Bits(i32) #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind ssp uwtable
define void @Error(i8* %text) #0 {
entry:
  %text.addr = alloca i8*, align 8
  store i8* %text, i8** %text.addr, align 8, !tbaa !6
  %0 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %1 = load i8*, i8** %text.addr, align 8, !tbaa !6
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %0, i8* %1)
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @next_start_code() #2

declare i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind ssp uwtable
define internal void @Initialize_Decoder() #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %call = call i8* @malloc(i64 1024)
  store i8* %call, i8** @Clip, align 8, !tbaa !6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @Error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @Clip, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 384
  store i8* %add.ptr, i8** @Clip, align 8, !tbaa !6
  store i32 -384, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, 640
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.5

cond.false:                                       ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %cmp2 = icmp sgt i32 %4, 255
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.false
  br label %cond.end

cond.false.4:                                     ; preds = %cond.false
  %5 = load i32, i32* %i, align 4, !tbaa !2
  br label %cond.end

cond.end:                                         ; preds = %cond.false.4, %cond.true.3
  %cond = phi i32 [ 255, %cond.true.3 ], [ %5, %cond.false.4 ]
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.end, %cond.true
  %cond6 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  %conv = trunc i32 %cond6 to i8
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** @Clip, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %cond.end.5
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* @Reference_IDCT_Flag, align 4, !tbaa !2
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.end
  call void @Initialize_Reference_IDCT()
  br label %if.end.9

if.else:                                          ; preds = %for.end
  call void @Initialize_Fast_IDCT()
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #5
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @Decode_Bitstream() #0 {
entry:
  %ret = alloca i32, align 4
  %Bitstream_Framenum = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %Bitstream_Framenum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  store i32 0, i32* %Bitstream_Framenum, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %call = call i32 @Headers()
  store i32 %call, i32* %ret, align 4, !tbaa !2
  %2 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %call1 = call i32 @video_sequence(i32* %Bitstream_Framenum)
  store i32 %call1, i32* %ret, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %for.cond
  %3 = load i32, i32* %ret, align 4, !tbaa !2
  %4 = bitcast i32* %Bitstream_Framenum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #5
  %5 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #5
  ret i32 %3

if.end:                                           ; preds = %if.then
  br label %for.cond
}

declare i32 @"\01_close"(i32) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @Print_Bits(i32 %code, i32 %bits, i32 %len) #0 {
entry:
  %code.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4, !tbaa !2
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !2
  store i32 %len, i32* %len.addr, align 4, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !2
  %2 = load i32, i32* %len.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %code.addr, align 4, !tbaa !2
  %4 = load i32, i32* %bits.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %4, 1
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %sub1 = sub nsw i32 %sub, %5
  %shr = ashr i32 %3, %sub1
  %and = and i32 %shr, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 %and)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #5
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i8* @malloc(i64) #2

declare void @Initialize_Reference_IDCT() #2

declare void @Initialize_Fast_IDCT() #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally i32 @toupper(i32 %_c) #4 {
entry:
  %_c.addr = alloca i32, align 4
  store i32 %_c, i32* %_c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %_c.addr, align 4, !tbaa !2
  %call = call i32 @__toupper(i32 %0)
  ret i32 %call
}

declare i32 @atoi(i8*) #2

declare i32 @__toupper(i32) #2

; Function Attrs: nounwind ssp uwtable
define internal i32 @Headers() #0 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !6
  %call = call i32 @Get_Hdr()
  store i32 %call, i32* %ret, align 4, !tbaa !2
  %1 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  store %struct.layer_data* @enhan, %struct.layer_data** @ld, align 8, !tbaa !6
  %call1 = call i32 @Get_Hdr()
  %2 = load i32, i32* %ret, align 4, !tbaa !2
  %cmp = icmp ne i32 %call1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* @Quiet_Flag, align 4, !tbaa !2
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  store %struct.layer_data* @base, %struct.layer_data** @ld, align 8, !tbaa !6
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %5 = load i32, i32* %ret, align 4, !tbaa !2
  %6 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #5
  ret i32 %5
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @video_sequence(i32* %Bitstream_Framenumber) #0 {
entry:
  %Bitstream_Framenumber.addr = alloca i32*, align 8
  %Bitstream_Framenum = alloca i32, align 4
  %Sequence_Framenum = alloca i32, align 4
  %Return_Value = alloca i32, align 4
  store i32* %Bitstream_Framenumber, i32** %Bitstream_Framenumber.addr, align 8, !tbaa !6
  %0 = bitcast i32* %Bitstream_Framenum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %Sequence_Framenum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i32* %Return_Value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %3 = load i32*, i32** %Bitstream_Framenumber.addr, align 8, !tbaa !6
  %4 = load i32, i32* %3, align 4, !tbaa !2
  store i32 %4, i32* %Bitstream_Framenum, align 4, !tbaa !2
  store i32 0, i32* %Sequence_Framenum, align 4, !tbaa !2
  call void @Initialize_Sequence()
  %5 = load i32, i32* %Bitstream_Framenum, align 4, !tbaa !2
  %6 = load i32, i32* %Sequence_Framenum, align 4, !tbaa !2
  call void @Decode_Picture(i32 %5, i32 %6)
  %7 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %Bitstream_Framenum, align 4, !tbaa !2
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %Bitstream_Framenum, align 4, !tbaa !2
  %9 = load i32, i32* %Sequence_Framenum, align 4, !tbaa !2
  %inc1 = add nsw i32 %9, 1
  store i32 %inc1, i32* %Sequence_Framenum, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %call = call i32 @Headers()
  store i32 %call, i32* %Return_Value, align 4, !tbaa !2
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %Bitstream_Framenum, align 4, !tbaa !2
  %11 = load i32, i32* %Sequence_Framenum, align 4, !tbaa !2
  call void @Decode_Picture(i32 %10, i32 %11)
  %12 = load i32, i32* @Second_Field, align 4, !tbaa !2
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.end.7, label %if.then.4

if.then.4:                                        ; preds = %while.body
  %13 = load i32, i32* %Bitstream_Framenum, align 4, !tbaa !2
  %inc5 = add nsw i32 %13, 1
  store i32 %inc5, i32* %Bitstream_Framenum, align 4, !tbaa !2
  %14 = load i32, i32* %Sequence_Framenum, align 4, !tbaa !2
  %inc6 = add nsw i32 %14, 1
  store i32 %inc6, i32* %Sequence_Framenum, align 4, !tbaa !2
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %Sequence_Framenum, align 4, !tbaa !2
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.end
  %16 = load i32, i32* %Bitstream_Framenum, align 4, !tbaa !2
  call void @Output_Last_Frame_of_Sequence(i32 %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %while.end
  call void @Deinitialize_Sequence()
  %17 = load i32, i32* %Bitstream_Framenum, align 4, !tbaa !2
  %18 = load i32*, i32** %Bitstream_Framenumber.addr, align 8, !tbaa !6
  store i32 %17, i32* %18, align 4, !tbaa !2
  %19 = load i32, i32* %Return_Value, align 4, !tbaa !2
  %20 = bitcast i32* %Return_Value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #5
  %21 = bitcast i32* %Sequence_Framenum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #5
  %22 = bitcast i32* %Bitstream_Framenum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #5
  ret i32 %19
}

declare i32 @Get_Hdr() #2

; Function Attrs: nounwind ssp uwtable
define internal void @Initialize_Sequence() #0 {
entry:
  %cc = alloca i32, align 4
  %size = alloca i32, align 4
  %0 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = load i32, i32* @Two_Streams, align 4, !tbaa !2
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @enhan, i32 0, i32 17), align 4, !tbaa !11
  %cmp = icmp ne i32 %3, 3
  br i1 %cmp, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !11
  %cmp2 = icmp ne i32 %4, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  call void @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.1, %land.lhs.true, %entry
  %5 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 4, !tbaa !12
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* @progressive_sequence, align 4, !tbaa !2
  store i32 1, i32* @progressive_frame, align 4, !tbaa !2
  store i32 3, i32* @picture_structure, align 4, !tbaa !2
  store i32 1, i32* @frame_pred_frame_dct, align 4, !tbaa !2
  store i32 1, i32* @chroma_format, align 4, !tbaa !2
  store i32 5, i32* @matrix_coefficients, align 4, !tbaa !2
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %6 = load i32, i32* @horizontal_size, align 4, !tbaa !2
  %add = add nsw i32 %6, 15
  %div = sdiv i32 %add, 16
  store i32 %div, i32* @mb_width, align 4, !tbaa !2
  %7 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 4, !tbaa !12
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %land.lhs.true.7, label %cond.false

land.lhs.true.7:                                  ; preds = %if.end.5
  %8 = load i32, i32* @progressive_sequence, align 4, !tbaa !2
  %tobool8 = icmp ne i32 %8, 0
  br i1 %tobool8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.7
  %9 = load i32, i32* @vertical_size, align 4, !tbaa !2
  %add9 = add nsw i32 %9, 31
  %div10 = sdiv i32 %add9, 32
  %mul = mul nsw i32 2, %div10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7, %if.end.5
  %10 = load i32, i32* @vertical_size, align 4, !tbaa !2
  %add11 = add nsw i32 %10, 15
  %div12 = sdiv i32 %add11, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %div12, %cond.false ]
  store i32 %cond, i32* @mb_height, align 4, !tbaa !2
  %11 = load i32, i32* @mb_width, align 4, !tbaa !2
  %mul13 = mul nsw i32 16, %11
  store i32 %mul13, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %12 = load i32, i32* @mb_height, align 4, !tbaa !2
  %mul14 = mul nsw i32 16, %12
  store i32 %mul14, i32* @Coded_Picture_Height, align 4, !tbaa !2
  %13 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp15 = icmp eq i32 %13, 3
  br i1 %cmp15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  %14 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end
  %15 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %shr = ashr i32 %15, 1
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi i32 [ %14, %cond.true.16 ], [ %shr, %cond.false.17 ]
  store i32 %cond19, i32* @Chroma_Width, align 4, !tbaa !2
  %16 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %cmp20 = icmp ne i32 %16, 1
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.18
  %17 = load i32, i32* @Coded_Picture_Height, align 4, !tbaa !2
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end.18
  %18 = load i32, i32* @Coded_Picture_Height, align 4, !tbaa !2
  %shr23 = ashr i32 %18, 1
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi i32 [ %17, %cond.true.21 ], [ %shr23, %cond.false.22 ]
  store i32 %cond25, i32* @Chroma_Height, align 4, !tbaa !2
  %19 = load i32, i32* @chroma_format, align 4, !tbaa !2
  %sub = sub nsw i32 %19, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @Initialize_Sequence.Table_6_20, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4, !tbaa !2
  store i32 %20, i32* @block_count, align 4, !tbaa !2
  store i32 0, i32* %cc, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.24
  %21 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp26 = icmp slt i32 %21, 3
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp27 = icmp eq i32 %22, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.body
  %23 = load i32, i32* @Coded_Picture_Width, align 4, !tbaa !2
  %24 = load i32, i32* @Coded_Picture_Height, align 4, !tbaa !2
  %mul29 = mul nsw i32 %23, %24
  store i32 %mul29, i32* %size, align 4, !tbaa !2
  br label %if.end.31

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* @Chroma_Width, align 4, !tbaa !2
  %26 = load i32, i32* @Chroma_Height, align 4, !tbaa !2
  %mul30 = mul nsw i32 %25, %26
  store i32 %mul30, i32* %size, align 4, !tbaa !2
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.28
  %27 = load i32, i32* %size, align 4, !tbaa !2
  %conv = sext i32 %27 to i64
  %call = call i8* @malloc(i64 %conv)
  %28 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom32
  store i8* %call, i8** %arrayidx33, align 8, !tbaa !6
  %tobool34 = icmp ne i8* %call, null
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.end.31
  call void @Error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.31
  %29 = load i32, i32* %size, align 4, !tbaa !2
  %conv37 = sext i32 %29 to i64
  %call38 = call i8* @malloc(i64 %conv37)
  %30 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i64 %idxprom39
  store i8* %call38, i8** %arrayidx40, align 8, !tbaa !6
  %tobool41 = icmp ne i8* %call38, null
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.36
  call void @Error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.36
  %31 = load i32, i32* %size, align 4, !tbaa !2
  %conv44 = sext i32 %31 to i64
  %call45 = call i8* @malloc(i64 %conv44)
  %32 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom46 = sext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i32 0, i64 %idxprom46
  store i8* %call45, i8** %arrayidx47, align 8, !tbaa !6
  %tobool48 = icmp ne i8* %call45, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.43
  call void @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.43
  %33 = load i32, i32* @Ersatz_Flag, align 4, !tbaa !2
  %tobool51 = icmp ne i32 %33, 0
  br i1 %tobool51, label %if.then.52, label %if.end.60

if.then.52:                                       ; preds = %if.end.50
  %34 = load i32, i32* %size, align 4, !tbaa !2
  %conv53 = sext i32 %34 to i64
  %call54 = call i8* @malloc(i64 %conv53)
  %35 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [3 x i8*], [3 x i8*]* @substitute_frame, i32 0, i64 %idxprom55
  store i8* %call54, i8** %arrayidx56, align 8, !tbaa !6
  %tobool57 = icmp ne i8* %call54, null
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.then.52
  call void @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.then.52
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.50
  %36 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !11
  %cmp61 = icmp eq i32 %36, 2
  br i1 %cmp61, label %if.then.63, label %if.end.86

if.then.63:                                       ; preds = %if.end.60
  %37 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4, !tbaa !2
  %38 = load i32, i32* @lower_layer_prediction_vertical_size, align 4, !tbaa !2
  %mul64 = mul nsw i32 %37, %38
  %39 = load i32, i32* %cc, align 4, !tbaa !2
  %tobool65 = icmp ne i32 %39, 0
  %cond66 = select i1 %tobool65, i32 4, i32 1
  %div67 = sdiv i32 %mul64, %cond66
  %conv68 = sext i32 %div67 to i64
  %call69 = call i8* @malloc(i64 %conv68)
  %40 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom70 = sext i32 %40 to i64
  %arrayidx71 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i32 0, i64 %idxprom70
  store i8* %call69, i8** %arrayidx71, align 8, !tbaa !6
  %tobool72 = icmp ne i8* %call69, null
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %if.then.63
  call void @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.then.63
  %41 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4, !tbaa !2
  %42 = load i32, i32* @lower_layer_prediction_vertical_size, align 4, !tbaa !2
  %mul75 = mul nsw i32 %41, %42
  %43 = load i32, i32* %cc, align 4, !tbaa !2
  %tobool76 = icmp ne i32 %43, 0
  %cond77 = select i1 %tobool76, i32 4, i32 1
  %div78 = sdiv i32 %mul75, %cond77
  %conv79 = sext i32 %div78 to i64
  %call80 = call i8* @malloc(i64 %conv79)
  %44 = load i32, i32* %cc, align 4, !tbaa !2
  %idxprom81 = sext i32 %44 to i64
  %arrayidx82 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i32 0, i64 %idxprom81
  store i8* %call80, i8** %arrayidx82, align 8, !tbaa !6
  %tobool83 = icmp ne i8* %call80, null
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %if.end.74
  call void @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.74
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.60
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %45 = load i32, i32* %cc, align 4, !tbaa !2
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %cc, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !11
  %cmp87 = icmp eq i32 %46, 2
  br i1 %cmp87, label %if.then.89, label %if.end.99

if.then.89:                                       ; preds = %for.end
  %47 = load i32, i32* @lower_layer_prediction_horizontal_size, align 4, !tbaa !2
  %48 = load i32, i32* @lower_layer_prediction_vertical_size, align 4, !tbaa !2
  %49 = load i32, i32* @vertical_subsampling_factor_n, align 4, !tbaa !2
  %mul90 = mul nsw i32 %48, %49
  %50 = load i32, i32* @vertical_subsampling_factor_m, align 4, !tbaa !2
  %div91 = sdiv i32 %mul90, %50
  %mul92 = mul nsw i32 %47, %div91
  %conv93 = sext i32 %mul92 to i64
  %mul94 = mul i64 %conv93, 2
  %call95 = call i8* @malloc(i64 %mul94)
  %51 = bitcast i8* %call95 to i16*
  store i16* %51, i16** @lltmp, align 8, !tbaa !6
  %tobool96 = icmp ne i16* %51, null
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %if.then.89
  call void @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.then.89
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %for.end
  %52 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #5
  %53 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #5
  ret void
}

declare void @Decode_Picture(i32, i32) #2

declare void @Output_Last_Frame_of_Sequence(i32) #2

; Function Attrs: nounwind ssp uwtable
define internal void @Deinitialize_Sequence() #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #5
  store i32 0, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 16), align 4, !tbaa !12
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* @backward_reference_frame, i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  call void @free(i8* %3)
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [3 x i8*], [3 x i8*]* @forward_reference_frame, i32 0, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8, !tbaa !6
  call void @free(i8* %5)
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [3 x i8*], [3 x i8*]* @auxframe, i32 0, i64 %idxprom3
  %7 = load i8*, i8** %arrayidx4, align 8, !tbaa !6
  call void @free(i8* %7)
  %8 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !11
  %cmp5 = icmp eq i32 %8, 2
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe0, i32 0, i64 %idxprom6
  %10 = load i8*, i8** %arrayidx7, align 8, !tbaa !6
  call void @free(i8* %10)
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [3 x i8*], [3 x i8*]* @llframe1, i32 0, i64 %idxprom8
  %12 = load i8*, i8** %arrayidx9, align 8, !tbaa !6
  call void @free(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* getelementptr inbounds (%struct.layer_data, %struct.layer_data* @base, i32 0, i32 17), align 4, !tbaa !11
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  %15 = load i16*, i16** @lltmp, align 8, !tbaa !6
  %16 = bitcast i16* %15 to i8*
  call void @free(i8* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.end
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #5
  ret void
}

declare void @free(i8*) #2

; Function Attrs: nounwind ssp uwtable
define internal void @Clear_Options() #0 {
entry:
  store i32 0, i32* @Verbose_Flag, align 4, !tbaa !2
  store i32 0, i32* @Output_Type, align 4, !tbaa !2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8** @Output_Picture_Filename, align 8, !tbaa !6
  store i32 0, i32* @hiQdither, align 4, !tbaa !2
  store i32 0, i32* @Output_Type, align 4, !tbaa !2
  store i32 0, i32* @Frame_Store_Flag, align 4, !tbaa !2
  store i32 0, i32* @Spatial_Flag, align 4, !tbaa !2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8** @Lower_Layer_Picture_Filename, align 8, !tbaa !6
  store i32 0, i32* @Reference_IDCT_Flag, align 4, !tbaa !2
  store i32 0, i32* @Trace_Flag, align 4, !tbaa !2
  store i32 0, i32* @Quiet_Flag, align 4, !tbaa !2
  store i32 0, i32* @Ersatz_Flag, align 4, !tbaa !2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8** @Substitute_Picture_Filename, align 8, !tbaa !6
  store i32 0, i32* @Two_Streams, align 4, !tbaa !2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8** @Enhancement_Layer_Bitstream_Filename, align 8, !tbaa !6
  store i32 0, i32* @Big_Picture_Flag, align 4, !tbaa !2
  store i32 0, i32* @Main_Bitstream_Flag, align 4, !tbaa !2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8** @Main_Bitstream_Filename, align 8, !tbaa !6
  store i32 0, i32* @Verify_Flag, align 4, !tbaa !2
  store i32 0, i32* @Stats_Flag, align 4, !tbaa !2
  store i32 0, i32* @User_Data_Flag, align 4, !tbaa !2
  ret void
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!8 = !{!9, !3, i64 0}
!9 = !{!"layer_data", !3, i64 0, !4, i64 4, !7, i64 2056, !4, i64 2064, !3, i64 2080, !7, i64 2088, !3, i64 2096, !3, i64 2100, !4, i64 2104, !4, i64 2360, !4, i64 2616, !4, i64 2872, !3, i64 3128, !3, i64 3132, !3, i64 3136, !3, i64 3140, !3, i64 3144, !3, i64 3148, !3, i64 3152, !3, i64 3156, !3, i64 3160, !3, i64 3164, !3, i64 3168, !3, i64 3172, !4, i64 3176}
!10 = !{!4, !4, i64 0}
!11 = !{!9, !3, i64 3148}
!12 = !{!9, !3, i64 3144}
