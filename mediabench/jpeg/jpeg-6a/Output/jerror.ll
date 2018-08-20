; ModuleID = 'jerror.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@.str = private unnamed_addr constant [22 x i8] c"Bogus message code %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Sorry, there are legal restrictions on arithmetic coding\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ALIGN_TYPE is wrong, please fix\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"MAX_ALLOC_CHUNK is wrong, please fix\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Bogus buffer control mode\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid component ID %d in SOS\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"IDCT output block size %d not supported\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Bogus input colorspace\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Bogus JPEG colorspace\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bogus marker length\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Wrong JPEG library version: library is %d, caller expects %d\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Sampling factors too large for interleaved scan\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Invalid memory pool code %d\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Unsupported JPEG data precision %d\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters at scan script entry %d\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Bogus sampling factors\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Invalid scan script at entry %d\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Improper call to JPEG library in state %d\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Bogus virtual array access\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Buffer passed to JPEG library is too small\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Suspension not allowed here\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"CCIR601 sampling not implemented yet\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Too many color components: %d, max %d\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Unsupported color conversion request\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Bogus DAC index %d\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Bogus DAC value 0x%x\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Bogus DHT counts\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Bogus DHT index %d\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Bogus DQT index %d\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Empty JPEG image (DNL not supported)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Read from EMS failed\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Write to EMS failed\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Didn't expect more than one scan\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Input file read error\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Output file write error --- out of disk space?\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Fractional sampling not implemented yet\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Huffman code size table overflow\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Missing Huffman code table entry\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Maximum supported image dimension is %u pixels\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Empty input file\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Premature end of input file\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"Cannot transcode due to multiple use of quantization table %d\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Scan script does not transmit all data\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Invalid color quantization mode change\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Not implemented yet\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"Requested feature was omitted at compile time\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Backing store not supported\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"JPEG datastream contains no image\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Insufficient memory (case %d)\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"Cannot quantize more than %d color components\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Failed to create temporary file %s\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Read failed on temporary file\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"Seek failed on temporary file\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"Application transferred too few scanlines\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Virtual array controller messed up\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"Image too wide for this implementation\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"Read from XMS failed\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Write to XMS failed\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.74 = private unnamed_addr constant [62 x i8] c"Caution: quantization tables are too coarse for baseline JPEG\00", align 1
@.str.75 = private unnamed_addr constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Define Restart Interval %u\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"Freed EMS handle %u\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"Obtained EMS handle %u\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"End Of Image\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"JFIF APP0 marker, density %dx%d  %d\00", align 1
@.str.87 = private unnamed_addr constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"Unknown JFIF minor revision number %d.%02d\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"    with %d x %d thumbnail image\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"Skipping marker 0x%02x, length %u\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"Unexpected marker 0x%02x\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 1
@.str.93 = private unnamed_addr constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"Quantizing to %d colors\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"Selected %d colors for quantization\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"RST%d\00", align 1
@.str.98 = private unnamed_addr constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 1
@.str.99 = private unnamed_addr constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Start of Image\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"Start Of Scan: %d components\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"Closed temporary file %s\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"Opened temporary file %s\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"Freed XMS handle %u\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"Obtained XMS handle %u\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 1
@.str.111 = private unnamed_addr constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 1
@.str.112 = private unnamed_addr constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 1
@.str.115 = private unnamed_addr constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"Premature end of JPEG file\00", align 1
@.str.117 = private unnamed_addr constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Application transferred too many scanlines\00", align 1
@jpeg_std_message_table = constant [121 x i8*] [i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.119, i32 0, i32 0), i8* null], align 16
@__stderrp = external global %struct.__sFILE*, align 8
@.str.120 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define %struct.jpeg_error_mgr* @jpeg_std_error(%struct.jpeg_error_mgr* %err) #0 {
entry:
  %err.addr = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_error_mgr* %err, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %0, i32 0, i32 0
  store void (%struct.jpeg_common_struct*)* @error_exit, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !6
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %emit_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 1
  store void (%struct.jpeg_common_struct*, i32)* @emit_message, void (%struct.jpeg_common_struct*, i32)** %emit_message, align 8, !tbaa !10
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %output_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 2
  store void (%struct.jpeg_common_struct*)* @output_message, void (%struct.jpeg_common_struct*)** %output_message, align 8, !tbaa !11
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %format_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 3
  store void (%struct.jpeg_common_struct*, i8*)* @format_message, void (%struct.jpeg_common_struct*, i8*)** %format_message, align 8, !tbaa !12
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %reset_error_mgr = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 4
  store void (%struct.jpeg_common_struct*)* @reset_error_mgr, void (%struct.jpeg_common_struct*)** %reset_error_mgr, align 8, !tbaa !13
  %5 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %5, i32 0, i32 7
  store i32 0, i32* %trace_level, align 4, !tbaa !14
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 8
  store i64 0, i64* %num_warnings, align 8, !tbaa !15
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 0, i32* %msg_code, align 4, !tbaa !16
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %jpeg_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 9
  store i8** getelementptr inbounds ([121 x i8*], [121 x i8*]* @jpeg_std_message_table, i32 0, i32 0), i8*** %jpeg_message_table, align 8, !tbaa !17
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %last_jpeg_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 10
  store i32 119, i32* %last_jpeg_message, align 4, !tbaa !18
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 11
  store i8** null, i8*** %addon_message_table, align 8, !tbaa !19
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 12
  store i32 0, i32* %first_addon_message, align 4, !tbaa !20
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 13
  store i32 0, i32* %last_addon_message, align 4, !tbaa !21
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err.addr, align 8, !tbaa !2
  ret %struct.jpeg_error_mgr* %13
}

