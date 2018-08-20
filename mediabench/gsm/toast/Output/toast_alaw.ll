; ModuleID = 'toast_alaw.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@in = external global %struct.__sFILE*, align 8
@a2s = internal global [256 x i16] [i16 5120, i16 -5376, i16 320, i16 -336, i16 20480, i16 -21504, i16 1280, i16 -1344, i16 2560, i16 -2688, i16 64, i16 -80, i16 10240, i16 -10752, i16 640, i16 -672, i16 7168, i16 -7424, i16 448, i16 -464, i16 28672, i16 -29696, i16 1792, i16 -1856, i16 3584, i16 -3712, i16 192, i16 -208, i16 14336, i16 -14848, i16 896, i16 -928, i16 4096, i16 -4352, i16 256, i16 -272, i16 16384, i16 -17408, i16 1024, i16 -1088, i16 2048, i16 -2176, i16 0, i16 -16, i16 8192, i16 -8704, i16 512, i16 -544, i16 6144, i16 -6400, i16 384, i16 -400, i16 24576, i16 -25600, i16 1536, i16 -1600, i16 3072, i16 -3200, i16 128, i16 -144, i16 12288, i16 -12800, i16 768, i16 -800, i16 5632, i16 -5888, i16 352, i16 -368, i16 22528, i16 -23552, i16 1408, i16 -1472, i16 2816, i16 -2944, i16 96, i16 -112, i16 11264, i16 -11776, i16 704, i16 -736, i16 7680, i16 -7936, i16 480, i16 -496, i16 30720, i16 -31744, i16 1920, i16 -1984, i16 3840, i16 -3968, i16 224, i16 -240, i16 15360, i16 -15872, i16 960, i16 -992, i16 4608, i16 -4864, i16 288, i16 -304, i16 18432, i16 -19456, i16 1152, i16 -1216, i16 2304, i16 -2432, i16 32, i16 -48, i16 9216, i16 -9728, i16 576, i16 -608, i16 6656, i16 -6912, i16 416, i16 -432, i16 26624, i16 -27648, i16 1664, i16 -1728, i16 3328, i16 -3456, i16 160, i16 -176, i16 13312, i16 -13824, i16 832, i16 -864, i16 5376, i16 -5632, i16 336, i16 -352, i16 21504, i16 -22528, i16 1344, i16 -1408, i16 2688, i16 -2816, i16 80, i16 -96, i16 10752, i16 -11264, i16 672, i16 -704, i16 7424, i16 -7680, i16 464, i16 -480, i16 29696, i16 -30720, i16 1856, i16 -1920, i16 3712, i16 -3840, i16 208, i16 -224, i16 14848, i16 -15360, i16 928, i16 -960, i16 4352, i16 -4608, i16 272, i16 -288, i16 17408, i16 -18432, i16 1088, i16 -1152, i16 2176, i16 -2304, i16 16, i16 -32, i16 8704, i16 -9216, i16 544, i16 -576, i16 6400, i16 -6656, i16 400, i16 -416, i16 25600, i16 -26624, i16 1600, i16 -1664, i16 3200, i16 -3328, i16 144, i16 -160, i16 12800, i16 -13312, i16 800, i16 -832, i16 5888, i16 -6144, i16 368, i16 -384, i16 23552, i16 -24576, i16 1472, i16 -1536, i16 2944, i16 -3072, i16 112, i16 -128, i16 11776, i16 -12288, i16 736, i16 -768, i16 7936, i16 -8192, i16 496, i16 -512, i16 31744, i16 -32768, i16 1984, i16 -2048, i16 3968, i16 -4096, i16 240, i16 -256, i16 15872, i16 -16384, i16 992, i16 -1024, i16 4864, i16 -5120, i16 304, i16 -320, i16 19456, i16 -20480, i16 1216, i16 -1280, i16 2432, i16 -2560, i16 48, i16 -64, i16 9728, i16 -10240, i16 608, i16 -640, i16 6912, i16 -7168, i16 432, i16 -448, i16 27648, i16 -28672, i16 1728, i16 -1792, i16 3456, i16 -3584, i16 176, i16 -192, i16 13824, i16 -14336, i16 864, i16 -896], align 16
@s2a = internal global [4096 x i8] c"\AA*\EAj\8A\0A\CAJ\BA:\FAz\9A\1A\DAZ\A2\22\E2b\82\02\C2B\B22\F2r\92\12\D2R\AE..\EE\EEnn\8E\8E\0E\0E\CE\CENN\BE\BE>>\FE\FE~~\9E\9E\1E\1E\DE\DE^^\A6\A6&&&&\E6\E6\E6\E6ffff\86\86\86\86\06\06\06\06\C6\C6\C6\C6FFFF\B6\B6\B6\B66666\F6\F6\F6\F6vvvv\96\96\96\96\16\16\16\16\D6\D6\D6\D6VVVV\A8\A8\A8\A8((((((((\E8\E8\E8\E8\E8\E8\E8\E8hhhhhhhh\88\88\88\88\88\88\88\88\08\08\08\08\08\08\08\08\C8\C8\C8\C8\C8\C8\C8\C8HHHHHHHH\B8\B8\B8\B8\B8\B8\B8\B888888888\F8\F8\F8\F8\F8\F8\F8\F8xxxxxxxx\98\98\98\98\98\98\98\98\18\18\18\18\18\18\18\18\D8\D8\D8\D8\D8\D8\D8\D8XXXXXXXX\A0\A0\A0\A0\A0\A0\A0\A0                \E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0\E0````````````````\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0\C0@@@@@@@@@@@@@@@@\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B00000000000000000\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0\F0pppppppppppppppp\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0\D0PPPPPPPPPPPPPPPP\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\EC\ECllllllllllllllllllllllllllllllll\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CC\CCLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC\FC||||||||||||||||||||||||||||||||\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\DC\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\5C\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4\E4dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B44444444444444444444444444444444444444444444444444444444444444444\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4\D4TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\D5\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F5\F55555555555555555555555555555555555555555555555555555555555555555\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\C5\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD\FD================================\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BDMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8Dmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED\ED--------------------------------\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\ADQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\D1\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91qqqqqqqqqqqqqqqq\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F1\F11111111111111111\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1AAAAAAAAAAAAAAAA\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\C1\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81aaaaaaaaaaaaaaaa\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1\E1!!!!!!!!!!!!!!!!\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1YYYYYYYYYYYYYYYY\D9\D9\D9\D9\D9\D9\D9\D9\19\19\19\19\19\19\19\19\99\99\99\99\99\99\99\99yyyyyyyy\F9\F9\F9\F9\F9\F9\F9\F999999999\B9\B9\B9\B9\B9\B9\B9\B9IIIIIIII\C9\C9\C9\C9\C9\C9\C9\C9\09\09\09\09\09\09\09\09\89\89\89\89\89\89\89\89iiiiiiii\E9\E9\E9\E9\E9\E9\E9\E9))))))))\A9\A9\A9\A9\A9\A9\A9\A9WWWWWWWW\D7\D7\D7\D7\17\17\17\17\97\97\97\97wwww\F7\F7\F7\F77777\B7\B7\B7\B7GGGG\C7\C7\C7\C7\07\07\07\07\87\87\87\87gggg\E7\E7\E7\E7''''\A7\A7\A7\A7____\DF\DF\1F\1F\9F\9F\7F\7F\FF\FF??\BF\BFOO\CF\CF\0F\0F\8F\8Foo\EF\EF//\AF\AFSS\D3\13\93s\F33\B3C\C3\03\83c\E3#\A3[\DB\1B\9B{\FB;\BBK\CB\0B\8Bk\EB+\AB", align 16
@out = external global %struct.__sFILE*, align 8

