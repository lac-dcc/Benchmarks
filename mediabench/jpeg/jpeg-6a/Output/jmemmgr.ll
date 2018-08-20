; ModuleID = 'jmemmgr.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { {}*, void (%struct.jpeg_common_struct*, i32)*, {}*, void (%struct.jpeg_common_struct*, i8*)*, {}*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type { i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.jvirt_sarray_control*, %struct.backing_store_struct }
%struct.backing_store_struct = type { void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, %struct.__sFILE*, [64 x i8] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.jvirt_barray_control = type { [64 x i16]**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.jvirt_barray_control*, %struct.backing_store_struct }
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr, [2 x %union.small_pool_struct*], [2 x %union.large_pool_struct*], %struct.jvirt_sarray_control*, %struct.jvirt_barray_control*, i64, i32 }
%union.small_pool_struct = type { %struct.anon }
%struct.anon = type { %union.small_pool_struct*, i64, i64 }
%union.large_pool_struct = type { %struct.anon.0 }
%struct.anon.0 = type { %union.large_pool_struct*, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@first_pool_slop = internal constant [2 x i64] [i64 1600, i64 16000], align 16
@extra_pool_slop = internal constant [2 x i64] [i64 0, i64 5000], align 16

; Function Attrs: nounwind ssp uwtable
define void @jinit_memory_mgr(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %max_to_use = alloca i64, align 8
  %pool = alloca i32, align 4
  %test_mac = alloca i64, align 8
  %memenv = alloca i8*, align 8
  %ch = alloca i8, align 1
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i64* %max_to_use to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i32* %pool to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %3 = bitcast i64* %test_mac to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  store i64 1000000000, i64* %test_mac, align 8, !tbaa !9
  %5 = load i64, i64* %test_mac, align 8, !tbaa !9
  %cmp = icmp ne i64 %5, 1000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 3, i32* %msg_code, align 4, !tbaa !12
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %8, i32 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i32 0, i32 0
  %error_exit3 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %10 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit3, align 8, !tbaa !14
  %11 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %10(%struct.jpeg_common_struct* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i64 @jpeg_mem_init(%struct.jpeg_common_struct* %12)
  store i64 %call, i64* %max_to_use, align 8, !tbaa !9
  %13 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %call4 = call i8* @jpeg_get_small(%struct.jpeg_common_struct* %13, i64 160)
  %14 = bitcast i8* %call4 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %14, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %15 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %cmp5 = icmp eq %struct.my_memory_mgr* %15, null
  br i1 %cmp5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %16 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_mem_term(%struct.jpeg_common_struct* %16)
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err7 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err7, align 8, !tbaa !11
  %msg_code8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 5
  store i32 53, i32* %msg_code8, align 4, !tbaa !12
  %19 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4, !tbaa !15
  %21 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err10 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err10, align 8, !tbaa !11
  %error_exit11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 0
  %error_exit12 = bitcast {}** %error_exit11 to void (%struct.jpeg_common_struct*)**
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit12, align 8, !tbaa !14
  %24 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %23(%struct.jpeg_common_struct* %24)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.6, %if.end
  %25 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %25, i32 0, i32 0
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub, i32 0, i32 0
  store i8* (%struct.jpeg_common_struct*, i32, i64)* @alloc_small, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !16
  %26 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub14 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %26, i32 0, i32 0
  %alloc_large = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub14, i32 0, i32 1
  store i8* (%struct.jpeg_common_struct*, i32, i64)* @alloc_large, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_large, align 8, !tbaa !19
  %27 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub15 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %27, i32 0, i32 0
  %alloc_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub15, i32 0, i32 2
  store i8** (%struct.jpeg_common_struct*, i32, i32, i32)* @alloc_sarray, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_sarray, align 8, !tbaa !20
  %28 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub16 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %28, i32 0, i32 0
  %alloc_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub16, i32 0, i32 3
  store [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)* @alloc_barray, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)** %alloc_barray, align 8, !tbaa !21
  %29 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub17 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %29, i32 0, i32 0
  %request_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub17, i32 0, i32 4
  store %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)* @request_virt_sarray, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_sarray, align 8, !tbaa !22
  %30 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub18 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %30, i32 0, i32 0
  %request_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub18, i32 0, i32 5
  store %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)* @request_virt_barray, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)** %request_virt_barray, align 8, !tbaa !23
  %31 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub19 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %31, i32 0, i32 0
  %realize_virt_arrays = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub19, i32 0, i32 6
  %realize_virt_arrays20 = bitcast {}** %realize_virt_arrays to void (%struct.jpeg_common_struct*)**
  store void (%struct.jpeg_common_struct*)* @realize_virt_arrays, void (%struct.jpeg_common_struct*)** %realize_virt_arrays20, align 8, !tbaa !24
  %32 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub21 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %32, i32 0, i32 0
  %access_virt_sarray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub21, i32 0, i32 7
  store i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)* @access_virt_sarray, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)** %access_virt_sarray, align 8, !tbaa !25
  %33 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub22 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %33, i32 0, i32 0
  %access_virt_barray = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub22, i32 0, i32 8
  store [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)* @access_virt_barray, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %access_virt_barray, align 8, !tbaa !26
  %34 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub23 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %34, i32 0, i32 0
  %free_pool = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub23, i32 0, i32 9
  store void (%struct.jpeg_common_struct*, i32)* @free_pool, void (%struct.jpeg_common_struct*, i32)** %free_pool, align 8, !tbaa !27
  %35 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub24 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %35, i32 0, i32 0
  %self_destruct = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub24, i32 0, i32 10
  %self_destruct25 = bitcast {}** %self_destruct to void (%struct.jpeg_common_struct*)**
  store void (%struct.jpeg_common_struct*)* @self_destruct, void (%struct.jpeg_common_struct*)** %self_destruct25, align 8, !tbaa !28
  %36 = load i64, i64* %max_to_use, align 8, !tbaa !9
  %37 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub26 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %37, i32 0, i32 0
  %max_memory_to_use = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub26, i32 0, i32 11
  store i64 %36, i64* %max_memory_to_use, align 8, !tbaa !29
  store i32 1, i32* %pool, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %38 = load i32, i32* %pool, align 4, !tbaa !15
  %cmp27 = icmp sge i32 %38, 0
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %pool, align 4, !tbaa !15
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %small_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %40, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list, i32 0, i64 %idxprom
  store %union.small_pool_struct* null, %union.small_pool_struct** %arrayidx28, align 8, !tbaa !2
  %41 = load i32, i32* %pool, align 4, !tbaa !15
  %idxprom29 = sext i32 %41 to i64
  %42 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %large_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %42, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list, i32 0, i64 %idxprom29
  store %union.large_pool_struct* null, %union.large_pool_struct** %arrayidx30, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %pool, align 4, !tbaa !15
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %pool, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %44, i32 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %virt_sarray_list, align 8, !tbaa !30
  %45 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %45, i32 0, i32 4
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %virt_barray_list, align 8, !tbaa !31
  %46 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %46, i32 0, i32 5
  store i64 160, i64* %total_space_allocated, align 8, !tbaa !32
  %47 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub31 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %47, i32 0, i32 0
  %48 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem32 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %48, i32 0, i32 1
  store %struct.jpeg_memory_mgr* %pub31, %struct.jpeg_memory_mgr** %mem32, align 8, !tbaa !6
  %49 = bitcast i8** %memenv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #3
  %call33 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0))
  store i8* %call33, i8** %memenv, align 8, !tbaa !2
  %cmp34 = icmp ne i8* %call33, null
  br i1 %cmp34, label %if.then.35, label %if.end.50

if.then.35:                                       ; preds = %for.end
  call void @llvm.lifetime.start(i64 1, i8* %ch) #3
  store i8 120, i8* %ch, align 1, !tbaa !33
  %50 = load i8*, i8** %memenv, align 8, !tbaa !2
  %call36 = call i32 (i8*, i8*, ...) @sscanf(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64* %max_to_use, i8* %ch)
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.then.35
  %51 = load i8, i8* %ch, align 1, !tbaa !33
  %conv = sext i8 %51 to i32
  %cmp39 = icmp eq i32 %conv, 109
  br i1 %cmp39, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.38
  %52 = load i8, i8* %ch, align 1, !tbaa !33
  %conv41 = sext i8 %52 to i32
  %cmp42 = icmp eq i32 %conv41, 77
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false, %if.then.38
  %53 = load i64, i64* %max_to_use, align 8, !tbaa !9
  %mul = mul nsw i64 %53, 1000
  store i64 %mul, i64* %max_to_use, align 8, !tbaa !9
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false
  %54 = load i64, i64* %max_to_use, align 8, !tbaa !9
  %mul46 = mul nsw i64 %54, 1000
  %55 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %pub47 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %55, i32 0, i32 0
  %max_memory_to_use48 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %pub47, i32 0, i32 11
  store i64 %mul46, i64* %max_memory_to_use48, align 8, !tbaa !29
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.45, %if.then.35
  call void @llvm.lifetime.end(i64 1, i8* %ch) #3
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %for.end
  %56 = bitcast i8** %memenv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  %57 = bitcast i64* %test_mac to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #3
  %58 = bitcast i32* %pool to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #3
  %59 = bitcast i64* %max_to_use to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #3
  %60 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #3
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @jpeg_mem_init(%struct.jpeg_common_struct*) #2

declare i8* @jpeg_get_small(%struct.jpeg_common_struct*, i64) #2

declare void @jpeg_mem_term(%struct.jpeg_common_struct*) #2

