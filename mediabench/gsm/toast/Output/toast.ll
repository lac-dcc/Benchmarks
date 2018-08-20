; ModuleID = 'toast.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.fmtdesc = type { i8*, i8*, i8*, i32 ()*, i32 ()*, i32 (i16*)*, i32 (i16*)* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }
%struct.gsm_state = type opaque
%struct.utimbuf = type { i64, i64 }

@f_decode = global i32 0, align 4
@f_cat = global i32 0, align 4
@f_force = global i32 0, align 4
@f_precious = global i32 0, align 4
@f_fast = global i32 0, align 4
@f_verbose = global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"8 kHz, 8 bit u-law encoding with Sun audio header\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".au\00", align 1
@f_audio = global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 ()* @audio_init_input, i32 ()* @audio_init_output, i32 (i16*)* @ulaw_input, i32 (i16*)* @ulaw_output }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"u-law\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"plain 8 kHz, 8 bit u-law encoding\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".u\00", align 1
@f_ulaw = global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @ulaw_input, i32 (i16*)* @ulaw_output }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"A-law\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"8 kHz, 8 bit A-law encoding\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".A\00", align 1
@f_alaw = global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @alaw_input, i32 (i16*)* @alaw_output }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"16 bit (13 significant) signed 8 kHz signal\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@f_linear = global %struct.fmtdesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @linear_input, i32 (i16*)* @linear_output }, align 8
@alldescs = global [5 x %struct.fmtdesc*] [%struct.fmtdesc* @f_audio, %struct.fmtdesc* @f_alaw, %struct.fmtdesc* @f_ulaw, %struct.fmtdesc* @f_linear, %struct.fmtdesc* null], align 16
@f_format = global %struct.fmtdesc* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"fcdpvhuaslVF\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\0A\00", align 1
@progname = common global i8* null, align 8
@optind = external global i32, align 4
@instat = common global %struct.stat zeroinitializer, align 8
@in = common global %struct.__sFILE* null, align 8
@out = common global %struct.__sFILE* null, align 8
@inname = common global i8* null, align 8
@outname = common global i8* null, align 8
@output = common global i32 (i16*)* null, align 8
@input = common global i32 (i16*)* null, align 8
@init_input = common global i32 ()* null, align 8
@init_output = common global i32 ()* null, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"toast\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s: only one of -[uals] is possible (%s -h for help)\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s 1.0, version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"$Id: toast.c 42693 2007-10-06 10:37:39Z asl $\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Usage: %s [-fcpdhvaulsF] [files...]\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c" -f  force     Replace existing files without asking\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c" -c  cat       Write to stdout, do not remove source files\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c" -d  decode    Decode data (default is encode)\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c" -p  precious  Do not delete the source\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c" -l  linear    Force 16 bit linear in/output format\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c" -F  fast      Sacrifice conformance to performance\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c" -v  version   Show version information\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c" -h  help      Print this text\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%s: error %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"writing header to\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"reading header from\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s: error writing \22%s\22\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*, align 8
@__stdinp = external global %struct.__sFILE*, align 8
@.str.39 = private unnamed_addr constant [30 x i8] c"%s: source \22%s\22 not deleted.\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"%s: could not unlink \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".gsm\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"%s: %s already has \22%s\22 suffix -- unchanged.\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s: cannot open \22%s\22 for reading\0A\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"%s: failed to malloc %d bytes -- abort\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"%s: cannot stat \22%s\22\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"%s: \22%s\22 is not a regular file -- unchanged.\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s: \22%s\22 has %s other link%s -- unchanged.\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"%s: can't open \22%s\22 for writing\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"%s: filename \22%s\22 is too long (maximum is %ld)\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"%s already exists; do you wish to overwrite %s (y or n)? \00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"%s: incomplete frame (%d byte%s missing) from %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"%s: bad frame in %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%s: error writing to %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s: error reading from %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"%s: could not change file mode of \22%s\22\0A\00", align 1

declare i32 @audio_init_input() #0

declare i32 @audio_init_output() #0

declare i32 @ulaw_input(i16*) #0

declare i32 @ulaw_output(i16*) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @generic_init() #1 {
entry:
  ret i32 0
}

declare i32 @alaw_input(i16*) #0

declare i32 @alaw_output(i16*) #0

declare i32 @linear_input(i16*) #0

declare i32 @linear_output(i16*) #0

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %ac, i8** %av) #1 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %opt = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %ac, i32* %ac.addr, align 4, !tbaa !2
  store i8** %av, i8*** %av.addr, align 8, !tbaa !6
  %0 = bitcast i32* %opt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = load i8**, i8*** %av.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %1, align 8, !tbaa !6
  call void @parse_argv0(i8* %2)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, i32* %ac.addr, align 4, !tbaa !2
  %4 = load i8**, i8*** %av.addr, align 8, !tbaa !6
  %call = call i32 @"\01_getopt"(i32 %3, i8** %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0))
  store i32 %call, i32* %opt, align 4, !tbaa !2
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %opt, align 4, !tbaa !2
  switch i32 %5, label %sw.default [
    i32 100, label %sw.bb
    i32 102, label %sw.bb.1
    i32 99, label %sw.bb.2
    i32 112, label %sw.bb.3
    i32 70, label %sw.bb.4
    i32 117, label %sw.bb.5
    i32 108, label %sw.bb.6
    i32 97, label %sw.bb.7
    i32 115, label %sw.bb.8
    i32 118, label %sw.bb.9
    i32 104, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* @f_decode, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  store i32 1, i32* @f_force, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  store i32 1, i32* @f_cat, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.3:                                          ; preds = %while.body
  store i32 1, i32* @f_precious, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.4:                                          ; preds = %while.body
  store i32 1, i32* @f_fast, align 4, !tbaa !2
  br label %sw.epilog

sw.bb.5:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_ulaw)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_linear)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_alaw)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %while.body
  call void @set_format(%struct.fmtdesc* @f_audio)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %while.body
  call void @version()
  call void @exit(i32 0) #7
  unreachable

sw.bb.10:                                         ; preds = %while.body
  call void @help()
  call void @exit(i32 0) #7
  unreachable

sw.default:                                       ; preds = %while.body
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %7 = load i8*, i8** @progname, align 8, !tbaa !6
  %call11 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i32 0, i32 0), i8* %7)
  call void @exit(i32 1) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* @f_cat, align 4, !tbaa !2
  %9 = load i32, i32* @f_precious, align 4, !tbaa !2
  %or = or i32 %9, %8
  store i32 %or, i32* @f_precious, align 4, !tbaa !2
  %10 = load i32, i32* @optind, align 4, !tbaa !2
  %11 = load i8**, i8*** %av.addr, align 8, !tbaa !6
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %11, i64 %idx.ext
  store i8** %add.ptr, i8*** %av.addr, align 8, !tbaa !6
  %12 = load i32, i32* @optind, align 4, !tbaa !2
  %13 = load i32, i32* %ac.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %13, %12
  store i32 %sub, i32* %ac.addr, align 4, !tbaa !2
  call void @catch_signals(void (...)* bitcast (void ()* @onintr to void (...)*))
  %14 = load i32, i32* %ac.addr, align 4, !tbaa !2
  %cmp12 = icmp sle i32 %14, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call13 = call i32 @process(i8* null)
  br label %if.end

if.else:                                          ; preds = %while.end
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.15, %if.else
  %15 = load i32, i32* %ac.addr, align 4, !tbaa !2
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %ac.addr, align 4, !tbaa !2
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body.15, label %while.end.17

