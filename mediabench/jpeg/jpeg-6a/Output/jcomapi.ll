; ModuleID = 'jcomapi.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { {}*, void (%struct.jpeg_common_struct*, i32)*, {}*, void (%struct.jpeg_common_struct*, i8*)*, {}*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

; Function Attrs: nounwind ssp uwtable
define void @jpeg_abort(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %pool = alloca i32, align 4
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast i32* %pool to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %pool, align 4, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %pool, align 4, !tbaa !6
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %free_pool = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 9
  %4 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %free_pool, align 8, !tbaa !10
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %6 = load i32, i32* %pool, align 4, !tbaa !6
  call void %4(%struct.jpeg_common_struct* %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %pool, align 4, !tbaa !6
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %pool, align 4, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %is_decompressor = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %8, i32 0, i32 3
  %9 = load i32, i32* %is_decompressor, align 4, !tbaa !13
  %tobool = icmp ne i32 %9, 0
  %cond = select i1 %tobool, i32 200, i32 100
  %10 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %10, i32 0, i32 4
  store i32 %cond, i32* %global_state, align 4, !tbaa !14
  %11 = bitcast i32* %pool to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  ret void
}

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind argmemonly
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_destroy(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 1
  %1 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %cmp = icmp ne %struct.jpeg_memory_mgr* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem1, align 8, !tbaa !8
  %self_destruct = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i32 0, i32 10
  %self_destruct2 = bitcast {}** %self_destruct to void (%struct.jpeg_common_struct*)**
  %4 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %self_destruct2, align 8, !tbaa !15
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %4(%struct.jpeg_common_struct* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem3 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %6, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %mem3, align 8, !tbaa !8
  %7 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %global_state = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %7, i32 0, i32 4
  store i32 0, i32* %global_state, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind ssp uwtable
define %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %tbl = alloca %struct.JQUANT_TBL*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.JQUANT_TBL** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !16
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i8* %3(%struct.jpeg_common_struct* %4, i32 0, i64 132)
  %5 = bitcast i8* %call to %struct.JQUANT_TBL*
  store %struct.JQUANT_TBL* %5, %struct.JQUANT_TBL** %tbl, align 8, !tbaa !2
  %6 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %tbl, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %6, i32 0, i32 1
  store i32 0, i32* %sent_table, align 4, !tbaa !17
  %7 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %tbl, align 8, !tbaa !2
  %8 = bitcast %struct.JQUANT_TBL** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret %struct.JQUANT_TBL* %7
}

; Function Attrs: nounwind ssp uwtable
define %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %tbl = alloca %struct.JHUFF_TBL*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.JHUFF_TBL** %tbl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %mem = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %1, i32 0, i32 1
  %2 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %mem, align 8, !tbaa !8
  %alloc_small = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %2, i32 0, i32 0
  %3 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %alloc_small, align 8, !tbaa !16
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %call = call i8* %3(%struct.jpeg_common_struct* %4, i32 0, i64 280)
  %5 = bitcast i8* %call to %struct.JHUFF_TBL*
  store %struct.JHUFF_TBL* %5, %struct.JHUFF_TBL** %tbl, align 8, !tbaa !2
  %6 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %tbl, align 8, !tbaa !2
  %sent_table = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %6, i32 0, i32 2
  store i32 0, i32* %sent_table, align 4, !tbaa !19
  %7 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %tbl, align 8, !tbaa !2
  %8 = bitcast %struct.JHUFF_TBL** %tbl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  ret %struct.JHUFF_TBL* %7
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind argmemonly }
attributes #2 = { nounwind }

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
!8 = !{!9, !3, i64 8}
!9 = !{!"jpeg_common_struct", !3, i64 0, !3, i64 8, !3, i64 16, !7, i64 24, !7, i64 28}
!10 = !{!11, !3, i64 72}
!11 = !{!"jpeg_memory_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !12, i64 88}
!12 = !{!"long", !4, i64 0}
!13 = !{!9, !7, i64 24}
!14 = !{!9, !7, i64 28}
!15 = !{!11, !3, i64 80}
!16 = !{!11, !3, i64 0}
!17 = !{!18, !7, i64 128}
!18 = !{!"", !4, i64 0, !7, i64 128}
!19 = !{!20, !7, i64 276}
!20 = !{!"", !4, i64 0, !4, i64 17, !7, i64 276}