; Function Attrs: nounwind ssp uwtable
define internal i8* @alloc_small(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %sizeofobject.addr = alloca i64, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %hdr_ptr = alloca %union.small_pool_struct*, align 8
  %prev_hdr_ptr = alloca %union.small_pool_struct*, align 8
  %data_ptr = alloca i8*, align 8
  %odd_bytes = alloca i64, align 8
  %min_request = alloca i64, align 8
  %slop = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pool_id, i32* %pool_id.addr, align 4, !tbaa !15
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8, !tbaa !9
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast %union.small_pool_struct** %hdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast %union.small_pool_struct** %prev_hdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i64* %odd_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i64* %min_request to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast i64* %slop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %cmp = icmp ugt i64 %10, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void @out_of_memory(%struct.jpeg_common_struct* %11, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %rem = urem i64 %12, 8
  store i64 %rem, i64* %odd_bytes, align 8, !tbaa !9
  %13 = load i64, i64* %odd_bytes, align 8, !tbaa !9
  %cmp2 = icmp ugt i64 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i64, i64* %odd_bytes, align 8, !tbaa !9
  %sub = sub i64 8, %14
  %15 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %add = add i64 %15, %sub
  store i64 %add, i64* %sizeofobject.addr, align 8, !tbaa !9
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %16 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp5 = icmp slt i32 %16, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %17 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp6 = icmp sge i32 %17, 2
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %18 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %18, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4, !tbaa !12
  %20 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %21 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %21, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %20, i32* %arrayidx, align 4, !tbaa !15
  %23 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %23, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %error_exit10 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit10, align 8, !tbaa !14
  %26 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %25(%struct.jpeg_common_struct* %26)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %lor.lhs.false
  store %union.small_pool_struct* null, %union.small_pool_struct** %prev_hdr_ptr, align 8, !tbaa !2
  %27 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %small_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %28, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list, i32 0, i64 %idxprom
  %29 = load %union.small_pool_struct*, %union.small_pool_struct** %arrayidx12, align 8, !tbaa !2
  store %union.small_pool_struct* %29, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %if.end.11
  %30 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %cmp13 = icmp ne %union.small_pool_struct* %30, null
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr = bitcast %union.small_pool_struct* %31 to %struct.anon*
  %bytes_left = getelementptr inbounds %struct.anon, %struct.anon* %hdr, i32 0, i32 2
  %32 = load i64, i64* %bytes_left, align 8, !tbaa !34
  %33 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %cmp14 = icmp uge i64 %32, %33
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body
  br label %while.end

if.end.16:                                        ; preds = %while.body
  %34 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  store %union.small_pool_struct* %34, %union.small_pool_struct** %prev_hdr_ptr, align 8, !tbaa !2
  %35 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr17 = bitcast %union.small_pool_struct* %35 to %struct.anon*
  %next = getelementptr inbounds %struct.anon, %struct.anon* %hdr17, i32 0, i32 0
  %36 = load %union.small_pool_struct*, %union.small_pool_struct** %next, align 8, !tbaa !36
  store %union.small_pool_struct* %36, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  br label %while.cond

while.end:                                        ; preds = %if.then.15, %while.cond
  %37 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %cmp18 = icmp eq %union.small_pool_struct* %37, null
  br i1 %cmp18, label %if.then.19, label %if.end.57

if.then.19:                                       ; preds = %while.end
  %38 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %add20 = add i64 %38, 24
  store i64 %add20, i64* %min_request, align 8, !tbaa !9
  %39 = load %union.small_pool_struct*, %union.small_pool_struct** %prev_hdr_ptr, align 8, !tbaa !2
  %cmp21 = icmp eq %union.small_pool_struct* %39, null
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %40 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom23 = sext i32 %40 to i64
  %arrayidx24 = getelementptr inbounds [2 x i64], [2 x i64]* @first_pool_slop, i32 0, i64 %idxprom23
  %41 = load i64, i64* %arrayidx24, align 8, !tbaa !9
  store i64 %41, i64* %slop, align 8, !tbaa !9
  br label %if.end.27

if.else:                                          ; preds = %if.then.19
  %42 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom25 = sext i32 %42 to i64
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* @extra_pool_slop, i32 0, i64 %idxprom25
  %43 = load i64, i64* %arrayidx26, align 8, !tbaa !9
  store i64 %43, i64* %slop, align 8, !tbaa !9
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.22
  %44 = load i64, i64* %slop, align 8, !tbaa !9
  %45 = load i64, i64* %min_request, align 8, !tbaa !9
  %sub28 = sub i64 1000000000, %45
  %cmp29 = icmp ugt i64 %44, %sub28
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %46 = load i64, i64* %min_request, align 8, !tbaa !9
  %sub31 = sub i64 1000000000, %46
  store i64 %sub31, i64* %slop, align 8, !tbaa !9
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  br label %for.cond

for.cond:                                         ; preds = %if.end.39, %if.end.32
  %47 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %48 = load i64, i64* %min_request, align 8, !tbaa !9
  %49 = load i64, i64* %slop, align 8, !tbaa !9
  %add33 = add i64 %48, %49
  %call = call i8* @jpeg_get_small(%struct.jpeg_common_struct* %47, i64 %add33)
  %50 = bitcast i8* %call to %union.small_pool_struct*
  store %union.small_pool_struct* %50, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %51 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %cmp34 = icmp ne %union.small_pool_struct* %51, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.cond
  br label %for.end

if.end.36:                                        ; preds = %for.cond
  %52 = load i64, i64* %slop, align 8, !tbaa !9
  %div = udiv i64 %52, 2
  store i64 %div, i64* %slop, align 8, !tbaa !9
  %53 = load i64, i64* %slop, align 8, !tbaa !9
  %cmp37 = icmp ult i64 %53, 50
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.36
  %54 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void @out_of_memory(%struct.jpeg_common_struct* %54, i32 2)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.36
  br label %for.cond

for.end:                                          ; preds = %if.then.35
  %55 = load i64, i64* %min_request, align 8, !tbaa !9
  %56 = load i64, i64* %slop, align 8, !tbaa !9
  %add40 = add i64 %55, %56
  %57 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %57, i32 0, i32 5
  %58 = load i64, i64* %total_space_allocated, align 8, !tbaa !32
  %add41 = add i64 %58, %add40
  store i64 %add41, i64* %total_space_allocated, align 8, !tbaa !32
  %59 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr42 = bitcast %union.small_pool_struct* %59 to %struct.anon*
  %next43 = getelementptr inbounds %struct.anon, %struct.anon* %hdr42, i32 0, i32 0
  store %union.small_pool_struct* null, %union.small_pool_struct** %next43, align 8, !tbaa !36
  %60 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr44 = bitcast %union.small_pool_struct* %60 to %struct.anon*
  %bytes_used = getelementptr inbounds %struct.anon, %struct.anon* %hdr44, i32 0, i32 1
  store i64 0, i64* %bytes_used, align 8, !tbaa !37
  %61 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %62 = load i64, i64* %slop, align 8, !tbaa !9
  %add45 = add i64 %61, %62
  %63 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr46 = bitcast %union.small_pool_struct* %63 to %struct.anon*
  %bytes_left47 = getelementptr inbounds %struct.anon, %struct.anon* %hdr46, i32 0, i32 2
  store i64 %add45, i64* %bytes_left47, align 8, !tbaa !34
  %64 = load %union.small_pool_struct*, %union.small_pool_struct** %prev_hdr_ptr, align 8, !tbaa !2
  %cmp48 = icmp eq %union.small_pool_struct* %64, null
  br i1 %cmp48, label %if.then.49, label %if.else.53

if.then.49:                                       ; preds = %for.end
  %65 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %66 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom50 = sext i32 %66 to i64
  %67 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %small_list51 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %67, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list51, i32 0, i64 %idxprom50
  store %union.small_pool_struct* %65, %union.small_pool_struct** %arrayidx52, align 8, !tbaa !2
  br label %if.end.56

if.else.53:                                       ; preds = %for.end
  %68 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %69 = load %union.small_pool_struct*, %union.small_pool_struct** %prev_hdr_ptr, align 8, !tbaa !2
  %hdr54 = bitcast %union.small_pool_struct* %69 to %struct.anon*
  %next55 = getelementptr inbounds %struct.anon, %struct.anon* %hdr54, i32 0, i32 0
  store %union.small_pool_struct* %68, %union.small_pool_struct** %next55, align 8, !tbaa !36
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %if.then.49
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %while.end
  %70 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds %union.small_pool_struct, %union.small_pool_struct* %70, i64 1
  %71 = bitcast %union.small_pool_struct* %add.ptr to i8*
  store i8* %71, i8** %data_ptr, align 8, !tbaa !2
  %72 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr58 = bitcast %union.small_pool_struct* %72 to %struct.anon*
  %bytes_used59 = getelementptr inbounds %struct.anon, %struct.anon* %hdr58, i32 0, i32 1
  %73 = load i64, i64* %bytes_used59, align 8, !tbaa !37
  %74 = load i8*, i8** %data_ptr, align 8, !tbaa !2
  %add.ptr60 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %add.ptr60, i8** %data_ptr, align 8, !tbaa !2
  %75 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %76 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr61 = bitcast %union.small_pool_struct* %76 to %struct.anon*
  %bytes_used62 = getelementptr inbounds %struct.anon, %struct.anon* %hdr61, i32 0, i32 1
  %77 = load i64, i64* %bytes_used62, align 8, !tbaa !37
  %add63 = add i64 %77, %75
  store i64 %add63, i64* %bytes_used62, align 8, !tbaa !37
  %78 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %79 = load %union.small_pool_struct*, %union.small_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr64 = bitcast %union.small_pool_struct* %79 to %struct.anon*
  %bytes_left65 = getelementptr inbounds %struct.anon, %struct.anon* %hdr64, i32 0, i32 2
  %80 = load i64, i64* %bytes_left65, align 8, !tbaa !34
  %sub66 = sub i64 %80, %78
  store i64 %sub66, i64* %bytes_left65, align 8, !tbaa !34
  %81 = load i8*, i8** %data_ptr, align 8, !tbaa !2
  %82 = bitcast i64* %slop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #3
  %83 = bitcast i64* %min_request to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #3
  %84 = bitcast i64* %odd_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #3
  %85 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #3
  %86 = bitcast %union.small_pool_struct** %prev_hdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #3
  %87 = bitcast %union.small_pool_struct** %hdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #3
  %88 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #3
  ret i8* %81
}

; Function Attrs: nounwind ssp uwtable
define internal i8* @alloc_large(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %sizeofobject.addr = alloca i64, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %hdr_ptr = alloca %union.large_pool_struct*, align 8
  %odd_bytes = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pool_id, i32* %pool_id.addr, align 4, !tbaa !15
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8, !tbaa !9
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast %union.large_pool_struct** %hdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i64* %odd_bytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %cmp = icmp ugt i64 %6, 999999976
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void @out_of_memory(%struct.jpeg_common_struct* %7, i32 3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %rem = urem i64 %8, 8
  store i64 %rem, i64* %odd_bytes, align 8, !tbaa !9
  %9 = load i64, i64* %odd_bytes, align 8, !tbaa !9
  %cmp2 = icmp ugt i64 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i64, i64* %odd_bytes, align 8, !tbaa !9
  %sub = sub i64 8, %10
  %11 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %add = add i64 %11, %sub
  store i64 %add, i64* %sizeofobject.addr, align 8, !tbaa !9
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %12 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %13 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp6 = icmp sge i32 %13, 2
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4, !tbaa !12
  %16 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err8 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %17, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err8, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %16, i32* %arrayidx, align 4, !tbaa !15
  %19 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %19, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err9, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 0
  %error_exit10 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit10, align 8, !tbaa !14
  %22 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %21(%struct.jpeg_common_struct* %22)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %lor.lhs.false
  %23 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %24 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %add12 = add i64 %24, 24
  %call = call i8* @jpeg_get_large(%struct.jpeg_common_struct* %23, i64 %add12)
  %25 = bitcast i8* %call to %union.large_pool_struct*
  store %union.large_pool_struct* %25, %union.large_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %26 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %cmp13 = icmp eq %union.large_pool_struct* %26, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %27 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void @out_of_memory(%struct.jpeg_common_struct* %27, i32 4)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %28 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %add16 = add i64 %28, 24
  %29 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %29, i32 0, i32 5
  %30 = load i64, i64* %total_space_allocated, align 8, !tbaa !32
  %add17 = add i64 %30, %add16
  store i64 %add17, i64* %total_space_allocated, align 8, !tbaa !32
  %31 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %large_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %32, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list, i32 0, i64 %idxprom
  %33 = load %union.large_pool_struct*, %union.large_pool_struct** %arrayidx18, align 8, !tbaa !2
  %34 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr = bitcast %union.large_pool_struct* %34 to %struct.anon.0*
  %next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr, i32 0, i32 0
  store %union.large_pool_struct* %33, %union.large_pool_struct** %next, align 8, !tbaa !36
  %35 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !9
  %36 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr19 = bitcast %union.large_pool_struct* %36 to %struct.anon.0*
  %bytes_used = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr19, i32 0, i32 1
  store i64 %35, i64* %bytes_used, align 8, !tbaa !37
  %37 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %hdr20 = bitcast %union.large_pool_struct* %37 to %struct.anon.0*
  %bytes_left = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr20, i32 0, i32 2
  store i64 0, i64* %bytes_left, align 8, !tbaa !34
  %38 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %39 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom21 = sext i32 %39 to i64
  %40 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %large_list22 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %40, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list22, i32 0, i64 %idxprom21
  store %union.large_pool_struct* %38, %union.large_pool_struct** %arrayidx23, align 8, !tbaa !2
  %41 = load %union.large_pool_struct*, %union.large_pool_struct** %hdr_ptr, align 8, !tbaa !2
  %add.ptr = getelementptr inbounds %union.large_pool_struct, %union.large_pool_struct* %41, i64 1
  %42 = bitcast %union.large_pool_struct* %add.ptr to i8*
  %43 = bitcast i64* %odd_bytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #3
  %44 = bitcast %union.large_pool_struct** %hdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #3
  %45 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #3
  ret i8* %42
}

; Function Attrs: nounwind ssp uwtable
define internal i8** @alloc_sarray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %samplesperrow, i32 %numrows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %samplesperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca i8**, align 8
  %workspace = alloca i8*, align 8
  %rowsperchunk = alloca i32, align 4
  %currow = alloca i32, align 4
  %i = alloca i32, align 4
  %ltemp = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pool_id, i32* %pool_id.addr, align 4, !tbaa !15
  store i32 %samplesperrow, i32* %samplesperrow.addr, align 4, !tbaa !15
  store i32 %numrows, i32* %numrows.addr, align 4, !tbaa !15
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast i8*** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i8** %workspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %rowsperchunk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %currow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = load i32, i32* %samplesperrow.addr, align 4, !tbaa !15
  %conv = zext i32 %10 to i64
  %mul = mul i64 %conv, 1
  %div = udiv i64 999999976, %mul
  store i64 %div, i64* %ltemp, align 8, !tbaa !9
  %11 = load i64, i64* %ltemp, align 8, !tbaa !9
  %cmp = icmp sle i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4, !tbaa !12
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8, !tbaa !14
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %16(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i64, i64* %ltemp, align 8, !tbaa !9
  %19 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %conv5 = zext i32 %19 to i64
  %cmp6 = icmp slt i64 %18, %conv5
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %20 = load i64, i64* %ltemp, align 8, !tbaa !9
  %conv9 = trunc i64 %20 to i32
  store i32 %conv9, i32* %rowsperchunk, align 4, !tbaa !15
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  store i32 %21, i32* %rowsperchunk, align 4, !tbaa !15
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %22 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  %23 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %23, i32 0, i32 6
  store i32 %22, i32* %last_rowsperchunk, align 4, !tbaa !38
  %24 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %26 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %conv11 = zext i32 %26 to i64
  %mul12 = mul i64 %conv11, 8
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %24, i32 %25, i64 %mul12)
  %27 = bitcast i8* %call to i8**
  store i8** %27, i8*** %result, align 8, !tbaa !2
  store i32 0, i32* %currow, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.10
  %28 = load i32, i32* %currow, align 4, !tbaa !15
  %29 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %cmp13 = icmp ult i32 %28, %29
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  %31 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %32 = load i32, i32* %currow, align 4, !tbaa !15
  %sub = sub i32 %31, %32
  %cmp15 = icmp ult i32 %30, %sub
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %33 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %34 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %35 = load i32, i32* %currow, align 4, !tbaa !15
  %sub17 = sub i32 %34, %35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %sub17, %cond.false ]
  store i32 %cond, i32* %rowsperchunk, align 4, !tbaa !15
  %36 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %38 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  %conv18 = zext i32 %38 to i64
  %39 = load i32, i32* %samplesperrow.addr, align 4, !tbaa !15
  %conv19 = zext i32 %39 to i64
  %mul20 = mul i64 %conv18, %conv19
  %mul21 = mul i64 %mul20, 1
  %call22 = call i8* @alloc_large(%struct.jpeg_common_struct* %36, i32 %37, i64 %mul21)
  store i8* %call22, i8** %workspace, align 8, !tbaa !2
  %40 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  store i32 %40, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %41 = load i32, i32* %i, align 4, !tbaa !15
  %cmp23 = icmp ugt i32 %41, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i8*, i8** %workspace, align 8, !tbaa !2
  %43 = load i32, i32* %currow, align 4, !tbaa !15
  %inc = add i32 %43, 1
  store i32 %inc, i32* %currow, align 4, !tbaa !15
  %idxprom = zext i32 %43 to i64
  %44 = load i8**, i8*** %result, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8*, i8** %44, i64 %idxprom
  store i8* %42, i8** %arrayidx, align 8, !tbaa !2
  %45 = load i32, i32* %samplesperrow.addr, align 4, !tbaa !15
  %46 = load i8*, i8** %workspace, align 8, !tbaa !2
  %idx.ext = zext i32 %45 to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  store i8* %add.ptr, i8** %workspace, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4, !tbaa !15
  %dec = add i32 %47, -1
  store i32 %dec, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %48 = load i8**, i8*** %result, align 8, !tbaa !2
  %49 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #3
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #3
  %51 = bitcast i32* %currow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i32* %rowsperchunk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast i8** %workspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #3
  %54 = bitcast i8*** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #3
  %55 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  ret i8** %48
}