while.body.15:                                    ; preds = %while.cond.14
  %16 = load i8**, i8*** %av.addr, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %av.addr, align 8, !tbaa !6
  %17 = load i8*, i8** %16, align 8, !tbaa !6
  %call16 = call i32 @process(i8* %17)
  br label %while.cond.14

while.end.17:                                     ; preds = %while.cond.14
  br label %if.end

if.end:                                           ; preds = %while.end.17, %if.then
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define internal void @parse_argv0(i8* %av0) #1 {
entry:
  %av0.addr = alloca i8*, align 8
  %l = alloca i32, align 4
  store i8* %av0, i8** %av0.addr, align 8, !tbaa !6
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = load i8*, i8** %av0.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %av0.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), %cond.false ]
  %call = call i8* @endname(i8* %cond)
  store i8* %call, i8** %av0.addr, align 8, !tbaa !6
  store i8* %call, i8** @progname, align 8, !tbaa !6
  %3 = load i8*, i8** %av0.addr, align 8, !tbaa !6
  %call1 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i64 2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store i32 1, i32* @f_decode, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load i8*, i8** %av0.addr, align 8, !tbaa !6
  %call3 = call i64 @strlen(i8* %4)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %l, align 4, !tbaa !2
  %cmp = icmp sge i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %av0.addr, align 8, !tbaa !6
  %6 = load i32, i32* %l, align 4, !tbaa !2
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -3
  %call6 = call i32 @strcmp(i8* %add.ptr5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* @f_decode, align 4, !tbaa !2
  store i32 1, i32* @f_cat, align 4, !tbaa !2
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end
  %7 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #6
  ret void
}

declare i32 @"\01_getopt"(i32, i8**, i8*) #0

; Function Attrs: nounwind ssp uwtable
define internal void @set_format(%struct.fmtdesc* %f) #1 {
entry:
  %f.addr = alloca %struct.fmtdesc*, align 8
  store %struct.fmtdesc* %f, %struct.fmtdesc** %f.addr, align 8, !tbaa !6
  %0 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8, !tbaa !6
  %tobool = icmp ne %struct.fmtdesc* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8, !tbaa !6
  %2 = load %struct.fmtdesc*, %struct.fmtdesc** %f.addr, align 8, !tbaa !6
  %cmp = icmp ne %struct.fmtdesc* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %4 = load i8*, i8** @progname, align 8, !tbaa !6
  %5 = load i8*, i8** @progname, align 8, !tbaa !6
  %call = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i32 0, i32 0), i8* %4, i8* %5)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.fmtdesc*, %struct.fmtdesc** %f.addr, align 8, !tbaa !6
  store %struct.fmtdesc* %6, %struct.fmtdesc** @f_format, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @version() #1 {
entry:
  %0 = load i8*, i8** @progname, align 8, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0))
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind ssp uwtable
define internal void @help() #1 {
entry:
  %0 = load i8*, i8** @progname, align 8, !tbaa !6
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i8* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i32 0, i32 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i32 0, i32 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i32 0, i32 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i32 0, i32 0))
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i32 0, i32 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #0

; Function Attrs: nounwind ssp uwtable
define internal void @catch_signals(void (...)* %fun) #1 {
entry:
  %fun.addr = alloca void (...)*, align 8
  store void (...)* %fun, void (...)** %fun.addr, align 8, !tbaa !6
  %0 = load void (...)*, void (...)** %fun.addr, align 8, !tbaa !6
  %1 = bitcast void (...)* %0 to void (i32)*
  %call = call void (i32)* @signal(i32 1, void (i32)* %1)
  %2 = load void (...)*, void (...)** %fun.addr, align 8, !tbaa !6
  %3 = bitcast void (...)* %2 to void (i32)*
  %call1 = call void (i32)* @signal(i32 2, void (i32)* %3)
  %4 = load void (...)*, void (...)** %fun.addr, align 8, !tbaa !6
  %5 = bitcast void (...)* %4 to void (i32)*
  %call2 = call void (i32)* @signal(i32 13, void (i32)* %5)
  %6 = load void (...)*, void (...)** %fun.addr, align 8, !tbaa !6
  %7 = bitcast void (...)* %6 to void (i32)*
  %call3 = call void (i32)* @signal(i32 15, void (i32)* %7)
  %8 = load void (...)*, void (...)** %fun.addr, align 8, !tbaa !6
  %9 = bitcast void (...)* %8 to void (i32)*
  %call4 = call void (i32)* @signal(i32 25, void (i32)* %9)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @onintr() #1 {
entry:
  %tmp = alloca i8*, align 8
  %0 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load i8*, i8** @outname, align 8, !tbaa !6
  store i8* %1, i8** %tmp, align 8, !tbaa !6
  store i8* null, i8** @outname, align 8, !tbaa !6
  %2 = load i8*, i8** %tmp, align 8, !tbaa !6
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %tmp, align 8, !tbaa !6
  %call = call i32 @unlink(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  store i32 0, i32* %step, align 4, !tbaa !2
  store %struct.__sFILE* null, %struct.__sFILE** @out, align 8, !tbaa !6
  store %struct.__sFILE* null, %struct.__sFILE** @in, align 8, !tbaa !6
  store i8* null, i8** @outname, align 8, !tbaa !6
  store i8* null, i8** @inname, align 8, !tbaa !6
  %1 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i32 @open_input(i8* %1, %struct.stat* @instat)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call1 = call i32 @open_output(i8* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* @f_decode, align 4, !tbaa !2
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i32 ()*, i32 ()** @init_output, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i32 ()*, i32 ()** @init_input, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 ()* [ %4, %cond.true ], [ %5, %cond.false ]
  %call4 = call i32 %cond()
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.25

if.then.6:                                        ; preds = %cond.end
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %7 = load i8*, i8** @progname, align 8, !tbaa !6
  %8 = load i32, i32* @f_decode, align 4, !tbaa !2
  %tobool7 = icmp ne i32 %8, 0
  %cond8 = select i1 %tobool7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0)
  %9 = load i32, i32* @f_decode, align 4, !tbaa !2
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.16

cond.true.10:                                     ; preds = %if.then.6
  %10 = load i8*, i8** @outname, align 8, !tbaa !6
  %tobool11 = icmp ne i8* %10, null
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.true.10
  %11 = load i8*, i8** @outname, align 8, !tbaa !6
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.true.10
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i8* [ %11, %cond.true.12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.13 ]
  br label %cond.end.22

cond.false.16:                                    ; preds = %if.then.6
  %12 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool17 = icmp ne i8* %12, null
  br i1 %tobool17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.false.16
  %13 = load i8*, i8** @inname, align 8, !tbaa !6
  br label %cond.end.20

cond.false.19:                                    ; preds = %cond.false.16
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.true.18
  %cond21 = phi i8* [ %13, %cond.true.18 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.19 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.20, %cond.end.14
  %cond23 = phi i8* [ %cond15, %cond.end.14 ], [ %cond21, %cond.end.20 ]
  %call24 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i8* %7, i8* %cond8, i8* %cond23)
  br label %err

if.end.25:                                        ; preds = %cond.end
  %14 = load i32, i32* @f_decode, align 4, !tbaa !2
  %tobool26 = icmp ne i32 %14, 0
  %cond27 = select i1 %tobool26, i32 ()* @process_decode, i32 ()* @process_encode
  %call28 = call i32 %cond27()
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  br label %err

if.end.31:                                        ; preds = %if.end.25
  %15 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %call32 = call i32 @fflush(%struct.__sFILE* %15)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.31
  %16 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %call34 = call i32 @ferror(%struct.__sFILE* %16)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %lor.lhs.false.33, %if.end.31
  %17 = load i8*, i8** @outname, align 8, !tbaa !6
  %tobool37 = icmp ne i8* %17, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %if.then.36
  %18 = load i8*, i8** @outname, align 8, !tbaa !6
  br label %cond.end.40

cond.false.39:                                    ; preds = %if.then.36
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i8* [ %18, %cond.true.38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.39 ]
  call void @perror(i8* %cond41)
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %20 = load i8*, i8** @progname, align 8, !tbaa !6
  %21 = load i8*, i8** @outname, align 8, !tbaa !6
  %tobool42 = icmp ne i8* %21, null
  br i1 %tobool42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.end.40
  %22 = load i8*, i8** @outname, align 8, !tbaa !6
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.40
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.43
  %cond46 = phi i8* [ %22, %cond.true.43 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.44 ]
  %call47 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), i8* %20, i8* %cond46)
  br label %err