; Function Attrs: nounwind ssp uwtable
define internal void @error_exit(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %output_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 2
  %2 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %output_message, align 8, !tbaa !11
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %2(%struct.jpeg_common_struct* %3)
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_destroy(%struct.jpeg_common_struct* %4)
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @emit_message(%struct.jpeg_common_struct* %cinfo, i32 %msg_level) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %msg_level.addr = alloca i32, align 4
  %err = alloca %struct.jpeg_error_mgr*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %msg_level, i32* %msg_level.addr, align 4, !tbaa !24
  %0 = bitcast %struct.jpeg_error_mgr** %err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 0
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !22
  store %struct.jpeg_error_mgr* %2, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %3 = load i32, i32* %msg_level.addr, align 4, !tbaa !24
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 8
  %5 = load i64, i64* %num_warnings, align 8, !tbaa !15
  %cmp2 = icmp eq i64 %5, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %trace_level = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 7
  %7 = load i32, i32* %trace_level, align 4, !tbaa !14
  %cmp3 = icmp sge i32 %7, 3
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %output_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i32 0, i32 2
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %output_message, align 8, !tbaa !11
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %9(%struct.jpeg_common_struct* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %lor.lhs.false
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %num_warnings5 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 8
  %12 = load i64, i64* %num_warnings5, align 8, !tbaa !15
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %num_warnings5, align 8, !tbaa !15
  br label %if.end.11

if.else:                                          ; preds = %entry
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %trace_level6 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 7
  %14 = load i32, i32* %trace_level6, align 4, !tbaa !14
  %15 = load i32, i32* %msg_level.addr, align 4, !tbaa !24
  %cmp7 = icmp sge i32 %14, %15
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %output_message9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 2
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %output_message9, align 8, !tbaa !11
  %18 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %17(%struct.jpeg_common_struct* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %19 = bitcast %struct.jpeg_error_mgr** %err to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @output_message(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %buffer = alloca [200 x i8], align 16
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast [200 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 200, i8* %0) #6
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 0
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %format_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %2, i32 0, i32 3
  %3 = load void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*, i8*)** %format_message, align 8, !tbaa !12
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  call void %3(%struct.jpeg_common_struct* %4, i8* %arraydecay)
  %5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %arraydecay1 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.120, i32 0, i32 0), i8* %arraydecay1)
  %6 = bitcast [200 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 200, i8* %6) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @format_message(%struct.jpeg_common_struct* %cinfo, i8* %buffer) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %buffer.addr = alloca i8*, align 8
  %err = alloca %struct.jpeg_error_mgr*, align 8
  %msg_code = alloca i32, align 4
  %msgtext = alloca i8*, align 8
  %msgptr = alloca i8*, align 8
  %ch = alloca i8, align 1
  %isstring = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !2
  %0 = bitcast %struct.jpeg_error_mgr** %err to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 0
  %2 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !22
  store %struct.jpeg_error_mgr* %2, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %3 = bitcast i32* %msg_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_code2 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 5
  %5 = load i32, i32* %msg_code2, align 4, !tbaa !16
  store i32 %5, i32* %msg_code, align 4, !tbaa !24
  %6 = bitcast i8** %msgtext to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #6
  store i8* null, i8** %msgtext, align 8, !tbaa !2
  %7 = bitcast i8** %msgptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #6
  call void @llvm.lifetime.start(i64 1, i8* %ch) #6
  %8 = bitcast i32* %isstring to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #6
  %9 = load i32, i32* %msg_code, align 4, !tbaa !24
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %msg_code, align 4, !tbaa !24
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %last_jpeg_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 10
  %12 = load i32, i32* %last_jpeg_message, align 4, !tbaa !18
  %cmp3 = icmp sle i32 %10, %12
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %msg_code, align 4, !tbaa !24
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %jpeg_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 9
  %15 = load i8**, i8*** %jpeg_message_table, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  store i8* %16, i8** %msgtext, align 8, !tbaa !2
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %addon_message_table = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 11
  %18 = load i8**, i8*** %addon_message_table, align 8, !tbaa !19
  %cmp4 = icmp ne i8** %18, null
  br i1 %cmp4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %if.else
  %19 = load i32, i32* %msg_code, align 4, !tbaa !24
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %first_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 12
  %21 = load i32, i32* %first_addon_message, align 4, !tbaa !20
  %cmp6 = icmp sge i32 %19, %21
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %22 = load i32, i32* %msg_code, align 4, !tbaa !24
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %last_addon_message = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 13
  %24 = load i32, i32* %last_addon_message, align 4, !tbaa !21
  %cmp8 = icmp sle i32 %22, %24
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.7
  %25 = load i32, i32* %msg_code, align 4, !tbaa !24
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %first_addon_message10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 12
  %27 = load i32, i32* %first_addon_message10, align 4, !tbaa !20
  %sub = sub nsw i32 %25, %27
  %idxprom11 = sext i32 %sub to i64
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %addon_message_table12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 11
  %29 = load i8**, i8*** %addon_message_table12, align 8, !tbaa !19
  %arrayidx13 = getelementptr inbounds i8*, i8** %29, i64 %idxprom11
  %30 = load i8*, i8** %arrayidx13, align 8, !tbaa !2
  store i8* %30, i8** %msgtext, align 8, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.7, %land.lhs.true.5, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then
  %31 = load i8*, i8** %msgtext, align 8, !tbaa !2
  %cmp15 = icmp eq i8* %31, null
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.14
  %32 = load i32, i32* %msg_code, align 4, !tbaa !24
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %32, i32* %arrayidx17, align 4, !tbaa !24
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %jpeg_message_table18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 9
  %35 = load i8**, i8*** %jpeg_message_table18, align 8, !tbaa !17
  %arrayidx19 = getelementptr inbounds i8*, i8** %35, i64 0
  %36 = load i8*, i8** %arrayidx19, align 8, !tbaa !2
  store i8* %36, i8** %msgtext, align 8, !tbaa !2
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end.14
  store i32 0, i32* %isstring, align 4, !tbaa !24
  %37 = load i8*, i8** %msgtext, align 8, !tbaa !2
  store i8* %37, i8** %msgptr, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %if.end.32, %if.end.20
  %38 = load i8*, i8** %msgptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %msgptr, align 8, !tbaa !2
  %39 = load i8, i8* %38, align 1, !tbaa !25
  store i8 %39, i8* %ch, align 1, !tbaa !25
  %conv = sext i8 %39 to i32
  %cmp21 = icmp ne i32 %conv, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i8, i8* %ch, align 1, !tbaa !25
  %conv23 = sext i8 %40 to i32
  %cmp24 = icmp eq i32 %conv23, 37
  br i1 %cmp24, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %while.body
  %41 = load i8*, i8** %msgptr, align 8, !tbaa !2
  %42 = load i8, i8* %41, align 1, !tbaa !25
  %conv27 = sext i8 %42 to i32
  %cmp28 = icmp eq i32 %conv27, 115
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  store i32 1, i32* %isstring, align 4, !tbaa !24
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.then.26
  br label %while.end

if.end.32:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.end.31, %while.cond
  %43 = load i32, i32* %isstring, align 4, !tbaa !24
  %tobool = icmp ne i32 %43, 0
  br i1 %tobool, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %while.end
  %44 = load i8*, i8** %buffer.addr, align 8, !tbaa !2
  %45 = load i8*, i8** %buffer.addr, align 8, !tbaa !2
  %46 = call i64 @llvm.objectsize.i64.p0i8(i8* %45, i1 false)
  %47 = load i8*, i8** %msgtext, align 8, !tbaa !2
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 6
  %s = bitcast %union.anon* %msg_parm34 to [80 x i8]*
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %s, i32 0, i32 0
  %call = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %44, i32 0, i64 %46, i8* %47, i8* %arraydecay)
  br label %if.end.61