; Function Attrs: nounwind ssp uwtable
define internal [64 x i16]** @alloc_barray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %blocksperrow, i32 %numrows) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %blocksperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca [64 x i16]**, align 8
  %workspace = alloca [64 x i16]*, align 8
  %rowsperchunk = alloca i32, align 4
  %currow = alloca i32, align 4
  %i = alloca i32, align 4
  %ltemp = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pool_id, i32* %pool_id.addr, align 4, !tbaa !15
  store i32 %blocksperrow, i32* %blocksperrow.addr, align 4, !tbaa !15
  store i32 %numrows, i32* %numrows.addr, align 4, !tbaa !15
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast [64 x i16]*** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast [64 x i16]** %workspace to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i32* %rowsperchunk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %currow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = load i32, i32* %blocksperrow.addr, align 4, !tbaa !15
  %conv = zext i32 %10 to i64
  %mul = mul i64 %conv, 128
  %div = udiv i64 999999976, %mul
  store i64 %div, i64* %ltemp, align 8, !tbaa !9
  %11 = load i64, i64* %ltemp, align 8, !tbaa !9
  %cmp = icmp sle i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 69, i32* %msg_code, align 4, !tbaa !12
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8, !tbaa !14
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %16(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i64, i64* %ltemp, align 8, !tbaa !9
  %19 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %conv5 = zext i32 %19 to i64
  %cmp6 = icmp slt i64 %18, %conv5
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %20 = load i64, i64* %ltemp, align 8, !tbaa !9
  %conv9 = trunc i64 %20 to i32
  store i32 %conv9, i32* %rowsperchunk, align 4, !tbaa !15
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  store i32 %21, i32* %rowsperchunk, align 4, !tbaa !15
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %22 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  %23 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %23, i32 0, i32 6
  store i32 %22, i32* %last_rowsperchunk, align 4, !tbaa !38
  %24 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %25 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %26 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %conv11 = zext i32 %26 to i64
  %mul12 = mul i64 %conv11, 8
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %24, i32 %25, i64 %mul12)
  %27 = bitcast i8* %call to [64 x i16]**
  store [64 x i16]** %27, [64 x i16]*** %result, align 8, !tbaa !2
  store i32 0, i32* %currow, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end.10
  %28 = load i32, i32* %currow, align 4, !tbaa !15
  %29 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %cmp13 = icmp ult i32 %28, %29
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  %31 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %32 = load i32, i32* %currow, align 4, !tbaa !15
  %sub = sub i32 %31, %32
  %cmp15 = icmp ult i32 %30, %sub
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %33 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %34 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %35 = load i32, i32* %currow, align 4, !tbaa !15
  %sub17 = sub i32 %34, %35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %sub17, %cond.false ]
  store i32 %cond, i32* %rowsperchunk, align 4, !tbaa !15
  %36 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %38 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  %conv18 = zext i32 %38 to i64
  %39 = load i32, i32* %blocksperrow.addr, align 4, !tbaa !15
  %conv19 = zext i32 %39 to i64
  %mul20 = mul i64 %conv18, %conv19
  %mul21 = mul i64 %mul20, 128
  %call22 = call i8* @alloc_large(%struct.jpeg_common_struct* %36, i32 %37, i64 %mul21)
  %40 = bitcast i8* %call22 to [64 x i16]*
  store [64 x i16]* %40, [64 x i16]** %workspace, align 8, !tbaa !2
  %41 = load i32, i32* %rowsperchunk, align 4, !tbaa !15
  store i32 %41, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %42 = load i32, i32* %i, align 4, !tbaa !15
  %cmp23 = icmp ugt i32 %42, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load [64 x i16]*, [64 x i16]** %workspace, align 8, !tbaa !2
  %44 = load i32, i32* %currow, align 4, !tbaa !15
  %inc = add i32 %44, 1
  store i32 %inc, i32* %currow, align 4, !tbaa !15
  %idxprom = zext i32 %44 to i64
  %45 = load [64 x i16]**, [64 x i16]*** %result, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %45, i64 %idxprom
  store [64 x i16]* %43, [64 x i16]** %arrayidx, align 8, !tbaa !2
  %46 = load i32, i32* %blocksperrow.addr, align 4, !tbaa !15
  %47 = load [64 x i16]*, [64 x i16]** %workspace, align 8, !tbaa !2
  %idx.ext = zext i32 %46 to i64
  %add.ptr = getelementptr inbounds [64 x i16], [64 x i16]* %47, i64 %idx.ext
  store [64 x i16]* %add.ptr, [64 x i16]** %workspace, align 8, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !15
  %dec = add i32 %48, -1
  store i32 %dec, i32* %i, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %49 = load [64 x i16]**, [64 x i16]*** %result, align 8, !tbaa !2
  %50 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #3
  %51 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #3
  %52 = bitcast i32* %currow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #3
  %53 = bitcast i32* %rowsperchunk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #3
  %54 = bitcast [64 x i16]** %workspace to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #3
  %55 = bitcast [64 x i16]*** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #3
  %56 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #3
  ret [64 x i16]** %49
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.jvirt_sarray_control* @request_virt_sarray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %pre_zero, i32 %samplesperrow, i32 %numrows, i32 %maxaccess) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %pre_zero.addr = alloca i32, align 4
  %samplesperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %maxaccess.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca %struct.jvirt_sarray_control*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pool_id, i32* %pool_id.addr, align 4, !tbaa !15
  store i32 %pre_zero, i32* %pre_zero.addr, align 4, !tbaa !15
  store i32 %samplesperrow, i32* %samplesperrow.addr, align 4, !tbaa !15
  store i32 %numrows, i32* %numrows.addr, align 4, !tbaa !15
  store i32 %maxaccess, i32* %maxaccess.addr, align 4, !tbaa !15
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast %struct.jvirt_sarray_control** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp = icmp ne i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4, !tbaa !12
  %8 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %8, i32* %arrayidx, align 4, !tbaa !15
  %11 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8, !tbaa !14
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %13(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %15, i32 %16, i64 152)
  %17 = bitcast i8* %call to %struct.jvirt_sarray_control*
  store %struct.jvirt_sarray_control* %17, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %18 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %18, i32 0, i32 0
  store i8** null, i8*** %mem_buffer, align 8, !tbaa !39
  %19 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %20 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %20, i32 0, i32 1
  store i32 %19, i32* %rows_in_array, align 4, !tbaa !42
  %21 = load i32, i32* %samplesperrow.addr, align 4, !tbaa !15
  %22 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %samplesperrow5 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %22, i32 0, i32 2
  store i32 %21, i32* %samplesperrow5, align 4, !tbaa !43
  %23 = load i32, i32* %maxaccess.addr, align 4, !tbaa !15
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %maxaccess6 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %24, i32 0, i32 3
  store i32 %23, i32* %maxaccess6, align 4, !tbaa !44
  %25 = load i32, i32* %pre_zero.addr, align 4, !tbaa !15
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %pre_zero7 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %26, i32 0, i32 8
  store i32 %25, i32* %pre_zero7, align 4, !tbaa !45
  %27 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %27, i32 0, i32 10
  store i32 0, i32* %b_s_open, align 4, !tbaa !46
  %28 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %28, i32 0, i32 3
  %29 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list, align 8, !tbaa !30
  %30 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %next = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %30, i32 0, i32 11
  store %struct.jvirt_sarray_control* %29, %struct.jvirt_sarray_control** %next, align 8, !tbaa !47
  %31 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %32 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_sarray_list8 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %32, i32 0, i32 3
  store %struct.jvirt_sarray_control* %31, %struct.jvirt_sarray_control** %virt_sarray_list8, align 8, !tbaa !30
  %33 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %result, align 8, !tbaa !2
  %34 = bitcast %struct.jvirt_sarray_control** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #3
  ret %struct.jvirt_sarray_control* %33
}

; Function Attrs: nounwind ssp uwtable
define internal %struct.jvirt_barray_control* @request_virt_barray(%struct.jpeg_common_struct* %cinfo, i32 %pool_id, i32 %pre_zero, i32 %blocksperrow, i32 %numrows, i32 %maxaccess) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %pre_zero.addr = alloca i32, align 4
  %blocksperrow.addr = alloca i32, align 4
  %numrows.addr = alloca i32, align 4
  %maxaccess.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %result = alloca %struct.jvirt_barray_control*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pool_id, i32* %pool_id.addr, align 4, !tbaa !15
  store i32 %pre_zero, i32* %pre_zero.addr, align 4, !tbaa !15
  store i32 %blocksperrow, i32* %blocksperrow.addr, align 4, !tbaa !15
  store i32 %numrows, i32* %numrows.addr, align 4, !tbaa !15
  store i32 %maxaccess, i32* %maxaccess.addr, align 4, !tbaa !15
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast %struct.jvirt_barray_control** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp = icmp ne i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %6, i32 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4, !tbaa !12
  %8 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %8, i32* %arrayidx, align 4, !tbaa !15
  %11 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %11, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 0
  %error_exit4 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit4, align 8, !tbaa !14
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %13(%struct.jpeg_common_struct* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %16 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %call = call i8* @alloc_small(%struct.jpeg_common_struct* %15, i32 %16, i64 152)
  %17 = bitcast i8* %call to %struct.jvirt_barray_control*
  store %struct.jvirt_barray_control* %17, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %18 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %18, i32 0, i32 0
  store [64 x i16]** null, [64 x i16]*** %mem_buffer, align 8, !tbaa !48
  %19 = load i32, i32* %numrows.addr, align 4, !tbaa !15
  %20 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %20, i32 0, i32 1
  store i32 %19, i32* %rows_in_array, align 4, !tbaa !50
  %21 = load i32, i32* %blocksperrow.addr, align 4, !tbaa !15
  %22 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %blocksperrow5 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %22, i32 0, i32 2
  store i32 %21, i32* %blocksperrow5, align 4, !tbaa !51
  %23 = load i32, i32* %maxaccess.addr, align 4, !tbaa !15
  %24 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %maxaccess6 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %24, i32 0, i32 3
  store i32 %23, i32* %maxaccess6, align 4, !tbaa !52
  %25 = load i32, i32* %pre_zero.addr, align 4, !tbaa !15
  %26 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %pre_zero7 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %26, i32 0, i32 8
  store i32 %25, i32* %pre_zero7, align 4, !tbaa !53
  %27 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %27, i32 0, i32 10
  store i32 0, i32* %b_s_open, align 4, !tbaa !54
  %28 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %28, i32 0, i32 4
  %29 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list, align 8, !tbaa !31
  %30 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %next = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %30, i32 0, i32 11
  store %struct.jvirt_barray_control* %29, %struct.jvirt_barray_control** %next, align 8, !tbaa !55
  %31 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %32 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_barray_list8 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %32, i32 0, i32 4
  store %struct.jvirt_barray_control* %31, %struct.jvirt_barray_control** %virt_barray_list8, align 8, !tbaa !31
  %33 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %result, align 8, !tbaa !2
  %34 = bitcast %struct.jvirt_barray_control** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #3
  %35 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #3
  ret %struct.jvirt_barray_control* %33
}