if.end.48:                                        ; preds = %lor.lhs.false.33
  %23 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  %cmp49 = icmp ne %struct.__sFILE* %23, %24
  br i1 %cmp49, label %if.then.50, label %if.end.59

if.then.50:                                       ; preds = %if.end.48
  call void @update_times()
  call void @update_mode()
  call void @update_own()
  %25 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %call51 = call i32 @fclose(%struct.__sFILE* %25)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.then.50
  %26 = load i8*, i8** @outname, align 8, !tbaa !6
  call void @perror(i8* %26)
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %28 = load i8*, i8** @progname, align 8, !tbaa !6
  %29 = load i8*, i8** @outname, align 8, !tbaa !6
  %call54 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i32 0, i32 0), i8* %28, i8* %29)
  br label %err

if.end.55:                                        ; preds = %if.then.50
  %30 = load i8*, i8** @outname, align 8, !tbaa !6
  %31 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %cmp56 = icmp ne i8* %30, %31
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.55
  %32 = load i8*, i8** @outname, align 8, !tbaa !6
  call void @free(i8* %32)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %if.end.55
  store i8* null, i8** @outname, align 8, !tbaa !6
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.48
  store %struct.__sFILE* null, %struct.__sFILE** @out, align 8, !tbaa !6
  %33 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !6
  %34 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !6
  %cmp60 = icmp ne %struct.__sFILE* %33, %34
  br i1 %cmp60, label %if.then.61, label %if.end.75

if.then.61:                                       ; preds = %if.end.59
  %35 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !6
  %call62 = call i32 @fclose(%struct.__sFILE* %35)
  store %struct.__sFILE* null, %struct.__sFILE** @in, align 8, !tbaa !6
  %36 = load i32, i32* @f_cat, align 4, !tbaa !2
  %tobool63 = icmp ne i32 %36, 0
  br i1 %tobool63, label %if.end.71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.61
  %37 = load i32, i32* @f_precious, align 4, !tbaa !2
  %tobool64 = icmp ne i32 %37, 0
  br i1 %tobool64, label %if.end.71, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true
  %38 = load i8*, i8** @inname, align 8, !tbaa !6
  %call66 = call i32 @unlink(i8* %38)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.65
  %39 = load i8*, i8** @inname, align 8, !tbaa !6
  call void @perror(i8* %39)
  %40 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %41 = load i8*, i8** @progname, align 8, !tbaa !6
  %42 = load i8*, i8** @inname, align 8, !tbaa !6
  %call69 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i8* %41, i8* %42)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.65
  br label %err

if.end.71:                                        ; preds = %land.lhs.true, %if.then.61
  %43 = load i8*, i8** @inname, align 8, !tbaa !6
  %44 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %cmp72 = icmp ne i8* %43, %44
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.71
  %45 = load i8*, i8** @inname, align 8, !tbaa !6
  call void @free(i8* %45)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.end.71
  store i8* null, i8** @inname, align 8, !tbaa !6
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

err:                                              ; preds = %if.end.70, %if.then.53, %cond.end.45, %if.then.30, %cond.end.22, %if.then
  %46 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %tobool76 = icmp ne %struct.__sFILE* %46, null
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.92

land.lhs.true.77:                                 ; preds = %err
  %47 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %48 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  %cmp78 = icmp ne %struct.__sFILE* %47, %48
  br i1 %cmp78, label %if.then.79, label %if.end.92

if.then.79:                                       ; preds = %land.lhs.true.77
  %49 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %call80 = call i32 @fclose(%struct.__sFILE* %49)
  store %struct.__sFILE* null, %struct.__sFILE** @out, align 8, !tbaa !6
  %50 = load i8*, i8** @outname, align 8, !tbaa !6
  %call81 = call i32 @unlink(i8* %50)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %land.lhs.true.83, label %if.end.91

land.lhs.true.83:                                 ; preds = %if.then.79
  %call84 = call i32* @__error()
  %51 = load i32, i32* %call84, align 4, !tbaa !2
  %cmp85 = icmp ne i32 %51, 2
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.91

land.lhs.true.86:                                 ; preds = %land.lhs.true.83
  %call87 = call i32* @__error()
  %52 = load i32, i32* %call87, align 4, !tbaa !2
  %cmp88 = icmp ne i32 %52, 4
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.86
  %53 = load i8*, i8** @outname, align 8, !tbaa !6
  call void @perror(i8* %53)
  %54 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %55 = load i8*, i8** @progname, align 8, !tbaa !6
  %56 = load i8*, i8** @outname, align 8, !tbaa !6
  %call90 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i8* %55, i8* %56)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %land.lhs.true.86, %land.lhs.true.83, %if.then.79
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.77, %err
  %57 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !6
  %tobool93 = icmp ne %struct.__sFILE* %57, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.end.98

land.lhs.true.94:                                 ; preds = %if.end.92
  %58 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !6
  %59 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !6
  %cmp95 = icmp ne %struct.__sFILE* %58, %59
  br i1 %cmp95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %land.lhs.true.94
  %60 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !6
  %call97 = call i32 @fclose(%struct.__sFILE* %60)
  store %struct.__sFILE* null, %struct.__sFILE** @in, align 8, !tbaa !6
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %land.lhs.true.94, %if.end.92
  %61 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool99 = icmp ne i8* %61, null
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.103

land.lhs.true.100:                                ; preds = %if.end.98
  %62 = load i8*, i8** @inname, align 8, !tbaa !6
  %63 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %cmp101 = icmp ne i8* %62, %63
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true.100
  %64 = load i8*, i8** @inname, align 8, !tbaa !6
  call void @free(i8* %64)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %land.lhs.true.100, %if.end.98
  %65 = load i8*, i8** @outname, align 8, !tbaa !6
  %tobool104 = icmp ne i8* %65, null
  br i1 %tobool104, label %land.lhs.true.105, label %if.end.108

land.lhs.true.105:                                ; preds = %if.end.103
  %66 = load i8*, i8** @outname, align 8, !tbaa !6
  %67 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %cmp106 = icmp ne i8* %66, %67
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.105
  %68 = load i8*, i8** @outname, align 8, !tbaa !6
  call void @free(i8* %68)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.105, %if.end.103
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.108, %if.end.75
  %69 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #6
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @endname(i8* %name) #1 {
entry:
  %name.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #6
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i8* @strrchr(i8* %2, i32 47)
  store i8* %call, i8** %s, align 8, !tbaa !6
  %3 = load i8*, i8** %s, align 8, !tbaa !6
  %tobool1 = icmp ne i8* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8*, i8** %s, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = sext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** %s, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %name.addr, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then.3, %land.lhs.true, %if.then
  %7 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #6
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %8 = load i8*, i8** %name.addr, align 8, !tbaa !6
  ret i8* %8
}

declare i32 @strncmp(i8*, i8*, i64) #0

declare i64 @strlen(i8*) #0