; Function Attrs: nounwind ssp uwtable
define i32 @alaw_input(i16* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16* %buf, i16** %buf.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %2, 160
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call = call i32 @fgetc(%struct.__sFILE* %3)
  store i32 %call, i32* %c, align 4, !tbaa !6
  %cmp1 = icmp ne i32 %call, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %c, align 4, !tbaa !6
  %conv = trunc i32 %5 to i8
  %idxprom = zext i8 %conv to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @a2s, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !8
  %7 = load i32, i32* %i, align 4, !tbaa !6
  %idxprom2 = sext i32 %7 to i64
  %8 = load i16*, i16** %buf.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i16, i16* %8, i64 %idxprom2
  store i16 %6, i16* %arrayidx3, align 2, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %c, align 4, !tbaa !6
  %cmp4 = icmp eq i32 %10, -1
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %11 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !2
  %call6 = call i32 @ferror(%struct.__sFILE* %11)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.end
  %12 = load i32, i32* %i, align 4, !tbaa !6
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #3
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @fgetc(%struct.__sFILE*) #2

declare i32 @ferror(%struct.__sFILE*) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @alaw_output(i16* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16* %buf, i16** %buf.addr, align 8, !tbaa !2
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 0, i32* %i, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !6
  %cmp = icmp slt i32 %1, 160
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %buf.addr, align 8, !tbaa !2
  %3 = load i16, i16* %2, align 2, !tbaa !8
  %conv = zext i16 %3 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [4096 x i8], [4096 x i8]* @s2a, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %conv1 = zext i8 %4 to i32
  %5 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !2
  %call = call i32 @fputc(i32 %conv1, %struct.__sFILE* %5)
  %cmp2 = icmp eq i32 %call, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !tbaa !6
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !6
  %7 = load i16*, i16** %buf.addr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %incdec.ptr, i16** %buf.addr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #3
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @fputc(i32, %struct.__sFILE*) #2

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
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!4, !4, i64 0}
