; ModuleID = 'jmemnobs.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, void (%struct.jpeg_common_struct*)*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { void (%struct.jpeg_common_struct*)*, i64, i64, i32, i32 }
%struct.backing_store_struct = type { void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*, i8*, i64, i64)*, void (%struct.jpeg_common_struct*, %struct.backing_store_struct*)*, %struct.__sFILE*, [64 x i8] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: nounwind ssp uwtable
define i8* @jpeg_get_small(%struct.jpeg_common_struct* %cinfo, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8, !tbaa !6
  %0 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !6
  %call = call i8* @malloc(i64 %0)
  ret i8* %call
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind ssp uwtable
define void @jpeg_free_small(%struct.jpeg_common_struct* %cinfo, i8* %object, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %object.addr = alloca i8*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i8* %object, i8** %object.addr, align 8, !tbaa !2
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %object.addr, align 8, !tbaa !2
  call void @free(i8* %0)
  ret void
}

declare void @free(i8*) #1

; Function Attrs: nounwind ssp uwtable
define i8* @jpeg_get_large(%struct.jpeg_common_struct* %cinfo, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8, !tbaa !6
  %0 = load i64, i64* %sizeofobject.addr, align 8, !tbaa !6
  %call = call i8* @malloc(i64 %0)
  ret i8* %call
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_free_large(%struct.jpeg_common_struct* %cinfo, i8* %object, i64 %sizeofobject) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %object.addr = alloca i8*, align 8
  %sizeofobject.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i8* %object, i8** %object.addr, align 8, !tbaa !2
  store i64 %sizeofobject, i64* %sizeofobject.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %object.addr, align 8, !tbaa !2
  call void @free(i8* %0)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @jpeg_mem_available(%struct.jpeg_common_struct* %cinfo, i64 %min_bytes_needed, i64 %max_bytes_needed, i64 %already_allocated) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %min_bytes_needed.addr = alloca i64, align 8
  %max_bytes_needed.addr = alloca i64, align 8
  %already_allocated.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store i64 %min_bytes_needed, i64* %min_bytes_needed.addr, align 8, !tbaa !6
  store i64 %max_bytes_needed, i64* %max_bytes_needed.addr, align 8, !tbaa !6
  store i64 %already_allocated, i64* %already_allocated.addr, align 8, !tbaa !6
  %0 = load i64, i64* %max_bytes_needed.addr, align 8, !tbaa !6
  ret i64 %0
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_open_backing_store(%struct.jpeg_common_struct* %cinfo, %struct.backing_store_struct* %info, i64 %total_bytes_needed) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  %info.addr = alloca %struct.backing_store_struct*, align 8
  %total_bytes_needed.addr = alloca i64, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  store %struct.backing_store_struct* %info, %struct.backing_store_struct** %info.addr, align 8, !tbaa !2
  store i64 %total_bytes_needed, i64* %total_bytes_needed.addr, align 8, !tbaa !6
  %0 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i32 0, i32 0
  %1 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err, align 8, !tbaa !8
  %msg_code = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %1, i32 0, i32 5
  store i32 48, i32* %msg_code, align 4, !tbaa !11
  %2 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  %err1 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %2, i32 0, i32 0
  %3 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %err1, align 8, !tbaa !8
  %error_exit = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %3, i32 0, i32 0
  %4 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %error_exit, align 8, !tbaa !13
  %5 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  call void %4(%struct.jpeg_common_struct* %5)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i64 @jpeg_mem_init(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  ret i64 0
}

; Function Attrs: nounwind ssp uwtable
define void @jpeg_mem_term(%struct.jpeg_common_struct* %cinfo) #0 {
entry:
  %cinfo.addr = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %cinfo, %struct.jpeg_common_struct** %cinfo.addr, align 8, !tbaa !2
  ret void
}

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (trunk 245296)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"jpeg_common_struct", !3, i64 0, !3, i64 8, !3, i64 16, !10, i64 24, !10, i64 28}
!10 = !{!"int", !4, i64 0}
!11 = !{!12, !10, i64 40}
!12 = !{!"jpeg_error_mgr", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !10, i64 40, !4, i64 44, !10, i64 124, !7, i64 128, !3, i64 136, !10, i64 144, !3, i64 152, !10, i64 160, !10, i64 164}
!13 = !{!12, !3, i64 0}