declare i32 @strcmp(i8*, i8*) #0

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i8* @strrchr(i8*, i32) #0

declare i32 @printf(i8*, ...) #0

declare void (i32)* @signal(i32, void (i32)*) #0

declare i32 @unlink(i8*) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @open_input(i8* %name, %struct.stat* %st) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %st.addr = alloca %struct.stat*, align 8
  %f = alloca %struct.fmtdesc*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  store %struct.stat* %st, %struct.stat** %st.addr, align 8, !tbaa !6
  %0 = bitcast %struct.fmtdesc** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8, !tbaa !6
  store %struct.fmtdesc* %1, %struct.fmtdesc** %f, align 8, !tbaa !6
  %2 = load %struct.stat*, %struct.stat** %st.addr, align 8, !tbaa !6
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 2
  store i16 0, i16* %st_nlink, align 2, !tbaa !9
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** @inname, align 8, !tbaa !6
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stdinp, align 8, !tbaa !6
  store %struct.__sFILE* %4, %struct.__sFILE** @in, align 8, !tbaa !6
  br label %if.end.26

if.else:                                          ; preds = %entry
  %5 = load i32, i32* @f_decode, align 4, !tbaa !2
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i8* @codename(i8* %6)
  store i8* %call, i8** @inname, align 8, !tbaa !6
  br label %if.end.12

if.else.3:                                        ; preds = %if.else
  %7 = load i32, i32* @f_cat, align 4, !tbaa !2
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.3
  %8 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call5 = call i8* @suffix(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %10 = load i8*, i8** @progname, align 8, !tbaa !6
  %11 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0), i8* %10, i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.else.3
  %12 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call9 = call i64 @strlen(i8* %12)
  %add = add i64 %call9, 1
  %call10 = call i8* @emalloc(i64 %add)
  %13 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call11 = call i8* @__strcpy_chk(i8* %call10, i8* %13, i64 -1) #6
  store i8* %call11, i8** @inname, align 8, !tbaa !6
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.2
  %14 = load i8*, i8** @inname, align 8, !tbaa !6
  %call13 = call %struct.__sFILE* @"\01_fopen"(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  store %struct.__sFILE* %call13, %struct.__sFILE** @in, align 8, !tbaa !6
  %tobool14 = icmp ne %struct.__sFILE* %call13, null
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %15 = load i8*, i8** @inname, align 8, !tbaa !6
  call void @perror(i8* %15)
  %16 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %17 = load i8*, i8** @progname, align 8, !tbaa !6
  %18 = load i8*, i8** @inname, align 8, !tbaa !6
  %call16 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0), i8* %17, i8* %18)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.12
  %19 = load i8*, i8** @inname, align 8, !tbaa !6
  %20 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !6
  %21 = load %struct.stat*, %struct.stat** %st.addr, align 8, !tbaa !6
  %call18 = call i32 @okay_as_input(i8* %19, %struct.__sFILE* %20, %struct.stat* %21)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.17
  %22 = load %struct.fmtdesc*, %struct.fmtdesc** %f, align 8, !tbaa !6
  %tobool22 = icmp ne %struct.fmtdesc* %22, null
  br i1 %tobool22, label %if.end.25, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %23 = load i8*, i8** @inname, align 8, !tbaa !6
  %call24 = call %struct.fmtdesc* @grok_format(i8* %23)
  store %struct.fmtdesc* %call24, %struct.fmtdesc** %f, align 8, !tbaa !6
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  %24 = load %struct.fmtdesc*, %struct.fmtdesc** %f, align 8, !tbaa !6
  %tobool27 = icmp ne %struct.fmtdesc* %24, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %25 = load %struct.fmtdesc*, %struct.fmtdesc** %f, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.end.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fmtdesc* [ %25, %cond.true ], [ @f_ulaw, %cond.false ]
  call void @prepare_io(%struct.fmtdesc* %cond)
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.20, %if.then.15, %if.then.7
  %26 = bitcast %struct.fmtdesc** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #6
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @open_output(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %outfd = alloca i32, align 4
  %o = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @f_cat, align 4, !tbaa !2
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !tbaa !6
  store %struct.__sFILE* %2, %struct.__sFILE** @out, align 8, !tbaa !6
  store i8* null, i8** @outname, align 8, !tbaa !6
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false
  %3 = bitcast i32* %outfd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  store i32 -1, i32* %outfd, align 4, !tbaa !2
  %4 = bitcast i8** %o to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  %5 = load i32, i32* @f_decode, align 4, !tbaa !2
  %tobool2 = icmp ne i32 %5, 0
  %cond = select i1 %tobool2, i8* (i8*)* @plainname, i8* (i8*)* @codename
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i8* %cond(i8* %6)
  store i8* %call, i8** %o, align 8, !tbaa !6
  %7 = load i8*, i8** %o, align 8, !tbaa !6
  %call3 = call i32 @length_okay(i8* %7)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %8 = load i8*, i8** %o, align 8, !tbaa !6
  %call6 = call i32 (i8*, i32, ...) @"\01_open"(i8* %8, i32 2561, i32 438)
  store i32 %call6, i32* %outfd, align 4, !tbaa !2
  %cmp = icmp sge i32 %call6, 0
  br i1 %cmp, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end
  %9 = load i32, i32* %outfd, align 4, !tbaa !2
  %call8 = call %struct.__sFILE* @"\01_fdopen"(i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  store %struct.__sFILE* %call8, %struct.__sFILE** @out, align 8, !tbaa !6
  br label %if.end.21

if.else.9:                                        ; preds = %if.end
  %call10 = call i32* @__error()
  %10 = load i32, i32* %call10, align 4, !tbaa !2
  %cmp11 = icmp ne i32 %10, 17
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  store %struct.__sFILE* null, %struct.__sFILE** @out, align 8, !tbaa !6
  br label %if.end.20

if.else.13:                                       ; preds = %if.else.9
  %11 = load i8*, i8** %o, align 8, !tbaa !6
  %call14 = call i32 @ok_to_replace(i8* %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.else.13
  %12 = load i8*, i8** %o, align 8, !tbaa !6
  %call17 = call %struct.__sFILE* @"\01_fopen"(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  store %struct.__sFILE* %call17, %struct.__sFILE** @out, align 8, !tbaa !6
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.7
  %13 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %tobool22 = icmp ne %struct.__sFILE* %13, null
  br i1 %tobool22, label %if.end.29, label %if.then.23

if.then.23:                                       ; preds = %if.end.21
  %14 = load i8*, i8** %o, align 8, !tbaa !6
  call void @perror(i8* %14)
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %16 = load i8*, i8** @progname, align 8, !tbaa !6
  %17 = load i8*, i8** %o, align 8, !tbaa !6
  %call24 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i32 0, i32 0), i8* %16, i8* %17)
  %18 = load i32, i32* %outfd, align 4, !tbaa !2
  %cmp25 = icmp sge i32 %18, 0
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %19 = load i32, i32* %outfd, align 4, !tbaa !2
  %call27 = call i32 @"\01_close"(i32 %19)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.21
  %20 = load i8*, i8** %o, align 8, !tbaa !6
  store i8* %20, i8** @outname, align 8, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.end.28, %if.else.18, %if.then.5
  %21 = bitcast i8** %o to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #6
  %22 = bitcast i32* %outfd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #6
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %cleanup
  %23 = load i32, i32* %retval
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_decode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.gsm_state*, align 8
  %s = alloca [33 x i8], align 16
  %d = alloca [160 x i16], align 16
  %cc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.gsm_state** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast [33 x i8]* %s to i8*
  call void @llvm.lifetime.start(i64 33, i8* %1) #6
  %2 = bitcast [160 x i16]* %d to i8*
  call void @llvm.lifetime.start(i64 320, i8* %2) #6
  %3 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %call = call %struct.gsm_state* @gsm_create()
  store %struct.gsm_state* %call, %struct.gsm_state** %r, align 8, !tbaa !6
  %tobool = icmp ne %struct.gsm_state* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @progname, align 8, !tbaa !6
  call void @perror(i8* %4)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  %call1 = call i32 @gsm_option(%struct.gsm_state* %5, i32 2, i32* @f_fast)
  %6 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  %call2 = call i32 @gsm_option(%struct.gsm_state* %6, i32 1, i32* @f_verbose)
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.end
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %s, i32 0, i32 0
  %7 = load %struct.__sFILE*, %struct.__sFILE** @in, align 8, !tbaa !6
  %call3 = call i64 @fread(i8* %arraydecay, i64 1, i64 33, %struct.__sFILE* %7)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %cc, align 4, !tbaa !2
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %cc, align 4, !tbaa !2
  %conv5 = sext i32 %8 to i64
  %cmp6 = icmp ne i64 %conv5, 33
  br i1 %cmp6, label %if.then.8, label %if.end.21

if.then.8:                                        ; preds = %while.body
  %9 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp9 = icmp sge i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.then.8
  %10 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %11 = load i8*, i8** @progname, align 8, !tbaa !6
  %12 = load i32, i32* %cc, align 4, !tbaa !2
  %conv12 = sext i32 %12 to i64
  %sub = sub i64 33, %conv12
  %13 = load i32, i32* %cc, align 4, !tbaa !2
  %conv13 = sext i32 %13 to i64
  %sub14 = sub i64 33, %conv13
  %cmp15 = icmp eq i64 %sub14, 1
  %conv16 = zext i1 %cmp15 to i32
  %idx.ext = sext i32 %conv16 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i64 %idx.ext
  %14 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool17 = icmp ne i8* %14, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %15 = load i8*, i8** @inname, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %15, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false ]
  %call18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i32 0, i32 0), i8* %11, i64 %sub, i8* %add.ptr, i8* %cond)
  br label %if.end.19