; Function Attrs: nounwind ssp uwtable
define internal void @realize_virt_arrays(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %mem = alloca %struct.my_memory_mgr*, align 8
  %space_per_minheight = alloca i64, align 8
  %maximum_space = alloca i64, align 8
  %avail_mem = alloca i64, align 8
  %minheights = alloca i64, align 8
  %max_minheights = alloca i64, align 8
  %sptr = alloca %struct.jvirt_sarray_control*, align 8
  %bptr = alloca %struct.jvirt_barray_control*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast i64* %space_per_minheight to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i64* %maximum_space to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i64* %avail_mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = bitcast i64* %minheights to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %8 = bitcast i64* %max_minheights to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #3
  %9 = bitcast %struct.jvirt_sarray_control** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #3
  %10 = bitcast %struct.jvirt_barray_control** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #3
  store i64 0, i64* %space_per_minheight, align 8, !tbaa !9
  store i64 0, i64* %maximum_space, align 8, !tbaa !9
  %11 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %11, i32 0, i32 3
  %12 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list, align 8, !tbaa !30
  store %struct.jvirt_sarray_control* %12, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %cmp = icmp ne %struct.jvirt_sarray_control* %13, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %14, i32 0, i32 0
  %15 = load i8**, i8*** %mem_buffer, align 8, !tbaa !39
  %cmp2 = icmp eq i8** %15, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %16, i32 0, i32 3
  %17 = load i32, i32* %maxaccess, align 4, !tbaa !44
  %conv = zext i32 %17 to i64
  %18 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %18, i32 0, i32 2
  %19 = load i32, i32* %samplesperrow, align 4, !tbaa !43
  %conv3 = zext i32 %19 to i64
  %mul = mul nsw i64 %conv, %conv3
  %mul4 = mul i64 %mul, 1
  %20 = load i64, i64* %space_per_minheight, align 8, !tbaa !9
  %add = add i64 %20, %mul4
  store i64 %add, i64* %space_per_minheight, align 8, !tbaa !9
  %21 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %21, i32 0, i32 1
  %22 = load i32, i32* %rows_in_array, align 4, !tbaa !42
  %conv5 = zext i32 %22 to i64
  %23 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %samplesperrow6 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %23, i32 0, i32 2
  %24 = load i32, i32* %samplesperrow6, align 4, !tbaa !43
  %conv7 = zext i32 %24 to i64
  %mul8 = mul nsw i64 %conv5, %conv7
  %mul9 = mul i64 %mul8, 1
  %25 = load i64, i64* %maximum_space, align 8, !tbaa !9
  %add10 = add i64 %25, %mul9
  store i64 %add10, i64* %maximum_space, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %next = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %26, i32 0, i32 11
  %27 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %next, align 8, !tbaa !47
  store %struct.jvirt_sarray_control* %27, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %28, i32 0, i32 4
  %29 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list, align 8, !tbaa !31
  store %struct.jvirt_barray_control* %29, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.33, %for.end
  %30 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %cmp12 = icmp ne %struct.jvirt_barray_control* %30, null
  br i1 %cmp12, label %for.body.14, label %for.end.35

for.body.14:                                      ; preds = %for.cond.11
  %31 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %mem_buffer15 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %31, i32 0, i32 0
  %32 = load [64 x i16]**, [64 x i16]*** %mem_buffer15, align 8, !tbaa !48
  %cmp16 = icmp eq [64 x i16]** %32, null
  br i1 %cmp16, label %if.then.18, label %if.end.32

if.then.18:                                       ; preds = %for.body.14
  %33 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %maxaccess19 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %33, i32 0, i32 3
  %34 = load i32, i32* %maxaccess19, align 4, !tbaa !52
  %conv20 = zext i32 %34 to i64
  %35 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %35, i32 0, i32 2
  %36 = load i32, i32* %blocksperrow, align 4, !tbaa !51
  %conv21 = zext i32 %36 to i64
  %mul22 = mul nsw i64 %conv20, %conv21
  %mul23 = mul i64 %mul22, 128
  %37 = load i64, i64* %space_per_minheight, align 8, !tbaa !9
  %add24 = add i64 %37, %mul23
  store i64 %add24, i64* %space_per_minheight, align 8, !tbaa !9
  %38 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rows_in_array25 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %38, i32 0, i32 1
  %39 = load i32, i32* %rows_in_array25, align 4, !tbaa !50
  %conv26 = zext i32 %39 to i64
  %40 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %blocksperrow27 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %40, i32 0, i32 2
  %41 = load i32, i32* %blocksperrow27, align 4, !tbaa !51
  %conv28 = zext i32 %41 to i64
  %mul29 = mul nsw i64 %conv26, %conv28
  %mul30 = mul i64 %mul29, 128
  %42 = load i64, i64* %maximum_space, align 8, !tbaa !9
  %add31 = add i64 %42, %mul30
  store i64 %add31, i64* %maximum_space, align 8, !tbaa !9
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.18, %for.body.14
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %43 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %next34 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %43, i32 0, i32 11
  %44 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %next34, align 8, !tbaa !55
  store %struct.jvirt_barray_control* %44, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  br label %for.cond.11

for.end.35:                                       ; preds = %for.cond.11
  %45 = load i64, i64* %space_per_minheight, align 8, !tbaa !9
  %cmp36 = icmp sle i64 %45, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.end.35
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %for.end.35
  %46 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %47 = load i64, i64* %space_per_minheight, align 8, !tbaa !9
  %48 = load i64, i64* %maximum_space, align 8, !tbaa !9
  %49 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %49, i32 0, i32 5
  %50 = load i64, i64* %total_space_allocated, align 8, !tbaa !32
  %call = call i64 @jpeg_mem_available(%struct.jpeg_common_struct* %46, i64 %47, i64 %48, i64 %50)
  store i64 %call, i64* %avail_mem, align 8, !tbaa !9
  %51 = load i64, i64* %avail_mem, align 8, !tbaa !9
  %52 = load i64, i64* %maximum_space, align 8, !tbaa !9
  %cmp40 = icmp sge i64 %51, %52
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.39
  store i64 1000000000, i64* %max_minheights, align 8, !tbaa !9
  br label %if.end.47

if.else:                                          ; preds = %if.end.39
  %53 = load i64, i64* %avail_mem, align 8, !tbaa !9
  %54 = load i64, i64* %space_per_minheight, align 8, !tbaa !9
  %div = sdiv i64 %53, %54
  store i64 %div, i64* %max_minheights, align 8, !tbaa !9
  %55 = load i64, i64* %max_minheights, align 8, !tbaa !9
  %cmp43 = icmp sle i64 %55, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else
  store i64 1, i64* %max_minheights, align 8, !tbaa !9
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.42
  %56 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_sarray_list48 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %56, i32 0, i32 3
  %57 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list48, align 8, !tbaa !30
  store %struct.jvirt_sarray_control* %57, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.85, %if.end.47
  %58 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %cmp50 = icmp ne %struct.jvirt_sarray_control* %58, null
  br i1 %cmp50, label %for.body.52, label %for.end.87

for.body.52:                                      ; preds = %for.cond.49
  %59 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %mem_buffer53 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %59, i32 0, i32 0
  %60 = load i8**, i8*** %mem_buffer53, align 8, !tbaa !39
  %cmp54 = icmp eq i8** %60, null
  br i1 %cmp54, label %if.then.56, label %if.end.84

if.then.56:                                       ; preds = %for.body.52
  %61 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rows_in_array57 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %61, i32 0, i32 1
  %62 = load i32, i32* %rows_in_array57, align 4, !tbaa !42
  %conv58 = zext i32 %62 to i64
  %sub = sub nsw i64 %conv58, 1
  %63 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %maxaccess59 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %63, i32 0, i32 3
  %64 = load i32, i32* %maxaccess59, align 4, !tbaa !44
  %conv60 = zext i32 %64 to i64
  %div61 = sdiv i64 %sub, %conv60
  %add62 = add nsw i64 %div61, 1
  store i64 %add62, i64* %minheights, align 8, !tbaa !9
  %65 = load i64, i64* %minheights, align 8, !tbaa !9
  %66 = load i64, i64* %max_minheights, align 8, !tbaa !9
  %cmp63 = icmp sle i64 %65, %66
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.then.56
  %67 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rows_in_array66 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %67, i32 0, i32 1
  %68 = load i32, i32* %rows_in_array66, align 4, !tbaa !42
  %69 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %69, i32 0, i32 4
  store i32 %68, i32* %rows_in_mem, align 4, !tbaa !56
  br label %if.end.79

if.else.67:                                       ; preds = %if.then.56
  %70 = load i64, i64* %max_minheights, align 8, !tbaa !9
  %71 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %maxaccess68 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %71, i32 0, i32 3
  %72 = load i32, i32* %maxaccess68, align 4, !tbaa !44
  %conv69 = zext i32 %72 to i64
  %mul70 = mul nsw i64 %70, %conv69
  %conv71 = trunc i64 %mul70 to i32
  %73 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rows_in_mem72 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %73, i32 0, i32 4
  store i32 %conv71, i32* %rows_in_mem72, align 4, !tbaa !56
  %74 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %75 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %75, i32 0, i32 12
  %76 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rows_in_array73 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %76, i32 0, i32 1
  %77 = load i32, i32* %rows_in_array73, align 4, !tbaa !42
  %conv74 = zext i32 %77 to i64
  %78 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %samplesperrow75 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %78, i32 0, i32 2
  %79 = load i32, i32* %samplesperrow75, align 4, !tbaa !43
  %conv76 = zext i32 %79 to i64
  %mul77 = mul nsw i64 %conv74, %conv76
  %mul78 = mul nsw i64 %mul77, 1
  call void @jpeg_open_backing_store(%struct.jpeg_common_struct* %74, %struct.backing_store_struct* %b_s_info, i64 %mul78)
  %80 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %80, i32 0, i32 10
  store i32 1, i32* %b_s_open, align 4, !tbaa !46
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.67, %if.then.65
  %81 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %82 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %samplesperrow80 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %82, i32 0, i32 2
  %83 = load i32, i32* %samplesperrow80, align 4, !tbaa !43
  %84 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rows_in_mem81 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %84, i32 0, i32 4
  %85 = load i32, i32* %rows_in_mem81, align 4, !tbaa !56
  %call82 = call i8** @alloc_sarray(%struct.jpeg_common_struct* %81, i32 1, i32 %83, i32 %85)
  %86 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %mem_buffer83 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %86, i32 0, i32 0
  store i8** %call82, i8*** %mem_buffer83, align 8, !tbaa !39
  %87 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %last_rowsperchunk = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %87, i32 0, i32 6
  %88 = load i32, i32* %last_rowsperchunk, align 4, !tbaa !38
  %89 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %89, i32 0, i32 5
  store i32 %88, i32* %rowsperchunk, align 4, !tbaa !57
  %90 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %90, i32 0, i32 6
  store i32 0, i32* %cur_start_row, align 4, !tbaa !58
  %91 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %91, i32 0, i32 7
  store i32 0, i32* %first_undef_row, align 4, !tbaa !59
  %92 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %92, i32 0, i32 9
  store i32 0, i32* %dirty, align 4, !tbaa !60
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.79, %for.body.52
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %93 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %next86 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %93, i32 0, i32 11
  %94 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %next86, align 8, !tbaa !47
  store %struct.jvirt_sarray_control* %94, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  br label %for.cond.49

for.end.87:                                       ; preds = %for.cond.49
  %95 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_barray_list88 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %95, i32 0, i32 4
  %96 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list88, align 8, !tbaa !31
  store %struct.jvirt_barray_control* %96, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.134, %for.end.87
  %97 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %cmp90 = icmp ne %struct.jvirt_barray_control* %97, null
  br i1 %cmp90, label %for.body.92, label %for.end.136

for.body.92:                                      ; preds = %for.cond.89
  %98 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %mem_buffer93 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %98, i32 0, i32 0
  %99 = load [64 x i16]**, [64 x i16]*** %mem_buffer93, align 8, !tbaa !48
  %cmp94 = icmp eq [64 x i16]** %99, null
  br i1 %cmp94, label %if.then.96, label %if.end.133

if.then.96:                                       ; preds = %for.body.92
  %100 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rows_in_array97 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %100, i32 0, i32 1
  %101 = load i32, i32* %rows_in_array97, align 4, !tbaa !50
  %conv98 = zext i32 %101 to i64
  %sub99 = sub nsw i64 %conv98, 1
  %102 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %maxaccess100 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %102, i32 0, i32 3
  %103 = load i32, i32* %maxaccess100, align 4, !tbaa !52
  %conv101 = zext i32 %103 to i64
  %div102 = sdiv i64 %sub99, %conv101
  %add103 = add nsw i64 %div102, 1
  store i64 %add103, i64* %minheights, align 8, !tbaa !9
  %104 = load i64, i64* %minheights, align 8, !tbaa !9
  %105 = load i64, i64* %max_minheights, align 8, !tbaa !9
  %cmp104 = icmp sle i64 %104, %105
  br i1 %cmp104, label %if.then.106, label %if.else.109

if.then.106:                                      ; preds = %if.then.96
  %106 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rows_in_array107 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %106, i32 0, i32 1
  %107 = load i32, i32* %rows_in_array107, align 4, !tbaa !50
  %108 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rows_in_mem108 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %108, i32 0, i32 4
  store i32 %107, i32* %rows_in_mem108, align 4, !tbaa !61
  br label %if.end.123

if.else.109:                                      ; preds = %if.then.96
  %109 = load i64, i64* %max_minheights, align 8, !tbaa !9
  %110 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %maxaccess110 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %110, i32 0, i32 3
  %111 = load i32, i32* %maxaccess110, align 4, !tbaa !52
  %conv111 = zext i32 %111 to i64
  %mul112 = mul nsw i64 %109, %conv111
  %conv113 = trunc i64 %mul112 to i32
  %112 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rows_in_mem114 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %112, i32 0, i32 4
  store i32 %conv113, i32* %rows_in_mem114, align 4, !tbaa !61
  %113 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %114 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %b_s_info115 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %114, i32 0, i32 12
  %115 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rows_in_array116 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %115, i32 0, i32 1
  %116 = load i32, i32* %rows_in_array116, align 4, !tbaa !50
  %conv117 = zext i32 %116 to i64
  %117 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %blocksperrow118 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %117, i32 0, i32 2
  %118 = load i32, i32* %blocksperrow118, align 4, !tbaa !51
  %conv119 = zext i32 %118 to i64
  %mul120 = mul nsw i64 %conv117, %conv119
  %mul121 = mul nsw i64 %mul120, 128
  call void @jpeg_open_backing_store(%struct.jpeg_common_struct* %113, %struct.backing_store_struct* %b_s_info115, i64 %mul121)
  %119 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %b_s_open122 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %119, i32 0, i32 10
  store i32 1, i32* %b_s_open122, align 4, !tbaa !54
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.109, %if.then.106
  %120 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %121 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %blocksperrow124 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %121, i32 0, i32 2
  %122 = load i32, i32* %blocksperrow124, align 4, !tbaa !51
  %123 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rows_in_mem125 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %123, i32 0, i32 4
  %124 = load i32, i32* %rows_in_mem125, align 4, !tbaa !61
  %call126 = call [64 x i16]** @alloc_barray(%struct.jpeg_common_struct* %120, i32 1, i32 %122, i32 %124)
  %125 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %mem_buffer127 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %125, i32 0, i32 0
  store [64 x i16]** %call126, [64 x i16]*** %mem_buffer127, align 8, !tbaa !48
  %126 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %last_rowsperchunk128 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %126, i32 0, i32 6
  %127 = load i32, i32* %last_rowsperchunk128, align 4, !tbaa !38
  %128 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %rowsperchunk129 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %128, i32 0, i32 5
  store i32 %127, i32* %rowsperchunk129, align 4, !tbaa !62
  %129 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %cur_start_row130 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %129, i32 0, i32 6
  store i32 0, i32* %cur_start_row130, align 4, !tbaa !63
  %130 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %first_undef_row131 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %130, i32 0, i32 7
  store i32 0, i32* %first_undef_row131, align 4, !tbaa !64
  %131 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %dirty132 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %131, i32 0, i32 9
  store i32 0, i32* %dirty132, align 4, !tbaa !65
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.123, %for.body.92
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %132 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %next135 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %132, i32 0, i32 11
  %133 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %next135, align 8, !tbaa !55
  store %struct.jvirt_barray_control* %133, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  br label %for.cond.89

for.end.136:                                      ; preds = %for.cond.89
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.136, %if.then.38
  %134 = bitcast %struct.jvirt_barray_control** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #3
  %135 = bitcast %struct.jvirt_sarray_control** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #3
  %136 = bitcast i64* %max_minheights to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #3
  %137 = bitcast i64* %minheights to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #3
  %138 = bitcast i64* %avail_mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #3
  %139 = bitcast i64* %maximum_space to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #3
  %140 = bitcast i64* %space_per_minheight to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #3
  %141 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #3
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal i8** @access_virt_sarray(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_sarray_control* %ptr, i32 %start_row, i32 %num_rows, i32 %writable) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_sarray_control*, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %ltemp = alloca i64, align 8
  %bytesperrow = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jvirt_sarray_control* %ptr, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  store i32 %start_row, i32* %start_row.addr, align 4, !tbaa !15
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !15
  store i32 %writable, i32* %writable.addr, align 4, !tbaa !15
  %0 = bitcast i32* %end_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %2 = load i32, i32* %num_rows.addr, align 4, !tbaa !15
  %add = add i32 %1, %2
  store i32 %add, i32* %end_row, align 4, !tbaa !15
  %3 = bitcast i32* %undef_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load i32, i32* %end_row, align 4, !tbaa !15
  %5 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %5, i32 0, i32 1
  %6 = load i32, i32* %rows_in_array, align 4, !tbaa !42
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %num_rows.addr, align 4, !tbaa !15
  %8 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %maxaccess = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %8, i32 0, i32 3
  %9 = load i32, i32* %maxaccess, align 4, !tbaa !44
  %cmp1 = icmp ugt i32 %7, %9
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %10 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %10, i32 0, i32 0
  %11 = load i8**, i8*** %mem_buffer, align 8, !tbaa !39
  %cmp3 = icmp eq i8** %11, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 20, i32* %msg_code, align 4, !tbaa !12
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %error_exit5 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit5, align 8, !tbaa !14
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %16(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %18 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %19 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %19, i32 0, i32 6
  %20 = load i32, i32* %cur_start_row, align 4, !tbaa !58
  %cmp6 = icmp ult i32 %18, %20
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %21 = load i32, i32* %end_row, align 4, !tbaa !15
  %22 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row8 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %22, i32 0, i32 6
  %23 = load i32, i32* %cur_start_row8, align 4, !tbaa !58
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %24, i32 0, i32 4
  %25 = load i32, i32* %rows_in_mem, align 4, !tbaa !56
  %add9 = add i32 %23, %25
  %cmp10 = icmp ugt i32 %21, %add9
  br i1 %cmp10, label %if.then.11, label %if.end.36

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.end
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %26, i32 0, i32 10
  %27 = load i32, i32* %b_s_open, align 4, !tbaa !46
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %if.then.11
  %28 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !11
  %msg_code14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 68, i32* %msg_code14, align 4, !tbaa !12
  %30 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !11
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %error_exit17 = bitcast {}** %error_exit16 to void (%struct.jpeg_common_struct*)**
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit17, align 8, !tbaa !14
  %33 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %32(%struct.jpeg_common_struct* %33)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.then.11
  %34 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %dirty = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %34, i32 0, i32 9
  %35 = load i32, i32* %dirty, align 4, !tbaa !60
  %tobool19 = icmp ne i32 %35, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %36 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  call void @do_sarray_io(%struct.jpeg_common_struct* %36, %struct.jvirt_sarray_control* %37, i32 1)
  %38 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %dirty21 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %38, i32 0, i32 9
  store i32 0, i32* %dirty21, align 4, !tbaa !60
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %39 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %40 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row23 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %40, i32 0, i32 6
  %41 = load i32, i32* %cur_start_row23, align 4, !tbaa !58
  %cmp24 = icmp ugt i32 %39, %41
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.22
  %42 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %43 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row26 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %43, i32 0, i32 6
  store i32 %42, i32* %cur_start_row26, align 4, !tbaa !58
  br label %if.end.35

if.else:                                          ; preds = %if.end.22
  %44 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #3
  %45 = load i32, i32* %end_row, align 4, !tbaa !15
  %conv = zext i32 %45 to i64
  %46 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem27 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %46, i32 0, i32 4
  %47 = load i32, i32* %rows_in_mem27, align 4, !tbaa !56
  %conv28 = zext i32 %47 to i64
  %sub = sub nsw i64 %conv, %conv28
  store i64 %sub, i64* %ltemp, align 8, !tbaa !9
  %48 = load i64, i64* %ltemp, align 8, !tbaa !9
  %cmp29 = icmp slt i64 %48, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  store i64 0, i64* %ltemp, align 8, !tbaa !9
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.else
  %49 = load i64, i64* %ltemp, align 8, !tbaa !9
  %conv33 = trunc i64 %49 to i32
  %50 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row34 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %50, i32 0, i32 6
  store i32 %conv33, i32* %cur_start_row34, align 4, !tbaa !58
  %51 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #3
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %if.then.25
  %52 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %53 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  call void @do_sarray_io(%struct.jpeg_common_struct* %52, %struct.jvirt_sarray_control* %53, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %lor.lhs.false.7
  %54 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %54, i32 0, i32 7
  %55 = load i32, i32* %first_undef_row, align 4, !tbaa !59
  %56 = load i32, i32* %end_row, align 4, !tbaa !15
  %cmp37 = icmp ult i32 %55, %56
  br i1 %cmp37, label %if.then.39, label %if.end.79

if.then.39:                                       ; preds = %if.end.36
  %57 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row40 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %57, i32 0, i32 7
  %58 = load i32, i32* %first_undef_row40, align 4, !tbaa !59
  %59 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %cmp41 = icmp ult i32 %58, %59
  br i1 %cmp41, label %if.then.43, label %if.else.52

if.then.43:                                       ; preds = %if.then.39
  %60 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool44 = icmp ne i32 %60, 0
  br i1 %tobool44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.then.43
  %61 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err46 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !11
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 20, i32* %msg_code47, align 4, !tbaa !12
  %63 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err48 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !11
  %error_exit49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 0
  %error_exit50 = bitcast {}** %error_exit49 to void (%struct.jpeg_common_struct*)**
  %65 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit50, align 8, !tbaa !14
  %66 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %65(%struct.jpeg_common_struct* %66)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %if.then.43
  %67 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  store i32 %67, i32* %undef_row, align 4, !tbaa !15
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.39
  %68 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row53 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %68, i32 0, i32 7
  %69 = load i32, i32* %first_undef_row53, align 4, !tbaa !59
  store i32 %69, i32* %undef_row, align 4, !tbaa !15
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.end.51
  %70 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool55 = icmp ne i32 %70, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %71 = load i32, i32* %end_row, align 4, !tbaa !15
  %72 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row57 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %72, i32 0, i32 7
  store i32 %71, i32* %first_undef_row57, align 4, !tbaa !59
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %73 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %pre_zero = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %73, i32 0, i32 8
  %74 = load i32, i32* %pre_zero, align 4, !tbaa !45
  %tobool59 = icmp ne i32 %74, 0
  br i1 %tobool59, label %if.then.60, label %if.else.69

if.then.60:                                       ; preds = %if.end.58
  %75 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #3
  %76 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %76, i32 0, i32 2
  %77 = load i32, i32* %samplesperrow, align 4, !tbaa !43
  %conv61 = zext i32 %77 to i64
  %mul = mul i64 %conv61, 1
  store i64 %mul, i64* %bytesperrow, align 8, !tbaa !9
  %78 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row62 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %78, i32 0, i32 6
  %79 = load i32, i32* %cur_start_row62, align 4, !tbaa !58
  %80 = load i32, i32* %undef_row, align 4, !tbaa !15
  %sub63 = sub i32 %80, %79
  store i32 %sub63, i32* %undef_row, align 4, !tbaa !15
  %81 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row64 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %81, i32 0, i32 6
  %82 = load i32, i32* %cur_start_row64, align 4, !tbaa !58
  %83 = load i32, i32* %end_row, align 4, !tbaa !15
  %sub65 = sub i32 %83, %82
  store i32 %sub65, i32* %end_row, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.60
  %84 = load i32, i32* %undef_row, align 4, !tbaa !15
  %85 = load i32, i32* %end_row, align 4, !tbaa !15
  %cmp66 = icmp ult i32 %84, %85
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %86 = load i32, i32* %undef_row, align 4, !tbaa !15
  %idxprom = zext i32 %86 to i64
  %87 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer68 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %87, i32 0, i32 0
  %88 = load i8**, i8*** %mem_buffer68, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8*, i8** %88, i64 %idxprom
  %89 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %90 = load i64, i64* %bytesperrow, align 8, !tbaa !9
  call void @jzero_far(i8* %89, i64 %90)
  %91 = load i32, i32* %undef_row, align 4, !tbaa !15
  %inc = add i32 %91, 1
  store i32 %inc, i32* %undef_row, align 4, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %92 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  br label %if.end.78

if.else.69:                                       ; preds = %if.end.58
  %93 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool70 = icmp ne i32 %93, 0
  br i1 %tobool70, label %if.end.77, label %if.then.71

if.then.71:                                       ; preds = %if.else.69
  %94 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err72 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %94, i32 0, i32 0
  %95 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !11
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %95, i32 0, i32 5
  store i32 20, i32* %msg_code73, align 4, !tbaa !12
  %96 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err74 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %96, i32 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8, !tbaa !11
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i32 0, i32 0
  %error_exit76 = bitcast {}** %error_exit75 to void (%struct.jpeg_common_struct*)**
  %98 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit76, align 8, !tbaa !14
  %99 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %98(%struct.jpeg_common_struct* %99)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %if.else.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %while.end
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.36
  %100 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool80 = icmp ne i32 %100, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %101 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %dirty82 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %101, i32 0, i32 9
  store i32 1, i32* %dirty82, align 4, !tbaa !60
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  %102 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer84 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %102, i32 0, i32 0
  %103 = load i8**, i8*** %mem_buffer84, align 8, !tbaa !39
  %104 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %105 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row85 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %105, i32 0, i32 6
  %106 = load i32, i32* %cur_start_row85, align 4, !tbaa !58
  %sub86 = sub i32 %104, %106
  %idx.ext = zext i32 %sub86 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %103, i64 %idx.ext
  %107 = bitcast i32* %undef_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #3
  %108 = bitcast i32* %end_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #3
  ret i8** %add.ptr
}

; Function Attrs: nounwind ssp uwtable
define internal [64 x i16]** @access_virt_barray(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_barray_control* %ptr, i32 %start_row, i32 %num_rows, i32 %writable) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_barray_control*, align 8
  %start_row.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %writable.addr = alloca i32, align 4
  %end_row = alloca i32, align 4
  %undef_row = alloca i32, align 4
  %ltemp = alloca i64, align 8
  %bytesperrow = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jvirt_barray_control* %ptr, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  store i32 %start_row, i32* %start_row.addr, align 4, !tbaa !15
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !15
  store i32 %writable, i32* %writable.addr, align 4, !tbaa !15
  %0 = bitcast i32* %end_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %2 = load i32, i32* %num_rows.addr, align 4, !tbaa !15
  %add = add i32 %1, %2
  store i32 %add, i32* %end_row, align 4, !tbaa !15
  %3 = bitcast i32* %undef_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = load i32, i32* %end_row, align 4, !tbaa !15
  %5 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %5, i32 0, i32 1
  %6 = load i32, i32* %rows_in_array, align 4, !tbaa !50
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %num_rows.addr, align 4, !tbaa !15
  %8 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %maxaccess = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %8, i32 0, i32 3
  %9 = load i32, i32* %maxaccess, align 4, !tbaa !52
  %cmp1 = icmp ugt i32 %7, %9
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %10 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %10, i32 0, i32 0
  %11 = load [64 x i16]**, [64 x i16]*** %mem_buffer, align 8, !tbaa !48
  %cmp3 = icmp eq [64 x i16]** %11, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 20, i32* %msg_code, align 4, !tbaa !12
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %error_exit5 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit5, align 8, !tbaa !14
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %16(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.2
  %18 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %19 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %19, i32 0, i32 6
  %20 = load i32, i32* %cur_start_row, align 4, !tbaa !63
  %cmp6 = icmp ult i32 %18, %20
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %21 = load i32, i32* %end_row, align 4, !tbaa !15
  %22 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row8 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %22, i32 0, i32 6
  %23 = load i32, i32* %cur_start_row8, align 4, !tbaa !63
  %24 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %24, i32 0, i32 4
  %25 = load i32, i32* %rows_in_mem, align 4, !tbaa !61
  %add9 = add i32 %23, %25
  %cmp10 = icmp ugt i32 %21, %add9
  br i1 %cmp10, label %if.then.11, label %if.end.36

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.end
  %26 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_open = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %26, i32 0, i32 10
  %27 = load i32, i32* %b_s_open, align 4, !tbaa !54
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.end.18, label %if.then.12

if.then.12:                                       ; preds = %if.then.11
  %28 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err13 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %28, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err13, align 8, !tbaa !11
  %msg_code14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 5
  store i32 68, i32* %msg_code14, align 4, !tbaa !12
  %30 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err15 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %30, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err15, align 8, !tbaa !11
  %error_exit16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %error_exit17 = bitcast {}** %error_exit16 to void (%struct.jpeg_common_struct*)**
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit17, align 8, !tbaa !14
  %33 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %32(%struct.jpeg_common_struct* %33)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %if.then.11
  %34 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %dirty = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %34, i32 0, i32 9
  %35 = load i32, i32* %dirty, align 4, !tbaa !65
  %tobool19 = icmp ne i32 %35, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %36 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %37 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  call void @do_barray_io(%struct.jpeg_common_struct* %36, %struct.jvirt_barray_control* %37, i32 1)
  %38 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %dirty21 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %38, i32 0, i32 9
  store i32 0, i32* %dirty21, align 4, !tbaa !65
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %39 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %40 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row23 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %40, i32 0, i32 6
  %41 = load i32, i32* %cur_start_row23, align 4, !tbaa !63
  %cmp24 = icmp ugt i32 %39, %41
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.22
  %42 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %43 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row26 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %43, i32 0, i32 6
  store i32 %42, i32* %cur_start_row26, align 4, !tbaa !63
  br label %if.end.35

if.else:                                          ; preds = %if.end.22
  %44 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #3
  %45 = load i32, i32* %end_row, align 4, !tbaa !15
  %conv = zext i32 %45 to i64
  %46 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem27 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %46, i32 0, i32 4
  %47 = load i32, i32* %rows_in_mem27, align 4, !tbaa !61
  %conv28 = zext i32 %47 to i64
  %sub = sub nsw i64 %conv, %conv28
  store i64 %sub, i64* %ltemp, align 8, !tbaa !9
  %48 = load i64, i64* %ltemp, align 8, !tbaa !9
  %cmp29 = icmp slt i64 %48, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.else
  store i64 0, i64* %ltemp, align 8, !tbaa !9
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.else
  %49 = load i64, i64* %ltemp, align 8, !tbaa !9
  %conv33 = trunc i64 %49 to i32
  %50 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row34 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %50, i32 0, i32 6
  store i32 %conv33, i32* %cur_start_row34, align 4, !tbaa !63
  %51 = bitcast i64* %ltemp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #3
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.32, %if.then.25
  %52 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %53 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  call void @do_barray_io(%struct.jpeg_common_struct* %52, %struct.jvirt_barray_control* %53, i32 0)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %lor.lhs.false.7
  %54 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %54, i32 0, i32 7
  %55 = load i32, i32* %first_undef_row, align 4, !tbaa !64
  %56 = load i32, i32* %end_row, align 4, !tbaa !15
  %cmp37 = icmp ult i32 %55, %56
  br i1 %cmp37, label %if.then.39, label %if.end.79

if.then.39:                                       ; preds = %if.end.36
  %57 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row40 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %57, i32 0, i32 7
  %58 = load i32, i32* %first_undef_row40, align 4, !tbaa !64
  %59 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %cmp41 = icmp ult i32 %58, %59
  br i1 %cmp41, label %if.then.43, label %if.else.52

if.then.43:                                       ; preds = %if.then.39
  %60 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool44 = icmp ne i32 %60, 0
  br i1 %tobool44, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.then.43
  %61 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err46 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %61, i32 0, i32 0
  %62 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err46, align 8, !tbaa !11
  %msg_code47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %62, i32 0, i32 5
  store i32 20, i32* %msg_code47, align 4, !tbaa !12
  %63 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err48 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %63, i32 0, i32 0
  %64 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err48, align 8, !tbaa !11
  %error_exit49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %64, i32 0, i32 0
  %error_exit50 = bitcast {}** %error_exit49 to void (%struct.jpeg_common_struct*)**
  %65 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit50, align 8, !tbaa !14
  %66 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %65(%struct.jpeg_common_struct* %66)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.45, %if.then.43
  %67 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  store i32 %67, i32* %undef_row, align 4, !tbaa !15
  br label %if.end.54

if.else.52:                                       ; preds = %if.then.39
  %68 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row53 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %68, i32 0, i32 7
  %69 = load i32, i32* %first_undef_row53, align 4, !tbaa !64
  store i32 %69, i32* %undef_row, align 4, !tbaa !15
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.end.51
  %70 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool55 = icmp ne i32 %70, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %71 = load i32, i32* %end_row, align 4, !tbaa !15
  %72 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row57 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %72, i32 0, i32 7
  store i32 %71, i32* %first_undef_row57, align 4, !tbaa !64
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  %73 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %pre_zero = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %73, i32 0, i32 8
  %74 = load i32, i32* %pre_zero, align 4, !tbaa !53
  %tobool59 = icmp ne i32 %74, 0
  br i1 %tobool59, label %if.then.60, label %if.else.69

if.then.60:                                       ; preds = %if.end.58
  %75 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #3
  %76 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %76, i32 0, i32 2
  %77 = load i32, i32* %blocksperrow, align 4, !tbaa !51
  %conv61 = zext i32 %77 to i64
  %mul = mul i64 %conv61, 128
  store i64 %mul, i64* %bytesperrow, align 8, !tbaa !9
  %78 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row62 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %78, i32 0, i32 6
  %79 = load i32, i32* %cur_start_row62, align 4, !tbaa !63
  %80 = load i32, i32* %undef_row, align 4, !tbaa !15
  %sub63 = sub i32 %80, %79
  store i32 %sub63, i32* %undef_row, align 4, !tbaa !15
  %81 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row64 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %81, i32 0, i32 6
  %82 = load i32, i32* %cur_start_row64, align 4, !tbaa !63
  %83 = load i32, i32* %end_row, align 4, !tbaa !15
  %sub65 = sub i32 %83, %82
  store i32 %sub65, i32* %end_row, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.60
  %84 = load i32, i32* %undef_row, align 4, !tbaa !15
  %85 = load i32, i32* %end_row, align 4, !tbaa !15
  %cmp66 = icmp ult i32 %84, %85
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %86 = load i32, i32* %undef_row, align 4, !tbaa !15
  %idxprom = zext i32 %86 to i64
  %87 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer68 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %87, i32 0, i32 0
  %88 = load [64 x i16]**, [64 x i16]*** %mem_buffer68, align 8, !tbaa !48
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %88, i64 %idxprom
  %89 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  %90 = bitcast [64 x i16]* %89 to i8*
  %91 = load i64, i64* %bytesperrow, align 8, !tbaa !9
  call void @jzero_far(i8* %90, i64 %91)
  %92 = load i32, i32* %undef_row, align 4, !tbaa !15
  %inc = add i32 %92, 1
  store i32 %inc, i32* %undef_row, align 4, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %93 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #3
  br label %if.end.78

if.else.69:                                       ; preds = %if.end.58
  %94 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool70 = icmp ne i32 %94, 0
  br i1 %tobool70, label %if.end.77, label %if.then.71

if.then.71:                                       ; preds = %if.else.69
  %95 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err72 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %95, i32 0, i32 0
  %96 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err72, align 8, !tbaa !11
  %msg_code73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %96, i32 0, i32 5
  store i32 20, i32* %msg_code73, align 4, !tbaa !12
  %97 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err74 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %97, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err74, align 8, !tbaa !11
  %error_exit75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 0
  %error_exit76 = bitcast {}** %error_exit75 to void (%struct.jpeg_common_struct*)**
  %99 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit76, align 8, !tbaa !14
  %100 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %99(%struct.jpeg_common_struct* %100)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.71, %if.else.69
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %while.end
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.36
  %101 = load i32, i32* %writable.addr, align 4, !tbaa !15
  %tobool80 = icmp ne i32 %101, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %102 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %dirty82 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %102, i32 0, i32 9
  store i32 1, i32* %dirty82, align 4, !tbaa !65
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  %103 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer84 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %103, i32 0, i32 0
  %104 = load [64 x i16]**, [64 x i16]*** %mem_buffer84, align 8, !tbaa !48
  %105 = load i32, i32* %start_row.addr, align 4, !tbaa !15
  %106 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row85 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %106, i32 0, i32 6
  %107 = load i32, i32* %cur_start_row85, align 4, !tbaa !63
  %sub86 = sub i32 %105, %107
  %idx.ext = zext i32 %sub86 to i64
  %add.ptr = getelementptr inbounds [64 x i16]*, [64 x i16]** %104, i64 %idx.ext
  %108 = bitcast i32* %undef_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #3
  %109 = bitcast i32* %end_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #3
  ret [64 x i16]** %add.ptr
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_pool(%struct.jpeg_common_struct* %cinfo, i32 %pool_id) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool_id.addr = alloca i32, align 4
  %mem = alloca %struct.my_memory_mgr*, align 8
  %shdr_ptr = alloca %union.small_pool_struct*, align 8
  %lhdr_ptr = alloca %union.large_pool_struct*, align 8
  %space_freed = alloca i64, align 8
  %sptr = alloca %struct.jvirt_sarray_control*, align 8
  %bptr = alloca %struct.jvirt_barray_control*, align 8
  %next_lhdr_ptr = alloca %union.large_pool_struct*, align 8
  %next_shdr_ptr = alloca %union.small_pool_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %pool_id, i32* %pool_id.addr, align 4, !tbaa !15
  %0 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %3 = bitcast %struct.jpeg_memory_mgr* %2 to %struct.my_memory_mgr*
  store %struct.my_memory_mgr* %3, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %4 = bitcast %union.small_pool_struct** %shdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast %union.large_pool_struct** %lhdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = bitcast i64* %space_freed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #3
  %7 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp2 = icmp sge i32 %8, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i32 0, i32 5
  store i32 12, i32* %msg_code, align 4, !tbaa !12
  %11 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %12 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %12, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err3, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %11, i32* %arrayidx, align 4, !tbaa !15
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %14, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err4, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 0
  %error_exit5 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit5, align 8, !tbaa !14
  %17 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %16(%struct.jpeg_common_struct* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %18 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %cmp6 = icmp eq i32 %18, 1
  br i1 %cmp6, label %if.then.7, label %if.end.29

if.then.7:                                        ; preds = %if.end
  %19 = bitcast %struct.jvirt_sarray_control** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #3
  %20 = bitcast %struct.jvirt_barray_control** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #3
  %21 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_sarray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %21, i32 0, i32 3
  %22 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %virt_sarray_list, align 8, !tbaa !30
  store %struct.jvirt_sarray_control* %22, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %23 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %cmp8 = icmp ne %struct.jvirt_sarray_control* %23, null
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %b_s_open = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %24, i32 0, i32 10
  %25 = load i32, i32* %b_s_open, align 4, !tbaa !46
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %for.body
  %26 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %b_s_open10 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %26, i32 0, i32 10
  store i32 0, i32* %b_s_open10, align 4, !tbaa !46
  %27 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %27, i32 0, i32 12
  %close_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info, i32 0, i32 2
  %28 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)** %close_backing_store, align 8, !tbaa !66
  %29 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %30 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %b_s_info11 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %30, i32 0, i32 12
  call void %28(%struct.jpeg_common_struct* %29, %struct.backing_store_struct* %b_s_info11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %31 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  %next = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %31, i32 0, i32 11
  %32 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %next, align 8, !tbaa !47
  store %struct.jvirt_sarray_control* %32, %struct.jvirt_sarray_control** %sptr, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_sarray_list13 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %33, i32 0, i32 3
  store %struct.jvirt_sarray_control* null, %struct.jvirt_sarray_control** %virt_sarray_list13, align 8, !tbaa !30
  %34 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_barray_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %34, i32 0, i32 4
  %35 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %virt_barray_list, align 8, !tbaa !31
  store %struct.jvirt_barray_control* %35, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.25, %for.end
  %36 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %cmp15 = icmp ne %struct.jvirt_barray_control* %36, null
  br i1 %cmp15, label %for.body.16, label %for.end.27

for.body.16:                                      ; preds = %for.cond.14
  %37 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %b_s_open17 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %37, i32 0, i32 10
  %38 = load i32, i32* %b_s_open17, align 4, !tbaa !54
  %tobool18 = icmp ne i32 %38, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %for.body.16
  %39 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %b_s_open20 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %39, i32 0, i32 10
  store i32 0, i32* %b_s_open20, align 4, !tbaa !54
  %40 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %b_s_info21 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %40, i32 0, i32 12
  %close_backing_store22 = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info21, i32 0, i32 2
  %41 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)** %close_backing_store22, align 8, !tbaa !67
  %42 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %43 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %b_s_info23 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %43, i32 0, i32 12
  call void %41(%struct.jpeg_common_struct* %42, %struct.backing_store_struct* %b_s_info23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %for.body.16
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %44 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  %next26 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %44, i32 0, i32 11
  %45 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %next26, align 8, !tbaa !55
  store %struct.jvirt_barray_control* %45, %struct.jvirt_barray_control** %bptr, align 8, !tbaa !2
  br label %for.cond.14

for.end.27:                                       ; preds = %for.cond.14
  %46 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %virt_barray_list28 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %46, i32 0, i32 4
  store %struct.jvirt_barray_control* null, %struct.jvirt_barray_control** %virt_barray_list28, align 8, !tbaa !31
  %47 = bitcast %struct.jvirt_barray_control** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #3
  %48 = bitcast %struct.jvirt_sarray_control** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #3
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.27, %if.end
  %49 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %large_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %50, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list, i32 0, i64 %idxprom
  %51 = load %union.large_pool_struct*, %union.large_pool_struct** %arrayidx30, align 8, !tbaa !2
  store %union.large_pool_struct* %51, %union.large_pool_struct** %lhdr_ptr, align 8, !tbaa !2
  %52 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom31 = sext i32 %52 to i64
  %53 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %large_list32 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %53, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [2 x %union.large_pool_struct*], [2 x %union.large_pool_struct*]* %large_list32, i32 0, i64 %idxprom31
  store %union.large_pool_struct* null, %union.large_pool_struct** %arrayidx33, align 8, !tbaa !2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.29
  %54 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8, !tbaa !2
  %cmp34 = icmp ne %union.large_pool_struct* %54, null
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = bitcast %union.large_pool_struct** %next_lhdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #3
  %56 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8, !tbaa !2
  %hdr = bitcast %union.large_pool_struct* %56 to %struct.anon.0*
  %next35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr, i32 0, i32 0
  %57 = load %union.large_pool_struct*, %union.large_pool_struct** %next35, align 8, !tbaa !36
  store %union.large_pool_struct* %57, %union.large_pool_struct** %next_lhdr_ptr, align 8, !tbaa !2
  %58 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8, !tbaa !2
  %hdr36 = bitcast %union.large_pool_struct* %58 to %struct.anon.0*
  %bytes_used = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr36, i32 0, i32 1
  %59 = load i64, i64* %bytes_used, align 8, !tbaa !37
  %60 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8, !tbaa !2
  %hdr37 = bitcast %union.large_pool_struct* %60 to %struct.anon.0*
  %bytes_left = getelementptr inbounds %struct.anon.0, %struct.anon.0* %hdr37, i32 0, i32 2
  %61 = load i64, i64* %bytes_left, align 8, !tbaa !34
  %add = add i64 %59, %61
  %add38 = add i64 %add, 24
  store i64 %add38, i64* %space_freed, align 8, !tbaa !9
  %62 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %63 = load %union.large_pool_struct*, %union.large_pool_struct** %lhdr_ptr, align 8, !tbaa !2
  %64 = bitcast %union.large_pool_struct* %63 to i8*
  %65 = load i64, i64* %space_freed, align 8, !tbaa !9
  call void @jpeg_free_large(%struct.jpeg_common_struct* %62, i8* %64, i64 %65)
  %66 = load i64, i64* %space_freed, align 8, !tbaa !9
  %67 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %total_space_allocated = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %67, i32 0, i32 5
  %68 = load i64, i64* %total_space_allocated, align 8, !tbaa !32
  %sub = sub i64 %68, %66
  store i64 %sub, i64* %total_space_allocated, align 8, !tbaa !32
  %69 = load %union.large_pool_struct*, %union.large_pool_struct** %next_lhdr_ptr, align 8, !tbaa !2
  store %union.large_pool_struct* %69, %union.large_pool_struct** %lhdr_ptr, align 8, !tbaa !2
  %70 = bitcast %union.large_pool_struct** %next_lhdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %71 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom39 = sext i32 %71 to i64
  %72 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %small_list = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %72, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list, i32 0, i64 %idxprom39
  %73 = load %union.small_pool_struct*, %union.small_pool_struct** %arrayidx40, align 8, !tbaa !2
  store %union.small_pool_struct* %73, %union.small_pool_struct** %shdr_ptr, align 8, !tbaa !2
  %74 = load i32, i32* %pool_id.addr, align 4, !tbaa !15
  %idxprom41 = sext i32 %74 to i64
  %75 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %small_list42 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %75, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [2 x %union.small_pool_struct*], [2 x %union.small_pool_struct*]* %small_list42, i32 0, i64 %idxprom41
  store %union.small_pool_struct* null, %union.small_pool_struct** %arrayidx43, align 8, !tbaa !2
  br label %while.cond.44

while.cond.44:                                    ; preds = %while.body.46, %while.end
  %76 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8, !tbaa !2
  %cmp45 = icmp ne %union.small_pool_struct* %76, null
  br i1 %cmp45, label %while.body.46, label %while.end.57

while.body.46:                                    ; preds = %while.cond.44
  %77 = bitcast %union.small_pool_struct** %next_shdr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #3
  %78 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8, !tbaa !2
  %hdr47 = bitcast %union.small_pool_struct* %78 to %struct.anon*
  %next48 = getelementptr inbounds %struct.anon, %struct.anon* %hdr47, i32 0, i32 0
  %79 = load %union.small_pool_struct*, %union.small_pool_struct** %next48, align 8, !tbaa !36
  store %union.small_pool_struct* %79, %union.small_pool_struct** %next_shdr_ptr, align 8, !tbaa !2
  %80 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8, !tbaa !2
  %hdr49 = bitcast %union.small_pool_struct* %80 to %struct.anon*
  %bytes_used50 = getelementptr inbounds %struct.anon, %struct.anon* %hdr49, i32 0, i32 1
  %81 = load i64, i64* %bytes_used50, align 8, !tbaa !37
  %82 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8, !tbaa !2
  %hdr51 = bitcast %union.small_pool_struct* %82 to %struct.anon*
  %bytes_left52 = getelementptr inbounds %struct.anon, %struct.anon* %hdr51, i32 0, i32 2
  %83 = load i64, i64* %bytes_left52, align 8, !tbaa !34
  %add53 = add i64 %81, %83
  %add54 = add i64 %add53, 24
  store i64 %add54, i64* %space_freed, align 8, !tbaa !9
  %84 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %85 = load %union.small_pool_struct*, %union.small_pool_struct** %shdr_ptr, align 8, !tbaa !2
  %86 = bitcast %union.small_pool_struct* %85 to i8*
  %87 = load i64, i64* %space_freed, align 8, !tbaa !9
  call void @jpeg_free_small(%struct.jpeg_common_struct* %84, i8* %86, i64 %87)
  %88 = load i64, i64* %space_freed, align 8, !tbaa !9
  %89 = load %struct.my_memory_mgr*, %struct.my_memory_mgr** %mem, align 8, !tbaa !2
  %total_space_allocated55 = getelementptr inbounds %struct.my_memory_mgr, %struct.my_memory_mgr* %89, i32 0, i32 5
  %90 = load i64, i64* %total_space_allocated55, align 8, !tbaa !32
  %sub56 = sub i64 %90, %88
  store i64 %sub56, i64* %total_space_allocated55, align 8, !tbaa !32
  %91 = load %union.small_pool_struct*, %union.small_pool_struct** %next_shdr_ptr, align 8, !tbaa !2
  store %union.small_pool_struct* %91, %union.small_pool_struct** %shdr_ptr, align 8, !tbaa !2
  %92 = bitcast %union.small_pool_struct** %next_shdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #3
  br label %while.cond.44

while.end.57:                                     ; preds = %while.cond.44
  %93 = bitcast i64* %space_freed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #3
  %94 = bitcast %union.large_pool_struct** %lhdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #3
  %95 = bitcast %union.small_pool_struct** %shdr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #3
  %96 = bitcast %struct.my_memory_mgr** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal void @self_destruct(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %pool to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  store i32 1, i32* %pool, align 4, !tbaa !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pool, align 4, !tbaa !15
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %3 = load i32, i32* %pool, align 4, !tbaa !15
  call void @free_pool(%struct.jpeg_common_struct* %2, i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %pool, align 4, !tbaa !15
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %pool, align 4, !tbaa !15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %6, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !6
  %8 = bitcast %struct.jpeg_memory_mgr* %7 to i8*
  call void @jpeg_free_small(%struct.jpeg_common_struct* %5, i8* %8, i64 160)
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %9, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !6
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void @jpeg_mem_term(%struct.jpeg_common_struct* %10)
  %11 = bitcast i32* %pool to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #3
  ret void
}

declare i8* @getenv(i8*) #2

declare i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define internal void @out_of_memory(%struct.jpeg_common_struct* %cinfo, i32 %which) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %which.addr = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i32 %which, i32* %which.addr, align 4, !tbaa !15
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !11
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 53, i32* %msg_code, align 4, !tbaa !12
  %2 = load i32, i32* %which.addr, align 4, !tbaa !15
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %3, i32 0, i32 0
  %4 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !11
  %msg_parm = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %4, i32 0, i32 6
  %i = bitcast %union.anon* %msg_parm to [8 x i32]*
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %i, i32 0, i64 0
  store i32 %2, i32* %arrayidx, align 4, !tbaa !15
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %5, i32 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err2, align 8, !tbaa !11
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i32 0, i32 0
  %error_exit3 = bitcast {}** %error_exit to void (%struct.jpeg_common_struct*)**
  %7 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit3, align 8, !tbaa !14
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %7(%struct.jpeg_common_struct* %8)
  ret void
}

declare i8* @jpeg_get_large(%struct.jpeg_common_struct*, i64) #2

declare i64 @jpeg_mem_available(%struct.jpeg_common_struct*, i64, i64, i64) #2

declare void @jpeg_open_backing_store(%struct.jpeg_common_struct*, %struct.backing_store_struct*, i64) #2

; Function Attrs: nounwind ssp uwtable
define internal void @do_sarray_io(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_sarray_control* %ptr, i32 %writing) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_sarray_control*, align 8
  %writing.addr = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %byte_count = alloca i64, align 8
  %rows = alloca i64, align 8
  %thisrow = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jvirt_sarray_control* %ptr, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  store i32 %writing, i32* %writing.addr, align 4, !tbaa !15
  %0 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i64* %file_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i64* %byte_count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast i64* %rows to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i64* %thisrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %samplesperrow = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %6, i32 0, i32 2
  %7 = load i32, i32* %samplesperrow, align 4, !tbaa !43
  %conv = zext i32 %7 to i64
  %mul = mul i64 %conv, 1
  store i64 %mul, i64* %bytesperrow, align 8, !tbaa !9
  %8 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %8, i32 0, i32 6
  %9 = load i32, i32* %cur_start_row, align 4, !tbaa !58
  %conv1 = zext i32 %9 to i64
  %10 = load i64, i64* %bytesperrow, align 8, !tbaa !9
  %mul2 = mul nsw i64 %conv1, %10
  store i64 %mul2, i64* %file_offset, align 8, !tbaa !9
  store i64 0, i64* %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %i, align 8, !tbaa !9
  %12 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %12, i32 0, i32 4
  %13 = load i32, i32* %rows_in_mem, align 4, !tbaa !56
  %conv3 = zext i32 %13 to i64
  %cmp = icmp slt i64 %11, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rowsperchunk = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %14, i32 0, i32 5
  %15 = load i32, i32* %rowsperchunk, align 4, !tbaa !57
  %conv5 = zext i32 %15 to i64
  %16 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %16, i32 0, i32 4
  %17 = load i32, i32* %rows_in_mem6, align 4, !tbaa !56
  %conv7 = zext i32 %17 to i64
  %18 = load i64, i64* %i, align 8, !tbaa !9
  %sub = sub nsw i64 %conv7, %18
  %cmp8 = icmp slt i64 %conv5, %sub
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %19, i32 0, i32 5
  %20 = load i32, i32* %rowsperchunk10, align 4, !tbaa !57
  %conv11 = zext i32 %20 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %21 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %21, i32 0, i32 4
  %22 = load i32, i32* %rows_in_mem12, align 4, !tbaa !56
  %conv13 = zext i32 %22 to i64
  %23 = load i64, i64* %i, align 8, !tbaa !9
  %sub14 = sub nsw i64 %conv13, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, i64* %rows, align 8, !tbaa !9
  %24 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %24, i32 0, i32 6
  %25 = load i32, i32* %cur_start_row15, align 4, !tbaa !58
  %conv16 = zext i32 %25 to i64
  %26 = load i64, i64* %i, align 8, !tbaa !9
  %add = add nsw i64 %conv16, %26
  store i64 %add, i64* %thisrow, align 8, !tbaa !9
  %27 = load i64, i64* %rows, align 8, !tbaa !9
  %28 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %28, i32 0, i32 7
  %29 = load i32, i32* %first_undef_row, align 4, !tbaa !59
  %conv17 = zext i32 %29 to i64
  %30 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub18 = sub nsw i64 %conv17, %30
  %cmp19 = icmp slt i64 %27, %sub18
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %31 = load i64, i64* %rows, align 8, !tbaa !9
  br label %cond.end.26

cond.false.22:                                    ; preds = %cond.end
  %32 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %32, i32 0, i32 7
  %33 = load i32, i32* %first_undef_row23, align 4, !tbaa !59
  %conv24 = zext i32 %33 to i64
  %34 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub25 = sub nsw i64 %conv24, %34
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.22, %cond.true.21
  %cond27 = phi i64 [ %31, %cond.true.21 ], [ %sub25, %cond.false.22 ]
  store i64 %cond27, i64* %rows, align 8, !tbaa !9
  %35 = load i64, i64* %rows, align 8, !tbaa !9
  %36 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_array = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %36, i32 0, i32 1
  %37 = load i32, i32* %rows_in_array, align 4, !tbaa !42
  %conv28 = zext i32 %37 to i64
  %38 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub29 = sub nsw i64 %conv28, %38
  %cmp30 = icmp slt i64 %35, %sub29
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.26
  %39 = load i64, i64* %rows, align 8, !tbaa !9
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.26
  %40 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %40, i32 0, i32 1
  %41 = load i32, i32* %rows_in_array34, align 4, !tbaa !42
  %conv35 = zext i32 %41 to i64
  %42 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub36 = sub nsw i64 %conv35, %42
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i64 [ %39, %cond.true.32 ], [ %sub36, %cond.false.33 ]
  store i64 %cond38, i64* %rows, align 8, !tbaa !9
  %43 = load i64, i64* %rows, align 8, !tbaa !9
  %cmp39 = icmp sle i64 %43, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.37
  br label %for.end

if.end:                                           ; preds = %cond.end.37
  %44 = load i64, i64* %rows, align 8, !tbaa !9
  %45 = load i64, i64* %bytesperrow, align 8, !tbaa !9
  %mul41 = mul nsw i64 %44, %45
  store i64 %mul41, i64* %byte_count, align 8, !tbaa !9
  %46 = load i32, i32* %writing.addr, align 4, !tbaa !15
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end
  %47 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %47, i32 0, i32 12
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info, i32 0, i32 1
  %48 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %write_backing_store, align 8, !tbaa !68
  %49 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %50 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info43 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %50, i32 0, i32 12
  %51 = load i64, i64* %i, align 8, !tbaa !9
  %52 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %52, i32 0, i32 0
  %53 = load i8**, i8*** %mem_buffer, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8*, i8** %53, i64 %51
  %54 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %55 = load i64, i64* %file_offset, align 8, !tbaa !9
  %56 = load i64, i64* %byte_count, align 8, !tbaa !9
  call void %48(%struct.jpeg_common_struct* %49, %struct.backing_store_struct* %b_s_info43, i8* %54, i64 %55, i64 %56)
  br label %if.end.48

if.else:                                          ; preds = %if.end
  %57 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info44 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %57, i32 0, i32 12
  %read_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info44, i32 0, i32 0
  %58 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %read_backing_store, align 8, !tbaa !69
  %59 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %60 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info45 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %60, i32 0, i32 12
  %61 = load i64, i64* %i, align 8, !tbaa !9
  %62 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer46 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %62, i32 0, i32 0
  %63 = load i8**, i8*** %mem_buffer46, align 8, !tbaa !39
  %arrayidx47 = getelementptr inbounds i8*, i8** %63, i64 %61
  %64 = load i8*, i8** %arrayidx47, align 8, !tbaa !2
  %65 = load i64, i64* %file_offset, align 8, !tbaa !9
  %66 = load i64, i64* %byte_count, align 8, !tbaa !9
  call void %58(%struct.jpeg_common_struct* %59, %struct.backing_store_struct* %b_s_info45, i8* %64, i64 %65, i64 %66)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.42
  %67 = load i64, i64* %byte_count, align 8, !tbaa !9
  %68 = load i64, i64* %file_offset, align 8, !tbaa !9
  %add49 = add nsw i64 %68, %67
  store i64 %add49, i64* %file_offset, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %69 = load %struct.jvirt_sarray_control*, %struct.jvirt_sarray_control** %ptr.addr, align 8, !tbaa !2
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_sarray_control, %struct.jvirt_sarray_control* %69, i32 0, i32 5
  %70 = load i32, i32* %rowsperchunk50, align 4, !tbaa !57
  %conv51 = zext i32 %70 to i64
  %71 = load i64, i64* %i, align 8, !tbaa !9
  %add52 = add nsw i64 %71, %conv51
  store i64 %add52, i64* %i, align 8, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %72 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #3
  %73 = bitcast i64* %thisrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #3
  %74 = bitcast i64* %rows to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #3
  %75 = bitcast i64* %byte_count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #3
  %76 = bitcast i64* %file_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #3
  %77 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #3
  ret void
}

declare void @jzero_far(i8*, i64) #2

; Function Attrs: nounwind ssp uwtable
define internal void @do_barray_io(%struct.jpeg_common_struct* %cinfo, %struct.jvirt_barray_control* %ptr, i32 %writing) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %ptr.addr = alloca %struct.jvirt_barray_control*, align 8
  %writing.addr = alloca i32, align 4
  %bytesperrow = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %byte_count = alloca i64, align 8
  %rows = alloca i64, align 8
  %thisrow = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.jvirt_barray_control* %ptr, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  store i32 %writing, i32* %writing.addr, align 4, !tbaa !15
  %0 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #3
  %1 = bitcast i64* %file_offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast i64* %byte_count to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast i64* %rows to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  %4 = bitcast i64* %thisrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %blocksperrow = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %6, i32 0, i32 2
  %7 = load i32, i32* %blocksperrow, align 4, !tbaa !51
  %conv = zext i32 %7 to i64
  %mul = mul i64 %conv, 128
  store i64 %mul, i64* %bytesperrow, align 8, !tbaa !9
  %8 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %8, i32 0, i32 6
  %9 = load i32, i32* %cur_start_row, align 4, !tbaa !63
  %conv1 = zext i32 %9 to i64
  %10 = load i64, i64* %bytesperrow, align 8, !tbaa !9
  %mul2 = mul nsw i64 %conv1, %10
  store i64 %mul2, i64* %file_offset, align 8, !tbaa !9
  store i64 0, i64* %i, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %i, align 8, !tbaa !9
  %12 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %12, i32 0, i32 4
  %13 = load i32, i32* %rows_in_mem, align 4, !tbaa !61
  %conv3 = zext i32 %13 to i64
  %cmp = icmp slt i64 %11, %conv3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rowsperchunk = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %14, i32 0, i32 5
  %15 = load i32, i32* %rowsperchunk, align 4, !tbaa !62
  %conv5 = zext i32 %15 to i64
  %16 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem6 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %16, i32 0, i32 4
  %17 = load i32, i32* %rows_in_mem6, align 4, !tbaa !61
  %conv7 = zext i32 %17 to i64
  %18 = load i64, i64* %i, align 8, !tbaa !9
  %sub = sub nsw i64 %conv7, %18
  %cmp8 = icmp slt i64 %conv5, %sub
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %19 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rowsperchunk10 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %19, i32 0, i32 5
  %20 = load i32, i32* %rowsperchunk10, align 4, !tbaa !62
  %conv11 = zext i32 %20 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %21 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_mem12 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %21, i32 0, i32 4
  %22 = load i32, i32* %rows_in_mem12, align 4, !tbaa !61
  %conv13 = zext i32 %22 to i64
  %23 = load i64, i64* %i, align 8, !tbaa !9
  %sub14 = sub nsw i64 %conv13, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv11, %cond.true ], [ %sub14, %cond.false ]
  store i64 %cond, i64* %rows, align 8, !tbaa !9
  %24 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %cur_start_row15 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %24, i32 0, i32 6
  %25 = load i32, i32* %cur_start_row15, align 4, !tbaa !63
  %conv16 = zext i32 %25 to i64
  %26 = load i64, i64* %i, align 8, !tbaa !9
  %add = add nsw i64 %conv16, %26
  store i64 %add, i64* %thisrow, align 8, !tbaa !9
  %27 = load i64, i64* %rows, align 8, !tbaa !9
  %28 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %28, i32 0, i32 7
  %29 = load i32, i32* %first_undef_row, align 4, !tbaa !64
  %conv17 = zext i32 %29 to i64
  %30 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub18 = sub nsw i64 %conv17, %30
  %cmp19 = icmp slt i64 %27, %sub18
  br i1 %cmp19, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %31 = load i64, i64* %rows, align 8, !tbaa !9
  br label %cond.end.26

cond.false.22:                                    ; preds = %cond.end
  %32 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %first_undef_row23 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %32, i32 0, i32 7
  %33 = load i32, i32* %first_undef_row23, align 4, !tbaa !64
  %conv24 = zext i32 %33 to i64
  %34 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub25 = sub nsw i64 %conv24, %34
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.false.22, %cond.true.21
  %cond27 = phi i64 [ %31, %cond.true.21 ], [ %sub25, %cond.false.22 ]
  store i64 %cond27, i64* %rows, align 8, !tbaa !9
  %35 = load i64, i64* %rows, align 8, !tbaa !9
  %36 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_array = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %36, i32 0, i32 1
  %37 = load i32, i32* %rows_in_array, align 4, !tbaa !50
  %conv28 = zext i32 %37 to i64
  %38 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub29 = sub nsw i64 %conv28, %38
  %cmp30 = icmp slt i64 %35, %sub29
  br i1 %cmp30, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.26
  %39 = load i64, i64* %rows, align 8, !tbaa !9
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.26
  %40 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rows_in_array34 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %40, i32 0, i32 1
  %41 = load i32, i32* %rows_in_array34, align 4, !tbaa !50
  %conv35 = zext i32 %41 to i64
  %42 = load i64, i64* %thisrow, align 8, !tbaa !9
  %sub36 = sub nsw i64 %conv35, %42
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i64 [ %39, %cond.true.32 ], [ %sub36, %cond.false.33 ]
  store i64 %cond38, i64* %rows, align 8, !tbaa !9
  %43 = load i64, i64* %rows, align 8, !tbaa !9
  %cmp39 = icmp sle i64 %43, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.37
  br label %for.end

if.end:                                           ; preds = %cond.end.37
  %44 = load i64, i64* %rows, align 8, !tbaa !9
  %45 = load i64, i64* %bytesperrow, align 8, !tbaa !9
  %mul41 = mul nsw i64 %44, %45
  store i64 %mul41, i64* %byte_count, align 8, !tbaa !9
  %46 = load i32, i32* %writing.addr, align 4, !tbaa !15
  %tobool = icmp ne i32 %46, 0
  br i1 %tobool, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end
  %47 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %47, i32 0, i32 12
  %write_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info, i32 0, i32 1
  %48 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %write_backing_store, align 8, !tbaa !70
  %49 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %50 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info43 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %50, i32 0, i32 12
  %51 = load i64, i64* %i, align 8, !tbaa !9
  %52 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %52, i32 0, i32 0
  %53 = load [64 x i16]**, [64 x i16]*** %mem_buffer, align 8, !tbaa !48
  %arrayidx = getelementptr inbounds [64 x i16]*, [64 x i16]** %53, i64 %51
  %54 = load [64 x i16]*, [64 x i16]** %arrayidx, align 8, !tbaa !2
  %55 = bitcast [64 x i16]* %54 to i8*
  %56 = load i64, i64* %file_offset, align 8, !tbaa !9
  %57 = load i64, i64* %byte_count, align 8, !tbaa !9
  call void %48(%struct.jpeg_common_struct* %49, %struct.backing_store_struct* %b_s_info43, i8* %55, i64 %56, i64 %57)
  br label %if.end.48

if.else:                                          ; preds = %if.end
  %58 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info44 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %58, i32 0, i32 12
  %read_backing_store = getelementptr inbounds %struct.backing_store_struct, %struct.backing_store_struct* %b_s_info44, i32 0, i32 0
  %59 = load void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)** %read_backing_store, align 8, !tbaa !71
  %60 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %61 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %b_s_info45 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %61, i32 0, i32 12
  %62 = load i64, i64* %i, align 8, !tbaa !9
  %63 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %mem_buffer46 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %63, i32 0, i32 0
  %64 = load [64 x i16]**, [64 x i16]*** %mem_buffer46, align 8, !tbaa !48
  %arrayidx47 = getelementptr inbounds [64 x i16]*, [64 x i16]** %64, i64 %62
  %65 = load [64 x i16]*, [64 x i16]** %arrayidx47, align 8, !tbaa !2
  %66 = bitcast [64 x i16]* %65 to i8*
  %67 = load i64, i64* %file_offset, align 8, !tbaa !9
  %68 = load i64, i64* %byte_count, align 8, !tbaa !9
  call void %59(%struct.jpeg_common_struct* %60, %struct.backing_store_struct* %b_s_info45, i8* %66, i64 %67, i64 %68)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.42
  %69 = load i64, i64* %byte_count, align 8, !tbaa !9
  %70 = load i64, i64* %file_offset, align 8, !tbaa !9
  %add49 = add nsw i64 %70, %69
  store i64 %add49, i64* %file_offset, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %71 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %ptr.addr, align 8, !tbaa !2
  %rowsperchunk50 = getelementptr inbounds %struct.jvirt_barray_control, %struct.jvirt_barray_control* %71, i32 0, i32 5
  %72 = load i32, i32* %rowsperchunk50, align 4, !tbaa !62
  %conv51 = zext i32 %72 to i64
  %73 = load i64, i64* %i, align 8, !tbaa !9
  %add52 = add nsw i64 %73, %conv51
  store i64 %add52, i64* %i, align 8, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %74 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #3
  %75 = bitcast i64* %thisrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #3
  %76 = bitcast i64* %rows to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #3
  %77 = bitcast i64* %byte_count to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #3
  %78 = bitcast i64* %file_offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #3
  %79 = bitcast i64* %bytesperrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #3
  ret void
}

