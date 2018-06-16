; ModuleID = 'example/example.c'
source_filename = "example/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define i32 @test(i32) local_unnamed_addr #0 !dbg !7 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !12, metadata !29), !dbg !30
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !13, metadata !29), !dbg !31
  %2 = zext i32 %0 to i64, !dbg !32
  %3 = alloca i32, i64 %2, align 16, !dbg !32
  tail call void @llvm.dbg.declare(metadata i32* %3, metadata !14, metadata !29), !dbg !33
  %4 = add nsw i32 %0, 2, !dbg !34
  %5 = zext i32 %4 to i64, !dbg !35
  %6 = alloca i32, i64 %5, align 16, !dbg !35
  tail call void @llvm.dbg.declare(metadata i32* %6, metadata !18, metadata !29), !dbg !36
  %7 = load i32, i32* %3, align 16, !dbg !37, !tbaa !38
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !13, metadata !29), !dbg !31
  %8 = add nsw i32 %0, -1, !dbg !42
  %9 = sext i32 %8 to i64, !dbg !43
  %10 = getelementptr inbounds i32, i32* %3, i64 %9, !dbg !43
  %11 = load i32, i32* %10, align 4, !dbg !43, !tbaa !38
  %12 = add nsw i32 %11, %7, !dbg !44
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !13, metadata !29), !dbg !31
  %13 = sext i32 %0 to i64, !dbg !45
  %14 = getelementptr inbounds i32, i32* %3, i64 %13, !dbg !45
  %15 = load i32, i32* %14, align 4, !dbg !45, !tbaa !38
  %16 = add nsw i32 %12, %15, !dbg !46
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !13, metadata !29), !dbg !31
  %17 = getelementptr inbounds i32, i32* %6, i64 %13, !dbg !47
  %18 = load i32, i32* %17, align 4, !dbg !47, !tbaa !38
  %19 = add nsw i32 %16, %18, !dbg !48
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !13, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !19, metadata !29), !dbg !49
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !20, metadata !29), !dbg !50
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !20, metadata !29), !dbg !50
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !19, metadata !29), !dbg !49
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !13, metadata !29), !dbg !31
  %20 = icmp slt i32 %0, 0, !dbg !51
  br i1 %20, label %24, label %21, !dbg !53

; <label>:21:                                     ; preds = %1
  %22 = add i32 %0, 1, !dbg !53
  %23 = zext i32 %22 to i64
  br label %39, !dbg !53

; <label>:24:                                     ; preds = %39, %1
  %25 = phi i32 [ %19, %1 ], [ %47, %39 ]
  %26 = phi i32 [ 0, %1 ], [ %22, %39 ]
  %27 = sext i32 %26 to i64, !dbg !54
  %28 = getelementptr inbounds i32, i32* %6, i64 %27, !dbg !54
  %29 = load i32, i32* %28, align 4, !dbg !54, !tbaa !38
  %30 = add nsw i32 %29, %25, !dbg !55
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !13, metadata !29), !dbg !31
  %31 = add nsw i32 %26, 1, !dbg !56
  %32 = sext i32 %31 to i64, !dbg !57
  %33 = getelementptr inbounds i32, i32* %6, i64 %32, !dbg !57
  %34 = load i32, i32* %33, align 4, !dbg !57, !tbaa !38
  %35 = add nsw i32 %30, %34, !dbg !58
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !13, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !22, metadata !29), !dbg !59
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !22, metadata !29), !dbg !59
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !13, metadata !29), !dbg !31
  %36 = icmp sgt i32 %0, -1, !dbg !60
  br i1 %36, label %37, label %67, !dbg !62

; <label>:37:                                     ; preds = %24
  %38 = sext i32 %0 to i64, !dbg !62
  br label %56, !dbg !62

; <label>:39:                                     ; preds = %39, %21
  %40 = phi i64 [ %48, %39 ], [ 0, %21 ]
  %41 = phi i32 [ %47, %39 ], [ %19, %21 ]
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !13, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !19, metadata !29), !dbg !49
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !20, metadata !29), !dbg !50
  %42 = getelementptr inbounds i32, i32* %3, i64 %40, !dbg !63
  %43 = load i32, i32* %42, align 4, !dbg !63, !tbaa !38
  %44 = add nsw i32 %43, %41, !dbg !65
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !13, metadata !29), !dbg !31
  %45 = getelementptr inbounds i32, i32* %6, i64 %40, !dbg !66
  %46 = load i32, i32* %45, align 4, !dbg !66, !tbaa !38
  %47 = add nsw i32 %44, %46, !dbg !67
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !13, metadata !29), !dbg !31
  %48 = add nuw nsw i64 %40, 1, !dbg !68
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !13, metadata !29), !dbg !31
  %49 = icmp eq i64 %48, %23, !dbg !51
  br i1 %49, label %24, label %39, !dbg !53, !llvm.loop !69