if.end.19:                                        ; preds = %cond.end, %if.then.8
  %16 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %16)
  %call20 = call i32* @__error()
  store i32 0, i32* %call20, align 4, !tbaa !2
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %while.body
  %17 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  %arraydecay22 = getelementptr inbounds [33 x i8], [33 x i8]* %s, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [160 x i16], [160 x i16]* %d, i32 0, i32 0
  %call24 = call i32 @gsm_decode(%struct.gsm_state* %17, i8* %arraydecay22, i16* %arraydecay23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.34

if.then.26:                                       ; preds = %if.end.21
  %18 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %19 = load i8*, i8** @progname, align 8, !tbaa !6
  %20 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool27 = icmp ne i8* %20, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %if.then.26
  %21 = load i8*, i8** @inname, align 8, !tbaa !6
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.then.26
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i8* [ %21, %cond.true.28 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.29 ]
  %call32 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i32 0, i32 0), i8* %19, i8* %cond31)
  %22 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %22)
  %call33 = call i32* @__error()
  store i32 0, i32* %call33, align 4, !tbaa !2
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.21
  %23 = load i32 (i16*)*, i32 (i16*)** @output, align 8, !tbaa !6
  %arraydecay35 = getelementptr inbounds [160 x i16], [160 x i16]* %d, i32 0, i32 0
  %call36 = call i32 %23(i16* %arraydecay35)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.34
  %24 = load i8*, i8** @outname, align 8, !tbaa !6
  call void @perror(i8* %24)
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %26 = load i8*, i8** @progname, align 8, !tbaa !6
  %27 = load i8*, i8** @outname, align 8, !tbaa !6
  %call40 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0), i8* %26, i8* %27)
  %28 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %28)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.34
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp42 = icmp slt i32 %29, 0
  br i1 %cmp42, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %while.end
  %30 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool45 = icmp ne i8* %30, null
  br i1 %tobool45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %if.then.44
  %31 = load i8*, i8** @inname, align 8, !tbaa !6
  br label %cond.end.48

cond.false.47:                                    ; preds = %if.then.44
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi i8* [ %31, %cond.true.46 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.47 ]
  call void @perror(i8* %cond49)
  %32 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %33 = load i8*, i8** @progname, align 8, !tbaa !6
  %34 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool50 = icmp ne i8* %34, null
  br i1 %tobool50, label %cond.true.51, label %cond.false.52

cond.true.51:                                     ; preds = %cond.end.48
  %35 = load i8*, i8** @inname, align 8, !tbaa !6
  br label %cond.end.53

cond.false.52:                                    ; preds = %cond.end.48
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.52, %cond.true.51
  %cond54 = phi i8* [ %35, %cond.true.51 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.52 ]
  %call55 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* %33, i8* %cond54)
  %36 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %36)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %while.end
  %37 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %37)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.56, %cond.end.53, %if.then.39, %cond.end.30, %if.end.19, %if.then
  %38 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #6
  %39 = bitcast [160 x i16]* %d to i8*
  call void @llvm.lifetime.end(i64 320, i8* %39) #6
  %40 = bitcast [33 x i8]* %s to i8*
  call void @llvm.lifetime.end(i64 33, i8* %40) #6
  %41 = bitcast %struct.gsm_state** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #6
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @process_encode() #1 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.gsm_state*, align 8
  %s = alloca [160 x i16], align 16
  %d = alloca [33 x i8], align 16
  %cc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.gsm_state** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast [160 x i16]* %s to i8*
  call void @llvm.lifetime.start(i64 320, i8* %1) #6
  %2 = bitcast [33 x i8]* %d to i8*
  call void @llvm.lifetime.start(i64 33, i8* %2) #6
  %3 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #6
  %call = call %struct.gsm_state* @gsm_create()
  store %struct.gsm_state* %call, %struct.gsm_state** %r, align 8, !tbaa !6
  %tobool = icmp ne %struct.gsm_state* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** @progname, align 8, !tbaa !6
  call void @perror(i8* %4)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  %call1 = call i32 @gsm_option(%struct.gsm_state* %5, i32 2, i32* @f_fast)
  %6 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  %call2 = call i32 @gsm_option(%struct.gsm_state* %6, i32 1, i32* @f_verbose)
  br label %while.cond