declare void @jpeg_free_large(%struct.jpeg_common_struct*, i8*, i64) #2

declare void @jpeg_free_small(%struct.jpeg_common_struct*, i8*, i64) #2

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
!6 = !{!7, !3, i64 8}
!7 = !{!"jpeg_common_struct", !3, i64 0, !3, i64 8, !3, i64 16, !8, i64 24, !8, i64 28}
!8 = !{!"int", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!7, !3, i64 0}
!12 = !{!13, !8, i64 40}
!13 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !4, i64 44, !8, i64 124, !10, i64 128, !3, i64 136, !8, i64 144, !3, i64 152, !8, i64 160, !8, i64 164}
!14 = !{!13, !3, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !3, i64 0}
!17 = !{!"", !18, i64 0, !4, i64 96, !4, i64 112, !3, i64 128, !3, i64 136, !10, i64 144, !8, i64 152}
!18 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !10, i64 88}
!19 = !{!17, !3, i64 8}
!20 = !{!17, !3, i64 16}
!21 = !{!17, !3, i64 24}
!22 = !{!17, !3, i64 32}
!23 = !{!17, !3, i64 40}
!24 = !{!17, !3, i64 48}
!25 = !{!17, !3, i64 56}
!26 = !{!17, !3, i64 64}
!27 = !{!17, !3, i64 72}
!28 = !{!17, !3, i64 80}
!29 = !{!17, !10, i64 88}
!30 = !{!17, !3, i64 128}
!31 = !{!17, !3, i64 136}
!32 = !{!17, !10, i64 144}
!33 = !{!4, !4, i64 0}
!34 = !{!35, !10, i64 16}
!35 = !{!"", !3, i64 0, !10, i64 8, !10, i64 16}
!36 = !{!35, !3, i64 0}
!37 = !{!35, !10, i64 8}
!38 = !{!17, !8, i64 152}
!39 = !{!40, !3, i64 0}
!40 = !{!"jvirt_sarray_control", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !3, i64 48, !41, i64 56}
!41 = !{!"backing_store_struct", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !4, i64 32}
!42 = !{!40, !8, i64 8}
!43 = !{!40, !8, i64 12}
!44 = !{!40, !8, i64 16}
!45 = !{!40, !8, i64 36}
!46 = !{!40, !8, i64 44}
!47 = !{!40, !3, i64 48}
!48 = !{!49, !3, i64 0}
!49 = !{!"jvirt_barray_control", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !3, i64 48, !41, i64 56}
!50 = !{!49, !8, i64 8}
!51 = !{!49, !8, i64 12}
!52 = !{!49, !8, i64 16}
!53 = !{!49, !8, i64 36}
!54 = !{!49, !8, i64 44}
!55 = !{!49, !3, i64 48}
!56 = !{!40, !8, i64 20}
!57 = !{!40, !8, i64 24}
!58 = !{!40, !8, i64 28}
!59 = !{!40, !8, i64 32}
!60 = !{!40, !8, i64 40}
!61 = !{!49, !8, i64 20}
!62 = !{!49, !8, i64 24}
!63 = !{!49, !8, i64 28}
!64 = !{!49, !8, i64 32}
!65 = !{!49, !8, i64 40}
!66 = !{!40, !3, i64 72}
!67 = !{!49, !3, i64 72}
!68 = !{!40, !3, i64 64}
!69 = !{!40, !3, i64 56}
!70 = !{!49, !3, i64 64}
!71 = !{!49, !3, i64 56}