; <label>:50:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !29), !dbg !71
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !24, metadata !29), !dbg !71
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !13, metadata !29), !dbg !31
  %51 = icmp slt i32 %0, 0, !dbg !72
  br i1 %51, label %67, label %52, !dbg !73

; <label>:52:                                     ; preds = %50
  %53 = sext i32 %0 to i64, !dbg !73
  %54 = add i32 %0, 1, !dbg !73
  %55 = zext i32 %54 to i64
  br label %69, !dbg !73

; <label>:56:                                     ; preds = %37, %56
  %57 = phi i64 [ %38, %37 ], [ %65, %56 ]
  %58 = phi i32 [ %35, %37 ], [ %64, %56 ]
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !13, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !22, metadata !29), !dbg !59
  %59 = getelementptr inbounds i32, i32* %3, i64 %57, !dbg !74
  %60 = load i32, i32* %59, align 4, !dbg !74, !tbaa !38
  %61 = add nsw i32 %60, %58, !dbg !76
  tail call void @llvm.dbg.value(metadata i32 %61, i64 0, metadata !13, metadata !29), !dbg !31
  %62 = getelementptr inbounds i32, i32* %6, i64 %57, !dbg !77
  %63 = load i32, i32* %62, align 4, !dbg !77, !tbaa !38
  %64 = add nsw i32 %61, %63, !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !13, metadata !29), !dbg !31
  %65 = add nsw i64 %57, -1, !dbg !79
  tail call void @llvm.dbg.value(metadata i32 %64, i64 0, metadata !13, metadata !29), !dbg !31
  %66 = icmp sgt i64 %57, 0, !dbg !60
  br i1 %66, label %56, label %50, !dbg !62, !llvm.loop !80

; <label>:67:                                     ; preds = %72, %24, %50
  %68 = phi i32 [ %64, %50 ], [ %35, %24 ], [ %86, %72 ]
  ret i32 %68, !dbg !82

; <label>:69:                                     ; preds = %52, %72
  %70 = phi i64 [ %73, %72 ], [ 0, %52 ]
  %71 = phi i32 [ %86, %72 ], [ %64, %52 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !29), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !26, metadata !29), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !13, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !13, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !24, metadata !29), !dbg !71
  br label %75, !dbg !84

; <label>:72:                                     ; preds = %75
  %73 = add nuw nsw i64 %70, 1, !dbg !85
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !13, metadata !29), !dbg !31
  %74 = icmp eq i64 %73, %55, !dbg !72
  br i1 %74, label %67, label %69, !dbg !73, !llvm.loop !86