if.else.35:                                       ; preds = %while.end
  %49 = load i8*, i8** %buffer.addr, align 8, !tbaa !2
  %50 = load i8*, i8** %buffer.addr, align 8, !tbaa !2
  %51 = call i64 @llvm.objectsize.i64.p0i8(i8* %50, i1 false)
  %52 = load i8*, i8** %msgtext, align 8, !tbaa !2
  %53 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %53, i32 0, i32 6
  %i37 = bitcast %union.anon* %msg_parm36 to [8 x i32]*
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %i37, i32 0, i64 0
  %54 = load i32, i32* %arrayidx38, align 4, !tbaa !24
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 6
  %i40 = bitcast %union.anon* %msg_parm39 to [8 x i32]*
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %i40, i32 0, i64 1
  %56 = load i32, i32* %arrayidx41, align 4, !tbaa !24
  %57 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %57, i32 0, i32 6
  %i43 = bitcast %union.anon* %msg_parm42 to [8 x i32]*
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* %i43, i32 0, i64 2
  %58 = load i32, i32* %arrayidx44, align 4, !tbaa !24
  %59 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %59, i32 0, i32 6
  %i46 = bitcast %union.anon* %msg_parm45 to [8 x i32]*
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %i46, i32 0, i64 3
  %60 = load i32, i32* %arrayidx47, align 4, !tbaa !24
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i32 0, i32 6
  %i49 = bitcast %union.anon* %msg_parm48 to [8 x i32]*
  %arrayidx50 = getelementptr inbounds [8 x i32], [8 x i32]* %i49, i32 0, i64 4
  %62 = load i32, i32* %arrayidx50, align 4, !tbaa !24
  %63 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %63, i32 0, i32 6
  %i52 = bitcast %union.anon* %msg_parm51 to [8 x i32]*
  %arrayidx53 = getelementptr inbounds [8 x i32], [8 x i32]* %i52, i32 0, i64 5
  %64 = load i32, i32* %arrayidx53, align 4, !tbaa !24
  %65 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm54 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %65, i32 0, i32 6
  %i55 = bitcast %union.anon* %msg_parm54 to [8 x i32]*
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %i55, i32 0, i64 6
  %66 = load i32, i32* %arrayidx56, align 4, !tbaa !24
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !2
  %msg_parm57 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 6
  %i58 = bitcast %union.anon* %msg_parm57 to [8 x i32]*
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %i58, i32 0, i64 7
  %68 = load i32, i32* %arrayidx59, align 4, !tbaa !24
  %call60 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %49, i32 0, i64 %51, i8* %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66, i32 %68)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.35, %if.then.33
  %69 = bitcast i32* %isstring to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #6
  call void @llvm.lifetime.end(i64 1, i8* %ch) #6
  %70 = bitcast i8** %msgptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #6
  %71 = bitcast i8** %msgtext to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #6
  %72 = bitcast i32* %msg_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #6
  %73 = bitcast %struct.jpeg_error_mgr** %err to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @reset_error_mgr(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !22
  %num_warnings = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 8
  store i64 0, i64* %num_warnings, align 8, !tbaa !15
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !22
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 5
  store i32 0, i32* %msg_code, align 4, !tbaa !16
  ret void
}

declare void @jpeg_destroy(%struct.jpeg_common_struct*) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind argmemonly }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 0}
!7 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !9, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!8 = !{!"int", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!7, !3, i64 8}
!11 = !{!7, !3, i64 16}
!12 = !{!7, !3, i64 24}
!13 = !{!7, !3, i64 32}
!14 = !{!7, !8, i64 124}
!15 = !{!7, !9, i64 128}
!16 = !{!7, !8, i64 40}
!17 = !{!7, !3, i64 136}
!18 = !{!7, !8, i64 144}
!19 = !{!7, !3, i64 152}
!20 = !{!7, !8, i64 160}
!21 = !{!7, !8, i64 164}
!22 = !{!23, !3, i64 0}
!23 = !{!"jpeg_common_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28}
!24 = !{!8, !8, i64 0}
!25 = !{!4, !4, i64 0}