while.cond:                                       ; preds = %if.end.28, %if.end
  %7 = load i32 (i16*)*, i32 (i16*)** @input, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [160 x i16], [160 x i16]* %s, i32 0, i32 0
  %call3 = call i32 %7(i16* %arraydecay)
  store i32 %call3, i32* %cc, align 4, !tbaa !2
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %cc, align 4, !tbaa !2
  %conv = sext i32 %8 to i64
  %cmp4 = icmp ult i64 %conv, 160
  br i1 %cmp4, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %while.body
  %arraydecay7 = getelementptr inbounds [160 x i16], [160 x i16]* %s, i32 0, i32 0
  %9 = load i32, i32* %cc, align 4, !tbaa !2
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay7, i64 %idx.ext
  %10 = bitcast i16* %add.ptr to i8*
  %11 = load i32, i32* %cc, align 4, !tbaa !2
  %conv8 = sext i32 %11 to i64
  %mul = mul i64 %conv8, 2
  %sub = sub i64 320, %mul
  %arraydecay9 = getelementptr inbounds [160 x i16], [160 x i16]* %s, i32 0, i32 0
  %12 = load i32, i32* %cc, align 4, !tbaa !2
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i16, i16* %arraydecay9, i64 %idx.ext10
  %13 = bitcast i16* %add.ptr11 to i8*
  %14 = call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false)
  %call12 = call i8* @__memset_chk(i8* %10, i32 0, i64 %sub, i64 %14) #6
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.6, %while.body
  %15 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  %arraydecay14 = getelementptr inbounds [160 x i16], [160 x i16]* %s, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [33 x i8], [33 x i8]* %d, i32 0, i32 0
  call void @gsm_encode(%struct.gsm_state* %15, i16* %arraydecay14, i8* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [33 x i8], [33 x i8]* %d, i32 0, i32 0
  %16 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %call17 = call i64 @"\01_fwrite"(i8* %arraydecay16, i64 33, i64 1, %struct.__sFILE* %16)
  %cmp18 = icmp ne i64 %call17, 1
  br i1 %cmp18, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.end.13
  %17 = load i8*, i8** @outname, align 8, !tbaa !6
  %tobool21 = icmp ne i8* %17, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.20
  %18 = load i8*, i8** @outname, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.then.20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %18, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false ]
  call void @perror(i8* %cond)
  %19 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %20 = load i8*, i8** @progname, align 8, !tbaa !6
  %21 = load i8*, i8** @outname, align 8, !tbaa !6
  %tobool22 = icmp ne i8* %21, null
  br i1 %tobool22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end
  %22 = load i8*, i8** @outname, align 8, !tbaa !6
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i8* [ %22, %cond.true.23 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), %cond.false.24 ]
  %call27 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i32 0, i32 0), i8* %20, i8* %cond26)
  %23 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %23)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i32, i32* %cc, align 4, !tbaa !2
  %cmp29 = icmp slt i32 %24, 0
  br i1 %cmp29, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %while.end
  %25 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool32 = icmp ne i8* %25, null
  br i1 %tobool32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %if.then.31
  %26 = load i8*, i8** @inname, align 8, !tbaa !6
  br label %cond.end.35

cond.false.34:                                    ; preds = %if.then.31
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.34, %cond.true.33
  %cond36 = phi i8* [ %26, %cond.true.33 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.34 ]
  call void @perror(i8* %cond36)
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %28 = load i8*, i8** @progname, align 8, !tbaa !6
  %29 = load i8*, i8** @inname, align 8, !tbaa !6
  %tobool37 = icmp ne i8* %29, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %cond.end.35
  %30 = load i8*, i8** @inname, align 8, !tbaa !6
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end.35
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i8* [ %30, %cond.true.38 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), %cond.false.39 ]
  %call42 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* %28, i8* %cond41)
  %31 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %31)
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %while.end
  %32 = load %struct.gsm_state*, %struct.gsm_state** %r, align 8, !tbaa !6
  call void @gsm_destroy(%struct.gsm_state* %32)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %cond.end.40, %cond.end.25, %if.then
  %33 = bitcast i32* %cc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #6
  %34 = bitcast [33 x i8]* %d to i8*
  call void @llvm.lifetime.end(i64 33, i8* %34) #6
  %35 = bitcast [160 x i16]* %s to i8*
  call void @llvm.lifetime.end(i64 320, i8* %35) #6
  %36 = bitcast %struct.gsm_state** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #6
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @fflush(%struct.__sFILE*) #0

declare i32 @ferror(%struct.__sFILE*) #0

declare void @perror(i8*) #0

; Function Attrs: nounwind ssp uwtable
define internal void @update_times() #1 {
entry:
  %ut = alloca [2 x i64], align 16
  %0 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 2, !tbaa !9
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** @outname, align 8, !tbaa !6
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %2 = bitcast [2 x i64]* %ut to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #6
  %3 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 7, i32 0), align 8, !tbaa !15
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ut, i32 0, i64 0
  store i64 %3, i64* %arrayidx, align 8, !tbaa !16
  %4 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 8, i32 0), align 8, !tbaa !17
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %ut, i32 0, i64 1
  store i64 %4, i64* %arrayidx3, align 8, !tbaa !16
  %5 = load i8*, i8** @outname, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ut, i32 0, i32 0
  %6 = bitcast i64* %arraydecay to %struct.utimbuf*
  %call = call i32 @utime(i8* %5, %struct.utimbuf* %6)
  %7 = bitcast [2 x i64]* %ut to i8*
  call void @llvm.lifetime.end(i64 16, i8* %7) #6
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_mode() #1 {
entry:
  %0 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 2, !tbaa !9
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.6

if.end:                                           ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %call = call i32 @fileno(%struct.__sFILE* %1)
  %2 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 1), align 2, !tbaa !18
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 4095
  %conv1 = trunc i32 %and to i16
  %call2 = call i32 @"\01_fchmod"(i32 %call, i16 zeroext %conv1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %3 = load i8*, i8** @outname, align 8, !tbaa !6
  call void @perror(i8* %3)
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %5 = load i8*, i8** @progname, align 8, !tbaa !6
  %6 = load i8*, i8** @outname, align 8, !tbaa !6
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0), i8* %5, i8* %6)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then, %if.then.4, %if.end
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @update_own() #1 {
entry:
  %0 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 2, !tbaa !9
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.__sFILE*, %struct.__sFILE** @out, align 8, !tbaa !6
  %call = call i32 @fileno(%struct.__sFILE* %1)
  %2 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 4), align 4, !tbaa !19
  %3 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 5), align 4, !tbaa !20
  %call1 = call i32 @fchown(i32 %call, i32 %2, i32 %3)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @fclose(%struct.__sFILE*) #0

declare void @free(i8*) #0

declare i32* @__error() #0