; <label>:75:                                     ; preds = %69, %75
  %76 = phi i64 [ 0, %69 ], [ %87, %75 ]
  %77 = phi i64 [ %70, %69 ], [ %88, %75 ]
  %78 = phi i32 [ %71, %69 ], [ %86, %75 ]
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !13, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !26, metadata !29), !dbg !83
  %79 = shl i64 %77, 32, !dbg !88
  %80 = ashr exact i64 %79, 32, !dbg !88
  %81 = getelementptr inbounds i32, i32* %3, i64 %80, !dbg !88
  %82 = load i32, i32* %81, align 4, !dbg !88, !tbaa !38
  %83 = add nsw i32 %82, %78, !dbg !91
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !13, metadata !29), !dbg !31
  %84 = getelementptr inbounds i32, i32* %6, i64 %80, !dbg !92
  %85 = load i32, i32* %84, align 4, !dbg !92, !tbaa !38
  %86 = add nsw i32 %83, %85, !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !13, metadata !29), !dbg !31
  %87 = add nuw nsw i64 %76, 1, !dbg !94
  tail call void @llvm.dbg.value(metadata i32 %86, i64 0, metadata !13, metadata !29), !dbg !31
  %88 = add nsw i64 %87, %70, !dbg !95
  %89 = icmp sgt i64 %88, %53, !dbg !96
  br i1 %89, label %72, label %75, !dbg !84, !llvm.loop !97
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "example/example.c", directory: "/home/parallels/llvm_proof")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)"}
!7 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 1, type: !8, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !18, !19, !20, !22, !24, !26}
!12 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !1, line: 1, type: !10)
!13 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 3, type: !10)
!14 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 5, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: -1)
!18 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 6, type: !15)
!19 = !DILocalVariable(name: "t", scope: !7, file: !1, line: 13, type: !10)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 14, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 5)
!22 = !DILocalVariable(name: "i", scope: !23, file: !1, line: 23, type: !10)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 5)
!24 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 29, type: !10)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 29, column: 5)
!26 = !DILocalVariable(name: "j", scope: !27, file: !1, line: 30, type: !10)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 30, column: 2)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 29, column: 5)
!29 = !DIExpression()
!30 = !DILocation(line: 1, column: 14, scope: !7)
!31 = !DILocation(line: 3, column: 9, scope: !7)
!32 = !DILocation(line: 5, column: 5, scope: !7)
!33 = !DILocation(line: 5, column: 9, scope: !7)
!34 = !DILocation(line: 6, column: 13, scope: !7)
!35 = !DILocation(line: 6, column: 5, scope: !7)
!36 = !DILocation(line: 6, column: 9, scope: !7)
!37 = !DILocation(line: 8, column: 12, scope: !7)
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 9, column: 16, scope: !7)
!43 = !DILocation(line: 9, column: 12, scope: !7)
!44 = !DILocation(line: 9, column: 9, scope: !7)
!45 = !DILocation(line: 10, column: 12, scope: !7)
!46 = !DILocation(line: 10, column: 9, scope: !7)
!47 = !DILocation(line: 11, column: 12, scope: !7)
!48 = !DILocation(line: 11, column: 9, scope: !7)
!49 = !DILocation(line: 13, column: 9, scope: !7)
!50 = !DILocation(line: 14, column: 14, scope: !21)
!51 = !DILocation(line: 14, column: 23, scope: !52)
!52 = distinct !DILexicalBlock(scope: !21, file: !1, line: 14, column: 5)
!53 = !DILocation(line: 14, column: 5, scope: !21)
!54 = !DILocation(line: 20, column: 12, scope: !7)
!55 = !DILocation(line: 20, column: 9, scope: !7)
!56 = !DILocation(line: 21, column: 16, scope: !7)
!57 = !DILocation(line: 21, column: 12, scope: !7)
!58 = !DILocation(line: 21, column: 9, scope: !7)
!59 = !DILocation(line: 23, column: 14, scope: !23)
!60 = !DILocation(line: 23, column: 23, scope: !61)
!61 = distinct !DILexicalBlock(scope: !23, file: !1, line: 23, column: 5)
!62 = !DILocation(line: 23, column: 5, scope: !23)
!63 = !DILocation(line: 16, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !52, file: !1, line: 15, column: 5)
!65 = !DILocation(line: 16, column: 6, scope: !64)
!66 = !DILocation(line: 17, column: 9, scope: !64)
!67 = !DILocation(line: 17, column: 6, scope: !64)
!68 = !DILocation(line: 14, column: 29, scope: !52)
!69 = distinct !{!69, !53, !70}
!70 = !DILocation(line: 19, column: 5, scope: !21)
!71 = !DILocation(line: 29, column: 14, scope: !25)
!72 = !DILocation(line: 29, column: 23, scope: !28)
!73 = !DILocation(line: 29, column: 5, scope: !25)
!74 = !DILocation(line: 25, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !61, file: !1, line: 24, column: 5)
!76 = !DILocation(line: 25, column: 6, scope: !75)
!77 = !DILocation(line: 26, column: 9, scope: !75)
!78 = !DILocation(line: 26, column: 6, scope: !75)
!79 = !DILocation(line: 23, column: 29, scope: !61)
!80 = distinct !{!80, !62, !81}
!81 = !DILocation(line: 27, column: 5, scope: !23)
!82 = !DILocation(line: 37, column: 1, scope: !7)
!83 = !DILocation(line: 30, column: 11, scope: !27)
!84 = !DILocation(line: 30, column: 2, scope: !27)
!85 = !DILocation(line: 29, column: 29, scope: !28)
!86 = distinct !{!86, !73, !87}
!87 = !DILocation(line: 34, column: 2, scope: !25)
!88 = !DILocation(line: 32, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 31, column: 2)
!90 = distinct !DILexicalBlock(scope: !27, file: !1, line: 30, column: 2)
!91 = !DILocation(line: 32, column: 10, scope: !89)
!92 = !DILocation(line: 33, column: 13, scope: !89)
!93 = !DILocation(line: 33, column: 10, scope: !89)
!94 = !DILocation(line: 30, column: 30, scope: !90)
!95 = !DILocation(line: 30, column: 20, scope: !90)
!96 = !DILocation(line: 30, column: 24, scope: !90)
!97 = distinct !{!97, !84, !98}
!98 = !DILocation(line: 34, column: 2, scope: !27)