; Function Attrs: nounwind ssp uwtable
define internal i8* @codename(i8* %name) #1 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i8* @normalname(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @suffix(i8* %name, i8* %suf) #1 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %suf.addr = alloca i8*, align 8
  %nlen = alloca i64, align 8
  %slen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  store i8* %suf, i8** %suf.addr, align 8, !tbaa !6
  %0 = bitcast i64* %nlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i64 @strlen(i8* %1)
  store i64 %call, i64* %nlen, align 8, !tbaa !16
  %2 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #6
  %3 = load i8*, i8** %suf.addr, align 8, !tbaa !6
  %call1 = call i64 @strlen(i8* %3)
  store i64 %call1, i64* %slen, align 8, !tbaa !16
  %4 = load i64, i64* %slen, align 8, !tbaa !16
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %nlen, align 8, !tbaa !16
  %6 = load i64, i64* %slen, align 8, !tbaa !16
  %cmp = icmp ule i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i64, i64* %nlen, align 8, !tbaa !16
  %8 = load i64, i64* %slen, align 8, !tbaa !16
  %sub = sub i64 %7, %8
  %9 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %sub
  store i8* %add.ptr, i8** %name.addr, align 8, !tbaa !6
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %11 = load i8*, i8** %suf.addr, align 8, !tbaa !6
  %12 = load i64, i64* %slen, align 8, !tbaa !16
  %call2 = call i32 @memcmp(i8* %10, i8* %11, i64 %12)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %13 = load i8*, i8** %name.addr, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %13, %cond.false ]
  store i8* %cond, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %14 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #6
  %15 = bitcast i64* %nlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #6
  %16 = load i8*, i8** %retval
  ret i8* %16
}

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nounwind ssp uwtable
define internal i8* @emalloc(i64 %len) #1 {
entry:
  %len.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  store i64 %len, i64* %len.addr, align 8, !tbaa !16
  %0 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = load i64, i64* %len.addr, align 8, !tbaa !16
  %call = call i8* @malloc(i64 %1)
  store i8* %call, i8** %s, align 8, !tbaa !6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %3 = load i8*, i8** @progname, align 8, !tbaa !6
  %4 = load i64, i64* %len.addr, align 8, !tbaa !16
  %call1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0), i8* %3, i64 %4)
  call void @onintr()
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %s, align 8, !tbaa !6
  %6 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #6
  ret i8* %5
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @okay_as_input(i8* %name, %struct.__sFILE* %f, %struct.stat* %st) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %f.addr = alloca %struct.__sFILE*, align 8
  %st.addr = alloca %struct.stat*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  store %struct.__sFILE* %f, %struct.__sFILE** %f.addr, align 8, !tbaa !6
  store %struct.stat* %st, %struct.stat** %st.addr, align 8, !tbaa !6
  %0 = load %struct.__sFILE*, %struct.__sFILE** %f.addr, align 8, !tbaa !6
  %call = call i32 @fileno(%struct.__sFILE* %0)
  %1 = load %struct.stat*, %struct.stat** %st.addr, align 8, !tbaa !6
  %call1 = call i32 @"\01_fstat$INODE64"(i32 %call, %struct.stat* %1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !6
  call void @perror(i8* %2)
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %4 = load i8*, i8** @progname, align 8, !tbaa !6
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call2 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i8* %4, i8* %5)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.stat*, %struct.stat** %st.addr, align 8, !tbaa !6
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %7 = load i16, i16* %st_mode, align 2, !tbaa !18
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 61440
  %cmp3 = icmp eq i32 %and, 32768
  br i1 %cmp3, label %if.end.7, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %9 = load i8*, i8** @progname, align 8, !tbaa !6
  %10 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call6 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i32 0, i32 0), i8* %9, i8* %10)
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct.stat*, %struct.stat** %st.addr, align 8, !tbaa !6
  %st_nlink = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %12 = load i16, i16* %st_nlink, align 2, !tbaa !9
  %conv8 = zext i16 %12 to i32
  %cmp9 = icmp sgt i32 %conv8, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.7
  %13 = load i32, i32* @f_cat, align 4, !tbaa !2
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.end.21, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %14 = load i32, i32* @f_precious, align 4, !tbaa !2
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.end.21, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.11
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %16 = load i8*, i8** @progname, align 8, !tbaa !6
  %17 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %18 = load %struct.stat*, %struct.stat** %st.addr, align 8, !tbaa !6
  %st_nlink14 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 2
  %19 = load i16, i16* %st_nlink14, align 2, !tbaa !9
  %conv15 = zext i16 %19 to i32
  %sub = sub nsw i32 %conv15, 1
  %20 = load %struct.stat*, %struct.stat** %st.addr, align 8, !tbaa !6
  %st_nlink16 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 2
  %21 = load i16, i16* %st_nlink16, align 2, !tbaa !9
  %conv17 = zext i16 %21 to i32
  %cmp18 = icmp sle i32 %conv17, 2
  %conv19 = zext i1 %cmp18 to i32
  %idx.ext = sext i32 %conv19 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i64 %idx.ext
  %call20 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i32 0, i32 0), i8* %16, i8* %17, i32 %sub, i8* %add.ptr)
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %if.end.7
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.13, %if.then.5, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.fmtdesc* @grok_format(i8* %name) #1 {
entry:
  %retval = alloca %struct.fmtdesc*, align 8
  %name.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %f = alloca %struct.fmtdesc**, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast %struct.fmtdesc*** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #6
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i8* @plainname(i8* %3)
  store i8* %call, i8** %c, align 8, !tbaa !6
  store %struct.fmtdesc** getelementptr inbounds ([5 x %struct.fmtdesc*], [5 x %struct.fmtdesc*]* @alldescs, i32 0, i32 0), %struct.fmtdesc*** %f, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8, !tbaa !6
  %5 = load %struct.fmtdesc*, %struct.fmtdesc** %4, align 8, !tbaa !6
  %tobool1 = icmp ne %struct.fmtdesc* %5, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8, !tbaa !6
  %7 = load %struct.fmtdesc*, %struct.fmtdesc** %6, align 8, !tbaa !6
  %suffix = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %7, i32 0, i32 2
  %8 = load i8*, i8** %suffix, align 8, !tbaa !21
  %tobool2 = icmp ne i8* %8, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8, !tbaa !6
  %10 = load %struct.fmtdesc*, %struct.fmtdesc** %9, align 8, !tbaa !6
  %suffix3 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %10, i32 0, i32 2
  %11 = load i8*, i8** %suffix3, align 8, !tbaa !21
  %12 = load i8, i8* %11, align 1, !tbaa !8
  %conv = sext i8 %12 to i32
  %tobool4 = icmp ne i32 %conv, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %13 = load i8*, i8** %c, align 8, !tbaa !6
  %14 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8, !tbaa !6
  %15 = load %struct.fmtdesc*, %struct.fmtdesc** %14, align 8, !tbaa !6
  %suffix6 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %15, i32 0, i32 2
  %16 = load i8*, i8** %suffix6, align 8, !tbaa !21
  %call7 = call i8* @suffix(i8* %13, i8* %16)
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.5
  %17 = load i8*, i8** %c, align 8, !tbaa !6
  call void @free(i8* %17)
  %18 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8, !tbaa !6
  %19 = load %struct.fmtdesc*, %struct.fmtdesc** %18, align 8, !tbaa !6
  store %struct.fmtdesc* %19, %struct.fmtdesc** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.fmtdesc**, %struct.fmtdesc*** %f, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.fmtdesc*, %struct.fmtdesc** %20, i32 1
  store %struct.fmtdesc** %incdec.ptr, %struct.fmtdesc*** %f, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %c, align 8, !tbaa !6
  call void @free(i8* %21)
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %entry
  store %struct.fmtdesc* null, %struct.fmtdesc** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9
  %22 = bitcast %struct.fmtdesc*** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #6
  %23 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #6
  %24 = load %struct.fmtdesc*, %struct.fmtdesc** %retval
  ret %struct.fmtdesc* %24
}

; Function Attrs: nounwind ssp uwtable
define internal void @prepare_io(%struct.fmtdesc* %desc) #1 {
entry:
  %desc.addr = alloca %struct.fmtdesc*, align 8
  store %struct.fmtdesc* %desc, %struct.fmtdesc** %desc.addr, align 8, !tbaa !6
  %0 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8, !tbaa !6
  %output = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %0, i32 0, i32 6
  %1 = load i32 (i16*)*, i32 (i16*)** %output, align 8, !tbaa !23
  store i32 (i16*)* %1, i32 (i16*)** @output, align 8, !tbaa !6
  %2 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8, !tbaa !6
  %input = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %2, i32 0, i32 5
  %3 = load i32 (i16*)*, i32 (i16*)** %input, align 8, !tbaa !24
  store i32 (i16*)* %3, i32 (i16*)** @input, align 8, !tbaa !6
  %4 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8, !tbaa !6
  %init_input = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %4, i32 0, i32 3
  %5 = load i32 ()*, i32 ()** %init_input, align 8, !tbaa !25
  store i32 ()* %5, i32 ()** @init_input, align 8, !tbaa !6
  %6 = load %struct.fmtdesc*, %struct.fmtdesc** %desc.addr, align 8, !tbaa !6
  %init_output = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %6, i32 0, i32 4
  %7 = load i32 ()*, i32 ()** %init_output, align 8, !tbaa !26
  store i32 ()* %7, i32 ()** @init_output, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @normalname(i8* %name, i8* %want, i8* %cut) #1 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %want.addr = alloca i8*, align 8
  %cut.addr = alloca i8*, align 8
  %maxlen = alloca i64, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  store i8* %want, i8** %want.addr, align 8, !tbaa !6
  store i8* %cut, i8** %cut.addr, align 8, !tbaa !6
  %0 = bitcast i64* %maxlen to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  %1 = bitcast i8** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #6
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #6
  store i8* null, i8** %p, align 8, !tbaa !6
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %p, align 8, !tbaa !6
  store i8* %4, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i64 @strlen(i8* %5)
  %add = add i64 %call, 1
  %6 = load i8*, i8** %want.addr, align 8, !tbaa !6
  %call1 = call i64 @strlen(i8* %6)
  %add2 = add i64 %add, %call1
  %7 = load i8*, i8** %cut.addr, align 8, !tbaa !6
  %call3 = call i64 @strlen(i8* %7)
  %add4 = add i64 %add2, %call3
  store i64 %add4, i64* %maxlen, align 8, !tbaa !16
  %8 = load i64, i64* %maxlen, align 8, !tbaa !16
  %call5 = call i8* @emalloc(i64 %8)
  %9 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call6 = call i8* @__strcpy_chk(i8* %call5, i8* %9, i64 -1) #6
  store i8* %call6, i8** %p, align 8, !tbaa !6
  %10 = load i8*, i8** %p, align 8, !tbaa !6
  %11 = load i8*, i8** %cut.addr, align 8, !tbaa !6
  %call7 = call i8* @suffix(i8* %10, i8* %11)
  store i8* %call7, i8** %s, align 8, !tbaa !6
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %12 = load i8*, i8** %s, align 8, !tbaa !6
  %13 = load i8*, i8** %want.addr, align 8, !tbaa !6
  %14 = load i8*, i8** %s, align 8, !tbaa !6
  %15 = call i64 @llvm.objectsize.i64.p0i8(i8* %14, i1 false)
  %call10 = call i8* @__strcpy_chk(i8* %12, i8* %13, i64 %15) #6
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %16 = load i8*, i8** %want.addr, align 8, !tbaa !6
  %17 = load i8, i8* %16, align 1, !tbaa !8
  %conv = sext i8 %17 to i32
  %tobool11 = icmp ne i32 %conv, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.else
  %18 = load i8*, i8** %p, align 8, !tbaa !6
  %19 = load i8*, i8** %want.addr, align 8, !tbaa !6
  %call12 = call i8* @suffix(i8* %18, i8* %19)
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %20 = load i8*, i8** %p, align 8, !tbaa !6
  %21 = load i8*, i8** %want.addr, align 8, !tbaa !6
  %22 = load i8*, i8** %p, align 8, !tbaa !6
  %23 = call i64 @llvm.objectsize.i64.p0i8(i8* %22, i1 false)
  %call15 = call i8* @__strcat_chk(i8* %20, i8* %21, i64 %23) #6
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  %24 = load i8*, i8** %p, align 8, !tbaa !6
  store i8* %24, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %25 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #6
  %26 = bitcast i8** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #6
  %27 = bitcast i64* %maxlen to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #6
  %28 = load i8*, i8** %retval
  ret i8* %28
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind
declare i8* @__strcat_chk(i8*, i8*, i64) #4

declare i32 @memcmp(i8*, i8*, i64) #0

declare i8* @malloc(i64) #0

declare i32 @"\01_fstat$INODE64"(i32, %struct.stat*) #0

declare i32 @fileno(%struct.__sFILE*) #0

; Function Attrs: nounwind ssp uwtable
define internal i8* @plainname(i8* %name) #1 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i8* @normalname(i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0))
  ret i8* %call
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @length_okay(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %max_filename_length = alloca i64, align 8
  %end = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = bitcast i64* %max_filename_length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #6
  store i64 0, i64* %max_filename_length, align 8, !tbaa !16
  %1 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #6
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call = call i8* @endname(i8* %3)
  store i8* %call, i8** %end, align 8, !tbaa !6
  %4 = load i64, i64* %max_filename_length, align 8, !tbaa !16
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %end, align 8, !tbaa !6
  %call1 = call i64 @strlen(i8* %5)
  %6 = load i64, i64* %max_filename_length, align 8, !tbaa !16
  %cmp2 = icmp ugt i64 %call1, %6
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %land.lhs.true
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %8 = load i8*, i8** @progname, align 8, !tbaa !6
  %9 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call4 = call i8* @endname(i8* %9)
  %10 = load i64, i64* %max_filename_length, align 8, !tbaa !16
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i32 0, i32 0), i8* %8, i8* %call4, i64 %10)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.3, %if.then
  %11 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #6
  %12 = bitcast i64* %max_filename_length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #6
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @"\01_open"(i8*, i32, ...) #0

declare %struct.__sFILE* @"\01_fdopen"(i32, i8*) #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @ok_to_replace(i8* %name) #1 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %reply = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  %0 = bitcast i32* %reply to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #6
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #6
  %2 = load i32, i32* @f_force, align 4, !tbaa !2
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call = call i32 @fileno(%struct.__sFILE* %3)
  %call1 = call i32 @isatty(i32 %call)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.54, i32 0, i32 0), i8* %5, i8* %6)
  %7 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call6 = call i32 @fflush(%struct.__sFILE* %7)
  %call7 = call i32 @getchar()
  store i32 %call7, i32* %reply, align 4, !tbaa !2
  store i32 %call7, i32* %c, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %8 = load i32, i32* %c, align 4, !tbaa !2
  %cmp = icmp ne i32 %8, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %c, align 4, !tbaa !2
  %cmp8 = icmp ne i32 %9, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %call9 = call i32 @getchar()
  store i32 %call9, i32* %c, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i32, i32* %reply, align 4, !tbaa !2
  %cmp10 = icmp eq i32 %11, 121
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %for.end
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %call13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0))
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.11, %if.then.3, %if.then
  %13 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  %14 = bitcast i32* %reply to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #6
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @"\01_close"(i32) #0

declare i32 @isatty(i32) #0

declare i32 @getchar() #0

declare %struct.gsm_state* @gsm_create() #0

declare i32 @gsm_option(%struct.gsm_state*, i32, i32*) #0

declare i64 @fread(i8*, i64, i64, %struct.__sFILE*) #0

declare void @gsm_destroy(%struct.gsm_state*) #0

declare i32 @gsm_decode(%struct.gsm_state*, i8*, i16*) #0

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

declare void @gsm_encode(%struct.gsm_state*, i16*, i8*) #0

declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #0

declare i32 @utime(i8*, %struct.utimbuf*) #0

declare i32 @"\01_fchmod"(i32, i16 zeroext) #0

declare i32 @fchown(i32, i32, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind argmemonly }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!9 = !{!10, !11, i64 6}
!10 = !{!"stat", !3, i64 0, !11, i64 4, !11, i64 6, !12, i64 8, !3, i64 16, !3, i64 20, !3, i64 24, !13, i64 32, !13, i64 48, !13, i64 64, !13, i64 80, !12, i64 96, !12, i64 104, !3, i64 112, !3, i64 116, !3, i64 120, !3, i64 124, !4, i64 128}
!11 = !{!"short", !4, i64 0}
!12 = !{!"long long", !4, i64 0}
!13 = !{!"timespec", !14, i64 0, !14, i64 8}
!14 = !{!"long", !4, i64 0}
!15 = !{!10, !14, i64 32}
!16 = !{!14, !14, i64 0}
!17 = !{!10, !14, i64 48}
!18 = !{!10, !11, i64 4}
!19 = !{!10, !3, i64 16}
!20 = !{!10, !3, i64 20}
!21 = !{!22, !7, i64 16}
!22 = !{!"fmtdesc", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!23 = !{!22, !7, i64 48}
!24 = !{!22, !7, i64 40}
!25 = !{!22, !7, i64 24}
!26 = !{!22, !7, i64 32}
