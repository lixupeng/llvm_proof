; ModuleID = 'example/path.c'
source_filename = "example/path.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Vector_double = type { double*, double*, i32 }
%struct.Vec2d = type { double, double }
%struct.Vector_Vec2d = type { %struct.Vec2d*, %struct.Vec2d*, i32 }
%struct.Vector_LineSegment2d = type { %struct.LineSegment2d*, %struct.LineSegment2d*, i32 }
%struct.LineSegment2d = type { %struct.Vec2d, %struct.Vec2d, %struct.Vec2d, double, double }
%struct.LaneInfo = type { double, %struct.Vector_Vec2d, %struct.Vector_Vec2d, %struct.Vector_LineSegment2d, %struct.Vector_double, %struct.LaneBoundary, %struct.Vector_int }
%struct.LaneBoundary = type { double, %struct.Vector_LaneBoundaryType }
%struct.Vector_LaneBoundaryType = type { %struct.LaneBoundaryType*, %struct.LaneBoundaryType*, i32 }
%struct.LaneBoundaryType = type { double, i32*, i32 }
%struct.Vector_int = type { i32*, i32*, i32 }
%struct.LaneWaypoint = type { %struct.LaneInfo*, double, double }

; Function Attrs: nounwind readnone uwtable
define double @min_double(double, double) local_unnamed_addr #0 !dbg !87 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !91, metadata !93), !dbg !94
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !92, metadata !93), !dbg !95
  %3 = fcmp olt double %0, %1, !dbg !96
  %4 = select i1 %3, double %0, double %1, !dbg !97
  ret double %4, !dbg !98
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly uwtable
define i32 @size_double(%struct.Vector_double* nocapture readonly) local_unnamed_addr #2 !dbg !99 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_double* %0, i64 0, metadata !105, metadata !93), !dbg !106
  %2 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %0, i64 0, i32 1, !dbg !107
  %3 = bitcast double** %2 to i64*, !dbg !107
  %4 = load i64, i64* %3, align 8, !dbg !107, !tbaa !108
  %5 = bitcast %struct.Vector_double* %0 to i64*, !dbg !114
  %6 = load i64, i64* %5, align 8, !dbg !114, !tbaa !115
  %7 = sub i64 %4, %6, !dbg !116
  %8 = lshr exact i64 %7, 3, !dbg !116
  %9 = trunc i64 %8 to i32, !dbg !117
  ret i32 %9, !dbg !118
}

; Function Attrs: nounwind readonly uwtable
define double* @lower_bound_double(double* readonly, double* readnone, double) local_unnamed_addr #2 !dbg !119 {
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !123, metadata !93), !dbg !127
  tail call void @llvm.dbg.value(metadata double* %1, i64 0, metadata !124, metadata !93), !dbg !128
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !125, metadata !93), !dbg !129
  %4 = icmp ne double* %0, null, !dbg !130
  %5 = icmp ne double* %1, null, !dbg !132
  %6 = and i1 %4, %5, !dbg !133
  br i1 %6, label %7, label %17, !dbg !133

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !126, metadata !93), !dbg !134
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !126, metadata !93), !dbg !134
  %8 = icmp eq double* %0, %1, !dbg !135
  br i1 %8, label %17, label %9, !dbg !138

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !139

; <label>:10:                                     ; preds = %9, %14
  %11 = phi double* [ %15, %14 ], [ %0, %9 ]
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !126, metadata !93), !dbg !134
  %12 = load double, double* %11, align 8, !dbg !139, !tbaa !142
  %13 = fcmp ult double %12, %2, !dbg !144
  br i1 %13, label %14, label %17, !dbg !145

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds double, double* %11, i64 1, !dbg !146
  tail call void @llvm.dbg.value(metadata double* %15, i64 0, metadata !126, metadata !93), !dbg !134
  tail call void @llvm.dbg.value(metadata double* %15, i64 0, metadata !126, metadata !93), !dbg !134
  %16 = icmp eq double* %15, %1, !dbg !135
  br i1 %16, label %17, label %10, !dbg !138, !llvm.loop !147

; <label>:17:                                     ; preds = %10, %14, %7, %3
  %18 = phi double* [ %1, %3 ], [ %0, %7 ], [ %11, %10 ], [ %15, %14 ]
  ret double* %18, !dbg !149
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone uwtable
define double @InnerProd(double, double, double, double) local_unnamed_addr #0 !dbg !150 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !155, metadata !157), !dbg !158
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !155, metadata !159), !dbg !158
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !156, metadata !157), !dbg !160
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !156, metadata !159), !dbg !160
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !155, metadata !93), !dbg !158
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !156, metadata !93), !dbg !160
  %5 = fmul double %0, %2, !dbg !161
  %6 = fmul double %1, %3, !dbg !162
  %7 = fadd double %5, %6, !dbg !163
  ret double %7, !dbg !164
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @Sub(double, double, double, double) local_unnamed_addr #0 !dbg !165 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !169, metadata !157), !dbg !172
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !169, metadata !159), !dbg !172
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !170, metadata !157), !dbg !173
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !170, metadata !159), !dbg !173
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !169, metadata !93), !dbg !172
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !170, metadata !93), !dbg !173
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !171, metadata !93), !dbg !174
  %5 = fsub double %0, %2, !dbg !175
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !171, metadata !157), !dbg !174
  %6 = fsub double %1, %3, !dbg !176
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !171, metadata !159), !dbg !174
  %7 = insertvalue { double, double } undef, double %5, 0, !dbg !177
  %8 = insertvalue { double, double } %7, double %6, 1, !dbg !177
  ret { double, double } %8, !dbg !177
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @Mul(double, double, double) local_unnamed_addr #0 !dbg !178 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !182, metadata !157), !dbg !185
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !182, metadata !159), !dbg !185
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !182, metadata !93), !dbg !185
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !183, metadata !93), !dbg !186
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !184, metadata !93), !dbg !187
  %4 = fmul double %0, %2, !dbg !188
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !184, metadata !157), !dbg !187
  %5 = fmul double %1, %2, !dbg !189
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !184, metadata !159), !dbg !187
  %6 = insertvalue { double, double } undef, double %4, 0, !dbg !190
  %7 = insertvalue { double, double } %6, double %5, 1, !dbg !190
  ret { double, double } %7, !dbg !190
}

; Function Attrs: nounwind readonly uwtable
define i32 @empty_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #2 !dbg !191 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_Vec2d* %0, i64 0, metadata !197, metadata !93), !dbg !198
  %2 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1, !dbg !199
  %3 = load %struct.Vec2d*, %struct.Vec2d** %2, align 8, !dbg !199, !tbaa !200
  %4 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 0, !dbg !202
  %5 = load %struct.Vec2d*, %struct.Vec2d** %4, align 8, !dbg !202, !tbaa !203
  %6 = icmp eq %struct.Vec2d* %3, %5, !dbg !204
  %7 = zext i1 %6 to i32, !dbg !204
  ret i32 %7, !dbg !205
}

; Function Attrs: nounwind readonly uwtable
define i32 @size_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #2 !dbg !206 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_Vec2d* %0, i64 0, metadata !208, metadata !93), !dbg !209
  %2 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1, !dbg !210
  %3 = bitcast %struct.Vec2d** %2 to i64*, !dbg !210
  %4 = load i64, i64* %3, align 8, !dbg !210, !tbaa !200
  %5 = bitcast %struct.Vector_Vec2d* %0 to i64*, !dbg !211
  %6 = load i64, i64* %5, align 8, !dbg !211, !tbaa !203
  %7 = sub i64 %4, %6, !dbg !212
  %8 = lshr exact i64 %7, 4, !dbg !212
  %9 = trunc i64 %8 to i32, !dbg !213
  ret i32 %9, !dbg !214
}

; Function Attrs: nounwind readonly uwtable
define i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #2 !dbg !215 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_LineSegment2d* %0, i64 0, metadata !221, metadata !93), !dbg !222
  %2 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1, !dbg !223
  %3 = load %struct.LineSegment2d*, %struct.LineSegment2d** %2, align 8, !dbg !223, !tbaa !224
  %4 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 0, !dbg !226
  %5 = load %struct.LineSegment2d*, %struct.LineSegment2d** %4, align 8, !dbg !226, !tbaa !227
  %6 = icmp eq %struct.LineSegment2d* %3, %5, !dbg !228
  %7 = zext i1 %6 to i32, !dbg !228
  ret i32 %7, !dbg !229
}

; Function Attrs: nounwind readonly uwtable
define i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #2 !dbg !230 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_LineSegment2d* %0, i64 0, metadata !232, metadata !93), !dbg !233
  %2 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1, !dbg !234
  %3 = bitcast %struct.LineSegment2d** %2 to i64*, !dbg !234
  %4 = load i64, i64* %3, align 8, !dbg !234, !tbaa !224
  %5 = bitcast %struct.Vector_LineSegment2d* %0 to i64*, !dbg !235
  %6 = load i64, i64* %5, align 8, !dbg !235, !tbaa !227
  %7 = sub i64 %4, %6, !dbg !236
  %8 = lshr exact i64 %7, 6, !dbg !236
  %9 = trunc i64 %8 to i32, !dbg !237
  ret i32 %9, !dbg !238
}

; Function Attrs: nounwind uwtable
define i32 @GetProjection(%struct.LaneInfo* readonly, %struct.Vec2d*, double*, double*) local_unnamed_addr #4 !dbg !239 {
  tail call void @llvm.dbg.value(metadata %struct.LaneInfo* %0, i64 0, metadata !245, metadata !93), !dbg !271
  tail call void @llvm.dbg.value(metadata %struct.Vec2d* %1, i64 0, metadata !246, metadata !93), !dbg !272
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !247, metadata !93), !dbg !273
  tail call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !248, metadata !93), !dbg !274
  %5 = icmp eq double* %2, null, !dbg !275
  %6 = icmp eq double* %3, null, !dbg !277
  %7 = or i1 %5, %6, !dbg !279
  %8 = icmp eq %struct.Vec2d* %1, null, !dbg !280
  %9 = or i1 %8, %7, !dbg !279
  %10 = icmp eq %struct.LaneInfo* %0, null, !dbg !282
  %11 = or i1 %10, %9, !dbg !279
  br i1 %11, label %112, label %12, !dbg !279

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 3, !dbg !284
  %14 = tail call i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* %13), !dbg !285
  %15 = icmp eq i32 %14, 0, !dbg !285
  br i1 %15, label %16, label %112, !dbg !286

; <label>:16:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata double 0x47D2CED32A16A1B1, i64 0, metadata !249, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !252, metadata !93), !dbg !289
  %17 = tail call i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* %13), !dbg !290
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !253, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !254, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0x47D2CED32A16A1B1, i64 0, metadata !249, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !252, metadata !93), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !254, metadata !93), !dbg !292
  %18 = icmp sgt i32 %17, 0, !dbg !293
  %19 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %13, i64 0, i32 0
  %20 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !294
  br i1 %18, label %21, label %26, !dbg !299

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 1
  %24 = sext i32 %17 to i64, !dbg !299
  %25 = zext i32 %17 to i64
  br label %39, !dbg !299

; <label>:26:                                     ; preds = %82, %16
  %27 = phi double [ 0.000000e+00, %16 ], [ %83, %82 ]
  %28 = phi i32 [ 0, %16 ], [ %84, %82 ]
  %29 = phi double [ 0x47D2CED32A16A1B1, %16 ], [ %85, %82 ]
  %30 = phi %struct.LineSegment2d* [ %20, %16 ], [ %87, %82 ]
  %31 = zext i32 %28 to i64, !dbg !300
  %32 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, !dbg !300
  tail call void @llvm.dbg.value(metadata %struct.LineSegment2d* %32, i64 0, metadata !269, metadata !93), !dbg !301
  %33 = add i32 %28, 1, !dbg !302
  %34 = icmp ult i32 %33, %17, !dbg !304
  %35 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 0
  %36 = load double*, double** %35, align 8, !tbaa !305
  %37 = getelementptr inbounds double, double* %36, i64 %31
  %38 = load double, double* %37, align 8, !tbaa !142
  br i1 %34, label %89, label %93, !dbg !306

; <label>:39:                                     ; preds = %82, %21
  %40 = phi i64 [ 0, %21 ], [ %86, %82 ]
  %41 = phi %struct.LineSegment2d* [ %20, %21 ], [ %87, %82 ]
  %42 = phi double [ 0x47D2CED32A16A1B1, %21 ], [ %85, %82 ]
  %43 = phi i32 [ 0, %21 ], [ %84, %82 ]
  %44 = phi double [ 0.000000e+00, %21 ], [ %83, %82 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !254, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double %44, i64 0, metadata !252, metadata !93), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !250, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double %42, i64 0, metadata !249, metadata !93), !dbg !287
  %45 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %41, i64 %40, !dbg !307
  tail call void @llvm.dbg.value(metadata %struct.LineSegment2d* %45, i64 0, metadata !256, metadata !93), !dbg !308
  %46 = tail call double @DistanceTo(%struct.LineSegment2d* %45, %struct.Vec2d* nonnull %1) #7, !dbg !309
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !261, metadata !93), !dbg !310
  %47 = fcmp olt double %46, %42, !dbg !311
  br i1 %47, label %48, label %82, !dbg !312

; <label>:48:                                     ; preds = %39
  %49 = tail call double @ProjectOntoUnit(%struct.LineSegment2d* %45, %struct.Vec2d* nonnull %1) #7, !dbg !313
  tail call void @llvm.dbg.value(metadata double %49, i64 0, metadata !263, metadata !93), !dbg !314
  %50 = fcmp olt double %49, 0.000000e+00, !dbg !315
  %51 = icmp ne i64 %40, 0, !dbg !317
  %52 = and i1 %51, %50, !dbg !318
  br i1 %52, label %82, label %53, !dbg !318

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %41, i64 %40, i32 4, !dbg !319
  %55 = load double, double* %54, align 8, !dbg !319, !tbaa !320
  %56 = fcmp ogt double %49, %55, !dbg !323
  %57 = add nuw nsw i64 %40, 1, !dbg !324
  %58 = icmp slt i64 %57, %24, !dbg !325
  %59 = and i1 %58, %56, !dbg !326
  br i1 %59, label %60, label %80, !dbg !326

; <label>:60:                                     ; preds = %53
  %61 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !dbg !327, !tbaa !294
  %62 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %61, i64 %40, !dbg !328
  %63 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %62, i64 1, !dbg !329
  tail call void @llvm.dbg.value(metadata %struct.LineSegment2d* %63, i64 0, metadata !266, metadata !93), !dbg !330
  %64 = load double, double* %22, align 8, !dbg !331
  %65 = load double, double* %23, align 8, !dbg !331
  %66 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 0, i32 0, !dbg !331
  %67 = load double, double* %66, align 8, !dbg !331
  %68 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 0, i32 1, !dbg !331
  %69 = load double, double* %68, align 8, !dbg !331
  %70 = tail call { double, double } @Sub(double %64, double %65, double %67, double %69), !dbg !331
  %71 = extractvalue { double, double } %70, 0, !dbg !331
  %72 = extractvalue { double, double } %70, 1, !dbg !331
  %73 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 2, !dbg !333
  %74 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %73, i64 0, i32 0, !dbg !334
  %75 = load double, double* %74, align 8, !dbg !334
  %76 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %73, i64 0, i32 1, !dbg !334
  %77 = load double, double* %76, align 8, !dbg !334
  %78 = tail call double @InnerProd(double %71, double %72, double %75, double %77), !dbg !334
  %79 = fcmp ult double %78, 0.000000e+00, !dbg !335
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %60, %53
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !249, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !250, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double %49, i64 0, metadata !252, metadata !93), !dbg !289
  %81 = trunc i64 %40 to i32, !dbg !336
  br label %82, !dbg !336

; <label>:82:                                     ; preds = %80, %60, %48, %39
  %83 = phi double [ %44, %39 ], [ %49, %80 ], [ %44, %60 ], [ %44, %48 ]
  %84 = phi i32 [ %43, %39 ], [ %81, %80 ], [ %43, %60 ], [ %43, %48 ]
  %85 = phi double [ %42, %39 ], [ %46, %80 ], [ %42, %60 ], [ %42, %48 ]
  tail call void @llvm.dbg.value(metadata double %85, i64 0, metadata !249, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !250, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double %83, i64 0, metadata !252, metadata !93), !dbg !289
  %86 = add nuw nsw i64 %40, 1, !dbg !337
  tail call void @llvm.dbg.value(metadata double %85, i64 0, metadata !249, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !250, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double %83, i64 0, metadata !252, metadata !93), !dbg !289
  %87 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !294
  %88 = icmp eq i64 %86, %25, !dbg !293
  br i1 %88, label %26, label %39, !dbg !299, !llvm.loop !338

; <label>:89:                                     ; preds = %26
  %90 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, i32 4, !dbg !340
  %91 = load double, double* %90, align 8, !dbg !340, !tbaa !320
  %92 = tail call double @min_double(double %27, double %91), !dbg !342
  br label %93

; <label>:93:                                     ; preds = %26, %89
  %94 = phi double [ %92, %89 ], [ %27, %26 ]
  %95 = fadd double %38, %94
  store double %95, double* %2, align 8, !tbaa !142
  %96 = tail call double @ProductOntoUnit(%struct.LineSegment2d* %32, %struct.Vec2d* nonnull %1) #7, !dbg !343
  tail call void @llvm.dbg.value(metadata double %96, i64 0, metadata !270, metadata !93), !dbg !344
  %97 = icmp eq i32 %28, 0, !dbg !345
  %98 = fcmp olt double %27, 0.000000e+00, !dbg !347
  %99 = and i1 %98, %97, !dbg !348
  br i1 %99, label %110, label %100, !dbg !348

; <label>:100:                                    ; preds = %93
  %101 = icmp eq i32 %33, %17, !dbg !349
  br i1 %101, label %102, label %106, !dbg !350

; <label>:102:                                    ; preds = %100
  %103 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, i32 4, !dbg !351
  %104 = load double, double* %103, align 8, !dbg !351, !tbaa !320
  %105 = fcmp ogt double %27, %104, !dbg !352
  br i1 %105, label %110, label %106, !dbg !353

; <label>:106:                                    ; preds = %102, %100
  %107 = fcmp ogt double %96, 0.000000e+00, !dbg !354
  %108 = fsub double -0.000000e+00, %29, !dbg !356
  %109 = select i1 %107, double %29, double %108, !dbg !357
  br label %110

; <label>:110:                                    ; preds = %102, %93, %106
  %111 = phi double [ %109, %106 ], [ %96, %93 ], [ %96, %102 ]
  store double %111, double* %3, align 8, !tbaa !142
  br label %112

; <label>:112:                                    ; preds = %12, %4, %110
  %113 = phi i32 [ 1, %110 ], [ 0, %4 ], [ 0, %12 ]
  ret i32 %113, !dbg !358
}

declare double @DistanceTo(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #5

declare double @ProjectOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #5

declare double @ProductOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #5

; Function Attrs: nounwind readonly uwtable
define { double, double } @GetSmoothPoint(%struct.LaneInfo* nocapture readonly, double) local_unnamed_addr #2 !dbg !359 {
  tail call void @llvm.dbg.value(metadata %struct.LaneInfo* %0, i64 0, metadata !363, metadata !93), !dbg !371
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !364, metadata !93), !dbg !372
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !365, metadata !93), !dbg !373
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !365, metadata !157), !dbg !373
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !365, metadata !159), !dbg !373
  %3 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 1, !dbg !374
  %4 = tail call i32 @size_Vec2d(%struct.Vector_Vec2d* %3), !dbg !376
  %5 = icmp slt i32 %4, 2, !dbg !377
  br i1 %5, label %71, label %6, !dbg !378

; <label>:6:                                      ; preds = %2
  %7 = fcmp ugt double %1, 0.000000e+00, !dbg !379
  br i1 %7, label %15, label %8, !dbg !381

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i64 0, i32 0, !dbg !382
  %10 = load %struct.Vec2d*, %struct.Vec2d** %9, align 8, !dbg !382, !tbaa !384
  %11 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i64 0, i32 0, !dbg !385
  %12 = load double, double* %11, align 8, !dbg !385
  %13 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i64 0, i32 1, !dbg !385
  %14 = load double, double* %13, align 8, !dbg !385
  br label %71, !dbg !386

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 0, !dbg !387
  %17 = load double, double* %16, align 8, !dbg !387, !tbaa !389
  %18 = fcmp ugt double %17, %1, !dbg !390
  br i1 %18, label %26, label %19, !dbg !391

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 1, i32 1, !dbg !392
  %21 = load %struct.Vec2d*, %struct.Vec2d** %20, align 8, !dbg !392, !tbaa !394
  %22 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %21, i64 -1, i32 0, !dbg !395
  %23 = load double, double* %22, align 8, !dbg !395
  %24 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %21, i64 -1, i32 1, !dbg !395
  %25 = load double, double* %24, align 8, !dbg !395
  br label %71, !dbg !396

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, !dbg !397
  %28 = tail call i32 @size_double(%struct.Vector_double* %27), !dbg !399
  %29 = icmp eq i32 %4, %28, !dbg !400
  br i1 %29, label %30, label %71, !dbg !401

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %27, i64 0, i32 0, !dbg !402
  %32 = load double*, double** %31, align 8, !dbg !402, !tbaa !305
  %33 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 1, !dbg !403
  %34 = load double*, double** %33, align 8, !dbg !403, !tbaa !404
  %35 = tail call double* @lower_bound_double(double* %32, double* %34, double %1), !dbg !405
  tail call void @llvm.dbg.value(metadata double* %35, i64 0, metadata !366, metadata !93), !dbg !406
  %36 = icmp eq double* %35, %34, !dbg !407
  br i1 %36, label %71, label %37, !dbg !409

; <label>:37:                                     ; preds = %30
  %38 = bitcast %struct.Vector_double* %27 to i64*, !dbg !410
  %39 = load i64, i64* %38, align 8, !dbg !410, !tbaa !305
  %40 = ptrtoint double* %35 to i64, !dbg !411
  %41 = sub i64 %40, %39, !dbg !411
  %42 = lshr exact i64 %41, 3, !dbg !411
  %43 = load double, double* %35, align 8, !dbg !412, !tbaa !142
  %44 = fsub double %43, %1, !dbg !413
  tail call void @llvm.dbg.value(metadata double %44, i64 0, metadata !369, metadata !93), !dbg !414
  %45 = fcmp olt double %44, 1.000000e-08, !dbg !415
  %46 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i64 0, i32 0
  %47 = load %struct.Vec2d*, %struct.Vec2d** %46, align 8, !tbaa !384
  %48 = and i64 %42, 4294967295
  br i1 %45, label %49, label %54, !dbg !417

; <label>:49:                                     ; preds = %37
  %50 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %47, i64 %48, i32 0, !dbg !418
  %51 = load double, double* %50, align 8, !dbg !418
  %52 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %47, i64 %48, i32 1, !dbg !418
  %53 = load double, double* %52, align 8, !dbg !418
  br label %71, !dbg !420

; <label>:54:                                     ; preds = %37
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !370, metadata !93), !dbg !421
  %55 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 2, i32 0, !dbg !422
  %56 = load %struct.Vec2d*, %struct.Vec2d** %55, align 8, !dbg !422, !tbaa !423
  %57 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %56, i64 %48, i32 0, !dbg !424
  %58 = load double, double* %57, align 8, !dbg !424
  %59 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %56, i64 %48, i32 1, !dbg !424
  %60 = load double, double* %59, align 8, !dbg !424
  %61 = tail call { double, double } @Mul(double %58, double %60, double %44), !dbg !424
  %62 = extractvalue { double, double } %61, 0, !dbg !424
  %63 = extractvalue { double, double } %61, 1, !dbg !424
  %64 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %47, i64 %48, i32 0, !dbg !425
  %65 = load double, double* %64, align 8, !dbg !425
  %66 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %47, i64 %48, i32 1, !dbg !425
  %67 = load double, double* %66, align 8, !dbg !425
  %68 = tail call { double, double } @Sub(double %65, double %67, double %62, double %63), !dbg !425
  %69 = extractvalue { double, double } %68, 0, !dbg !425
  tail call void @llvm.dbg.value(metadata double %69, i64 0, metadata !370, metadata !157), !dbg !421
  %70 = extractvalue { double, double } %68, 1, !dbg !425
  tail call void @llvm.dbg.value(metadata double %70, i64 0, metadata !370, metadata !159), !dbg !421
  br label %71

; <label>:71:                                     ; preds = %30, %54, %49, %26, %2, %19, %8
  %72 = phi double [ %12, %8 ], [ %23, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %30 ], [ %51, %49 ], [ %69, %54 ]
  %73 = phi double [ %14, %8 ], [ %25, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %30 ], [ %53, %49 ], [ %70, %54 ]
  %74 = insertvalue { double, double } undef, double %72, 0, !dbg !426
  %75 = insertvalue { double, double } %74, double %73, 1, !dbg !426
  ret { double, double } %75, !dbg !426
}

; Function Attrs: nounwind uwtable
define noalias %struct.LaneWaypoint* @LaneWaypoint1() local_unnamed_addr #4 !dbg !427 {
  %1 = tail call noalias i8* @malloc(i64 24) #7, !dbg !431
  %2 = bitcast i8* %1 to %struct.LaneWaypoint*, !dbg !432
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %2, i64 0, metadata !430, metadata !93), !dbg !433
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !434
  ret %struct.LaneWaypoint* %2, !dbg !435
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noalias %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo*, double) local_unnamed_addr #4 !dbg !436 {
  tail call void @llvm.dbg.value(metadata %struct.LaneInfo* %0, i64 0, metadata !440, metadata !93), !dbg !443
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !441, metadata !93), !dbg !444
  %3 = tail call noalias i8* @malloc(i64 24) #7, !dbg !445
  %4 = bitcast i8* %3 to %struct.LaneWaypoint*, !dbg !446
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %4, i64 0, metadata !442, metadata !93), !dbg !447
  %5 = bitcast i8* %3 to %struct.LaneInfo**, !dbg !448
  store %struct.LaneInfo* %0, %struct.LaneInfo** %5, align 8, !dbg !449, !tbaa !450
  %6 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !452
  %7 = bitcast i8* %6 to double*, !dbg !452
  store double %1, double* %7, align 8, !dbg !453, !tbaa !454
  %8 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !455
  %9 = bitcast i8* %8 to double*, !dbg !455
  store double 0.000000e+00, double* %9, align 8, !dbg !456, !tbaa !457
  ret %struct.LaneWaypoint* %4, !dbg !458
}

; Function Attrs: nounwind readonly uwtable
define i32 @RightBoundaryType(%struct.LaneWaypoint* nocapture readonly) local_unnamed_addr #2 !dbg !459 {
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %0, i64 0, metadata !465, metadata !93), !dbg !470
  %2 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 0, !dbg !471
  %3 = load %struct.LaneInfo*, %struct.LaneInfo** %2, align 8, !dbg !471, !tbaa !450
  %4 = icmp eq %struct.LaneInfo* %3, null, !dbg !473
  br i1 %4, label %33, label %5, !dbg !474

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %3, i64 0, i32 5, i32 1, i32 0, !dbg !475
  %7 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %6, align 8, !dbg !475, !tbaa !476
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %7, i64 0, metadata !466, metadata !93), !dbg !477
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %7, i64 0, metadata !466, metadata !93), !dbg !477
  %8 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %3, i64 0, i32 5, i32 1, i32 1, !dbg !478
  %9 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %8, align 8, !dbg !478, !tbaa !480
  %10 = icmp eq %struct.LaneBoundaryType* %7, %9, !dbg !481
  br i1 %10, label %33, label %11, !dbg !482

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 1
  %13 = load double, double* %12, align 8, !tbaa !454
  br label %14, !dbg !482

; <label>:14:                                     ; preds = %11, %29
  %15 = phi %struct.LaneBoundaryType* [ %7, %11 ], [ %30, %29 ]
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %15, i64 0, metadata !466, metadata !93), !dbg !477
  %16 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 0, !dbg !483
  %17 = load double, double* %16, align 8, !dbg !483, !tbaa !486
  %18 = fcmp ugt double %17, %13, !dbg !488
  br i1 %18, label %29, label %19, !dbg !489

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 2, !dbg !490
  %21 = load i32, i32* %20, align 8, !dbg !490, !tbaa !493
  %22 = icmp sgt i32 %21, 0, !dbg !494
  br i1 %22, label %23, label %33, !dbg !495

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 1, !dbg !496
  %25 = load i32*, i32** %24, align 8, !dbg !496, !tbaa !497
  %26 = icmp eq i32* %25, null, !dbg !498
  br i1 %26, label %33, label %27, !dbg !499

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %25, align 4, !dbg !500, !tbaa !502
  br label %33, !dbg !503

; <label>:29:                                     ; preds = %14
  %30 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 1, !dbg !504
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %30, i64 0, metadata !466, metadata !93), !dbg !477
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %30, i64 0, metadata !466, metadata !93), !dbg !477
  %31 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %8, align 8, !dbg !478, !tbaa !480
  %32 = icmp eq %struct.LaneBoundaryType* %30, %31, !dbg !481
  br i1 %32, label %33, label %14, !dbg !482, !llvm.loop !505

; <label>:33:                                     ; preds = %29, %5, %1, %19, %23, %27
  %34 = phi i32 [ 0, %19 ], [ 0, %23 ], [ %28, %27 ], [ 0, %1 ], [ 0, %5 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define noalias %struct.LaneWaypoint* @RightNeighborWaypoint(%struct.LaneWaypoint* nocapture readonly) local_unnamed_addr #4 !dbg !507 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.Vec2d, align 8
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %0, i64 0, metadata !511, metadata !93), !dbg !524
  %5 = tail call %struct.LaneWaypoint* @LaneWaypoint1(), !dbg !525
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %5, i64 0, metadata !512, metadata !93), !dbg !526
  %6 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 0, !dbg !527
  %7 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !dbg !527, !tbaa !450
  %8 = icmp eq %struct.LaneInfo* %7, null, !dbg !529
  br i1 %8, label %55, label %9, !dbg !530

; <label>:9:                                      ; preds = %1
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !513, metadata !93), !dbg !531
  %10 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 1, !dbg !532
  %11 = load double, double* %10, align 8, !dbg !532, !tbaa !454
  %12 = tail call { double, double } @GetSmoothPoint(%struct.LaneInfo* nonnull %7, double %11), !dbg !533
  %13 = extractvalue { double, double } %12, 0, !dbg !533
  tail call void @llvm.dbg.value(metadata double %13, i64 0, metadata !513, metadata !157), !dbg !531
  %14 = extractvalue { double, double } %12, 1, !dbg !533
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !513, metadata !159), !dbg !531
  %15 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %7, i64 0, i32 6, i32 0, !dbg !534
  %16 = load i32*, i32** %15, align 8, !dbg !534, !tbaa !535
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !514, metadata !93), !dbg !536
  call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !514, metadata !93), !dbg !536
  %17 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !dbg !537, !tbaa !450
  %18 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %17, i64 0, i32 6, i32 1, !dbg !538
  %19 = load i32*, i32** %18, align 8, !dbg !538, !tbaa !539
  %20 = icmp eq i32* %16, %19, !dbg !540
  br i1 %20, label %55, label %21, !dbg !541

; <label>:21:                                     ; preds = %9
  %22 = bitcast double* %2 to i8*
  %23 = bitcast double* %3 to i8*
  %24 = bitcast %struct.Vec2d* %4 to i8*
  %25 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %4, i64 0, i32 0
  %26 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %4, i64 0, i32 1
  br label %32, !dbg !541

; <label>:27:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32* %54, i64 0, metadata !514, metadata !93), !dbg !536
  %28 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !dbg !537, !tbaa !450
  %29 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %28, i64 0, i32 6, i32 1, !dbg !538
  %30 = load i32*, i32** %29, align 8, !dbg !538, !tbaa !539
  %31 = icmp eq i32* %54, %30, !dbg !540
  br i1 %31, label %55, label %32, !dbg !541, !llvm.loop !542

; <label>:32:                                     ; preds = %21, %27
  %33 = phi %struct.LaneWaypoint* [ undef, %21 ], [ %53, %27 ]
  %34 = phi i32* [ %16, %21 ], [ %54, %27 ]
  call void @llvm.dbg.value(metadata i32* %34, i64 0, metadata !514, metadata !93), !dbg !536
  %35 = load i32, i32* %34, align 4, !dbg !544, !tbaa !545
  %36 = call %struct.LaneInfo* @GetLaneById(i32 %35) #7, !dbg !546
  call void @llvm.dbg.value(metadata %struct.LaneInfo* %36, i64 0, metadata !518, metadata !93), !dbg !547
  %37 = icmp eq %struct.LaneInfo* %36, null, !dbg !548
  br i1 %37, label %55, label %38, !dbg !550

; <label>:38:                                     ; preds = %32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !551
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !521, metadata !93), !dbg !552
  store double 0.000000e+00, double* %2, align 8, !dbg !552, !tbaa !142
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #7, !dbg !553
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !522, metadata !93), !dbg !554
  store double 0.000000e+00, double* %3, align 8, !dbg !554, !tbaa !142
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #7, !dbg !555
  store double %13, double* %25, align 8, !dbg !556, !tbaa !557
  store double %14, double* %26, align 8, !dbg !556, !tbaa !558
  call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !521, metadata !93), !dbg !552
  call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !522, metadata !93), !dbg !554
  call void @llvm.dbg.value(metadata %struct.Vec2d* %4, i64 0, metadata !523, metadata !93), !dbg !559
  %39 = call i32 @GetProjection(%struct.LaneInfo* nonnull %36, %struct.Vec2d* nonnull %4, double* nonnull %2, double* nonnull %3), !dbg !560
  %40 = icmp eq i32 %39, 0, !dbg !560
  br i1 %40, label %51, label %41, !dbg !562

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %2, align 8, !dbg !563, !tbaa !142
  call void @llvm.dbg.value(metadata double %42, i64 0, metadata !521, metadata !93), !dbg !552
  %43 = fcmp olt double %42, -1.000000e+00, !dbg !565
  br i1 %43, label %51, label %44, !dbg !566

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %36, i64 0, i32 0, !dbg !567
  %46 = load double, double* %45, align 8, !dbg !567, !tbaa !389
  %47 = fadd double %46, 1.000000e+00, !dbg !568
  %48 = fcmp ogt double %42, %47, !dbg !569
  br i1 %48, label %51, label %49, !dbg !570

; <label>:49:                                     ; preds = %44
  %50 = call %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo* nonnull %36, double %42), !dbg !571
  br label %51, !dbg !573

; <label>:51:                                     ; preds = %49, %38, %44, %41
  %52 = phi i1 [ false, %49 ], [ true, %38 ], [ true, %44 ], [ true, %41 ]
  %53 = phi %struct.LaneWaypoint* [ %50, %49 ], [ %33, %38 ], [ %33, %44 ], [ %33, %41 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #7, !dbg !574
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #7, !dbg !574
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !574
  %54 = getelementptr inbounds i32, i32* %34, i64 1, !dbg !575
  call void @llvm.dbg.value(metadata i32* %54, i64 0, metadata !514, metadata !93), !dbg !536
  br i1 %52, label %27, label %55

; <label>:55:                                     ; preds = %27, %51, %32, %9, %1
  %56 = phi %struct.LaneWaypoint* [ %5, %1 ], [ %5, %9 ], [ %5, %27 ], [ %53, %51 ], [ %5, %32 ]
  ret %struct.LaneWaypoint* %56, !dbg !576
}

declare %struct.LaneInfo* @GetLaneById(i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!83, !84, !85}
!llvm.ident = !{!86}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12)
!1 = !DIFile(filename: "example/path.c", directory: "/home/parallels/llvm_proof")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Type", file: !1, line: 110, size: 32, elements: !4)
!4 = !{!5, !6, !7, !8, !9, !10, !11}
!5 = !DIEnumerator(name: "UNKNOWN", value: 0)
!6 = !DIEnumerator(name: "DOTTED_YELLOW", value: 1)
!7 = !DIEnumerator(name: "DOTTED_WHITE", value: 2)
!8 = !DIEnumerator(name: "SOLID_YELLOW", value: 3)
!9 = !DIEnumerator(name: "SOLID_WHITE", value: 4)
!10 = !DIEnumerator(name: "DOUBLE_YELLOW", value: 5)
!11 = !DIEnumerator(name: "CURB", value: 6)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneWaypoint", file: !1, line: 245, size: 192, elements: !15)
!15 = !{!16, !81, !82}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "lane_", scope: !14, file: !1, line: 246, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneInfo", file: !1, line: 140, size: 1280, elements: !20)
!20 = !{!21, !23, !35, !36, !50, !57, !74}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "total_length_", scope: !19, file: !1, line: 141, baseType: !22, size: 64)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "points_", scope: !19, file: !1, line: 142, baseType: !24, size: 192, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_Vec2d", file: !1, line: 68, size: 192, elements: !25)
!25 = !{!26, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !24, file: !1, line: 69, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec2d", file: !1, line: 45, size: 128, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "x_", scope: !28, file: !1, line: 46, baseType: !22, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "y_", scope: !28, file: !1, line: 47, baseType: !22, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !24, file: !1, line: 70, baseType: !27, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !24, file: !1, line: 71, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "unit_directions_", scope: !19, file: !1, line: 143, baseType: !24, size: 192, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "segments_", scope: !19, file: !1, line: 144, baseType: !37, size: 192, offset: 448)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_LineSegment2d", file: !1, line: 93, size: 192, elements: !38)
!38 = !{!39, !48, !49}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !37, file: !1, line: 94, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LineSegment2d", file: !1, line: 85, size: 512, elements: !42)
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "start_", scope: !41, file: !1, line: 86, baseType: !28, size: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !41, file: !1, line: 87, baseType: !28, size: 128, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "unit_direction_", scope: !41, file: !1, line: 88, baseType: !28, size: 128, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "heading_", scope: !41, file: !1, line: 89, baseType: !22, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "length_", scope: !41, file: !1, line: 90, baseType: !22, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !37, file: !1, line: 95, baseType: !40, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !37, file: !1, line: 96, baseType: !34, size: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "accumulated_s_", scope: !19, file: !1, line: 145, baseType: !51, size: 192, offset: 640)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_double", file: !1, line: 19, size: 192, elements: !52)
!52 = !{!53, !55, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !51, file: !1, line: 20, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !51, file: !1, line: 21, baseType: !54, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !51, file: !1, line: 22, baseType: !34, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "right_boundary", scope: !19, file: !1, line: 146, baseType: !58, size: 256, offset: 832)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneBoundary", file: !1, line: 132, size: 256, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !58, file: !1, line: 133, baseType: !22, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "boundary_type", scope: !58, file: !1, line: 134, baseType: !62, size: 192, offset: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_LaneBoundaryType", file: !1, line: 126, size: 192, elements: !63)
!63 = !{!64, !72, !73}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !62, file: !1, line: 127, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneBoundaryType", file: !1, line: 120, size: 192, elements: !67)
!67 = !{!68, !69, !71}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !66, file: !1, line: 121, baseType: !22, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !66, file: !1, line: 122, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "types_size", scope: !66, file: !1, line: 123, baseType: !34, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !62, file: !1, line: 128, baseType: !65, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !62, file: !1, line: 129, baseType: !34, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "right_neighbor_forward_lane_id", scope: !19, file: !1, line: 147, baseType: !75, size: 192, offset: 1088)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_int", file: !1, line: 10, size: 192, elements: !76)
!76 = !{!77, !79, !80}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !75, file: !1, line: 11, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !75, file: !1, line: 12, baseType: !78, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !75, file: !1, line: 13, baseType: !34, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !14, file: !1, line: 247, baseType: !22, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !14, file: !1, line: 248, baseType: !22, size: 64, offset: 128)
!83 = !{i32 2, !"Dwarf Version", i32 4}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 4}
!86 = !{!"clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)"}
!87 = distinct !DISubprogram(name: "min_double", scope: !1, file: !1, line: 25, type: !88, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{!22, !22, !22}
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "a", arg: 1, scope: !87, file: !1, line: 25, type: !22)
!92 = !DILocalVariable(name: "b", arg: 2, scope: !87, file: !1, line: 25, type: !22)
!93 = !DIExpression()
!94 = !DILocation(line: 25, column: 26, scope: !87)
!95 = !DILocation(line: 25, column: 36, scope: !87)
!96 = !DILocation(line: 26, column: 12, scope: !87)
!97 = !DILocation(line: 26, column: 10, scope: !87)
!98 = !DILocation(line: 26, column: 3, scope: !87)
!99 = distinct !DISubprogram(name: "size_double", scope: !1, file: !1, line: 29, type: !100, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !104)
!100 = !DISubroutineType(types: !101)
!101 = !{!34, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!104 = !{!105}
!105 = !DILocalVariable(name: "vec", arg: 1, scope: !99, file: !1, line: 29, type: !102)
!106 = !DILocation(line: 29, column: 45, scope: !99)
!107 = !DILocation(line: 30, column: 15, scope: !99)
!108 = !{!109, !110, i64 8}
!109 = !{!"Vector_double", !110, i64 0, !110, i64 8, !113, i64 16}
!110 = !{!"any pointer", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!"int", !111, i64 0}
!114 = !DILocation(line: 30, column: 26, scope: !99)
!115 = !{!109, !110, i64 0}
!116 = !DILocation(line: 30, column: 19, scope: !99)
!117 = !DILocation(line: 30, column: 10, scope: !99)
!118 = !DILocation(line: 30, column: 3, scope: !99)
!119 = distinct !DISubprogram(name: "lower_bound_double", scope: !1, file: !1, line: 33, type: !120, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!54, !54, !54, !22}
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(name: "start", arg: 1, scope: !119, file: !1, line: 33, type: !54)
!124 = !DILocalVariable(name: "end", arg: 2, scope: !119, file: !1, line: 33, type: !54)
!125 = !DILocalVariable(name: "value", arg: 3, scope: !119, file: !1, line: 33, type: !22)
!126 = !DILocalVariable(name: "p", scope: !119, file: !1, line: 35, type: !54)
!127 = !DILocation(line: 33, column: 36, scope: !119)
!128 = !DILocation(line: 33, column: 51, scope: !119)
!129 = !DILocation(line: 33, column: 63, scope: !119)
!130 = !DILocation(line: 34, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !119, file: !1, line: 34, column: 7)
!132 = !DILocation(line: 34, column: 18, scope: !131)
!133 = !DILocation(line: 34, column: 14, scope: !131)
!134 = !DILocation(line: 35, column: 11, scope: !119)
!135 = !DILocation(line: 36, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 36, column: 3)
!137 = distinct !DILexicalBlock(scope: !119, file: !1, line: 36, column: 3)
!138 = !DILocation(line: 36, column: 3, scope: !137)
!139 = !DILocation(line: 37, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 37, column: 9)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 36, column: 34)
!142 = !{!143, !143, i64 0}
!143 = !{!"double", !111, i64 0}
!144 = !DILocation(line: 37, column: 12, scope: !140)
!145 = !DILocation(line: 37, column: 9, scope: !141)
!146 = !DILocation(line: 36, column: 29, scope: !136)
!147 = distinct !{!147, !138, !148}
!148 = !DILocation(line: 38, column: 3, scope: !137)
!149 = !DILocation(line: 40, column: 1, scope: !119)
!150 = distinct !DISubprogram(name: "InnerProd", scope: !1, file: !1, line: 50, type: !151, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !154)
!151 = !DISubroutineType(types: !152)
!152 = !{!22, !153, !153}
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!154 = !{!155, !156}
!155 = !DILocalVariable(name: "point1", arg: 1, scope: !150, file: !1, line: 50, type: !153)
!156 = !DILocalVariable(name: "point2", arg: 2, scope: !150, file: !1, line: 50, type: !153)
!157 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!158 = !DILocation(line: 50, column: 37, scope: !150)
!159 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!160 = !DILocation(line: 50, column: 64, scope: !150)
!161 = !DILocation(line: 51, column: 20, scope: !150)
!162 = !DILocation(line: 51, column: 44, scope: !150)
!163 = !DILocation(line: 51, column: 32, scope: !150)
!164 = !DILocation(line: 51, column: 3, scope: !150)
!165 = distinct !DISubprogram(name: "Sub", scope: !1, file: !1, line: 54, type: !166, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{!28, !153, !153}
!168 = !{!169, !170, !171}
!169 = !DILocalVariable(name: "point1", arg: 1, scope: !165, file: !1, line: 54, type: !153)
!170 = !DILocalVariable(name: "point2", arg: 2, scope: !165, file: !1, line: 54, type: !153)
!171 = !DILocalVariable(name: "result", scope: !165, file: !1, line: 55, type: !28)
!172 = !DILocation(line: 54, column: 37, scope: !165)
!173 = !DILocation(line: 54, column: 64, scope: !165)
!174 = !DILocation(line: 55, column: 16, scope: !165)
!175 = !DILocation(line: 56, column: 25, scope: !165)
!176 = !DILocation(line: 57, column: 25, scope: !165)
!177 = !DILocation(line: 59, column: 1, scope: !165)
!178 = distinct !DISubprogram(name: "Mul", scope: !1, file: !1, line: 61, type: !179, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{!28, !153, !22}
!181 = !{!182, !183, !184}
!182 = !DILocalVariable(name: "point1", arg: 1, scope: !178, file: !1, line: 61, type: !153)
!183 = !DILocalVariable(name: "c", arg: 2, scope: !178, file: !1, line: 61, type: !22)
!184 = !DILocalVariable(name: "result", scope: !178, file: !1, line: 62, type: !28)
!185 = !DILocation(line: 61, column: 37, scope: !178)
!186 = !DILocation(line: 61, column: 52, scope: !178)
!187 = !DILocation(line: 62, column: 16, scope: !178)
!188 = !DILocation(line: 63, column: 25, scope: !178)
!189 = !DILocation(line: 64, column: 25, scope: !178)
!190 = !DILocation(line: 66, column: 1, scope: !178)
!191 = distinct !DISubprogram(name: "empty_Vec2d", scope: !1, file: !1, line: 74, type: !192, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !196)
!192 = !DISubroutineType(types: !193)
!193 = !{!34, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!196 = !{!197}
!197 = !DILocalVariable(name: "vec", arg: 1, scope: !191, file: !1, line: 74, type: !194)
!198 = !DILocation(line: 74, column: 44, scope: !191)
!199 = !DILocation(line: 75, column: 15, scope: !191)
!200 = !{!201, !110, i64 8}
!201 = !{!"Vector_Vec2d", !110, i64 0, !110, i64 8, !113, i64 16}
!202 = !DILocation(line: 75, column: 27, scope: !191)
!203 = !{!201, !110, i64 0}
!204 = !DILocation(line: 75, column: 19, scope: !191)
!205 = !DILocation(line: 75, column: 3, scope: !191)
!206 = distinct !DISubprogram(name: "size_Vec2d", scope: !1, file: !1, line: 78, type: !192, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !207)
!207 = !{!208}
!208 = !DILocalVariable(name: "vec", arg: 1, scope: !206, file: !1, line: 78, type: !194)
!209 = !DILocation(line: 78, column: 43, scope: !206)
!210 = !DILocation(line: 79, column: 15, scope: !206)
!211 = !DILocation(line: 79, column: 26, scope: !206)
!212 = !DILocation(line: 79, column: 19, scope: !206)
!213 = !DILocation(line: 79, column: 10, scope: !206)
!214 = !DILocation(line: 79, column: 3, scope: !206)
!215 = distinct !DISubprogram(name: "empty_LineSegment2d", scope: !1, file: !1, line: 99, type: !216, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !220)
!216 = !DISubroutineType(types: !217)
!217 = !{!34, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!220 = !{!221}
!221 = !DILocalVariable(name: "vec", arg: 1, scope: !215, file: !1, line: 99, type: !218)
!222 = !DILocation(line: 99, column: 60, scope: !215)
!223 = !DILocation(line: 100, column: 15, scope: !215)
!224 = !{!225, !110, i64 8}
!225 = !{!"Vector_LineSegment2d", !110, i64 0, !110, i64 8, !113, i64 16}
!226 = !DILocation(line: 100, column: 27, scope: !215)
!227 = !{!225, !110, i64 0}
!228 = !DILocation(line: 100, column: 19, scope: !215)
!229 = !DILocation(line: 100, column: 3, scope: !215)
!230 = distinct !DISubprogram(name: "size_LineSegment2d", scope: !1, file: !1, line: 103, type: !216, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !231)
!231 = !{!232}
!232 = !DILocalVariable(name: "vec", arg: 1, scope: !230, file: !1, line: 103, type: !218)
!233 = !DILocation(line: 103, column: 59, scope: !230)
!234 = !DILocation(line: 104, column: 15, scope: !230)
!235 = !DILocation(line: 104, column: 26, scope: !230)
!236 = !DILocation(line: 104, column: 19, scope: !230)
!237 = !DILocation(line: 104, column: 10, scope: !230)
!238 = !DILocation(line: 104, column: 3, scope: !230)
!239 = distinct !DISubprogram(name: "GetProjection", scope: !1, file: !1, line: 156, type: !240, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !244)
!240 = !DISubroutineType(types: !241)
!241 = !{!34, !242, !243, !54, !54}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!244 = !{!245, !246, !247, !248, !249, !250, !252, !253, !254, !256, !261, !263, !266, !269, !270}
!245 = !DILocalVariable(name: "lane", arg: 1, scope: !239, file: !1, line: 156, type: !242)
!246 = !DILocalVariable(name: "point", arg: 2, scope: !239, file: !1, line: 156, type: !243)
!247 = !DILocalVariable(name: "accumulate_s", arg: 3, scope: !239, file: !1, line: 156, type: !54)
!248 = !DILocalVariable(name: "lateral", arg: 4, scope: !239, file: !1, line: 156, type: !54)
!249 = !DILocalVariable(name: "min_distance", scope: !239, file: !1, line: 162, type: !22)
!250 = !DILocalVariable(name: "min_index", scope: !239, file: !1, line: 163, type: !251)
!251 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!252 = !DILocalVariable(name: "min_proj", scope: !239, file: !1, line: 164, type: !22)
!253 = !DILocalVariable(name: "num_segments", scope: !239, file: !1, line: 165, type: !34)
!254 = !DILocalVariable(name: "i", scope: !255, file: !1, line: 167, type: !34)
!255 = distinct !DILexicalBlock(scope: !239, file: !1, line: 167, column: 3)
!256 = !DILocalVariable(name: "segment", scope: !257, file: !1, line: 168, type: !259)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 167, column: 42)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 167, column: 3)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!261 = !DILocalVariable(name: "distance", scope: !257, file: !1, line: 169, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!263 = !DILocalVariable(name: "proj", scope: !264, file: !1, line: 171, type: !262)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 170, column: 34)
!265 = distinct !DILexicalBlock(scope: !257, file: !1, line: 170, column: 9)
!266 = !DILocalVariable(name: "next_segment", scope: !267, file: !1, line: 176, type: !259)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 175, column: 60)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 175, column: 11)
!269 = !DILocalVariable(name: "segment", scope: !239, file: !1, line: 187, type: !259)
!270 = !DILocalVariable(name: "prod", scope: !239, file: !1, line: 194, type: !262)
!271 = !DILocation(line: 156, column: 36, scope: !239)
!272 = !DILocation(line: 156, column: 62, scope: !239)
!273 = !DILocation(line: 156, column: 77, scope: !239)
!274 = !DILocation(line: 156, column: 99, scope: !239)
!275 = !DILocation(line: 157, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !239, file: !1, line: 157, column: 7)
!277 = !DILocation(line: 158, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !239, file: !1, line: 158, column: 7)
!279 = !DILocation(line: 157, column: 7, scope: !239)
!280 = !DILocation(line: 159, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !239, file: !1, line: 159, column: 7)
!282 = !DILocation(line: 160, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !239, file: !1, line: 160, column: 7)
!284 = !DILocation(line: 160, column: 43, scope: !283)
!285 = !DILocation(line: 160, column: 16, scope: !283)
!286 = !DILocation(line: 160, column: 7, scope: !239)
!287 = !DILocation(line: 162, column: 10, scope: !239)
!288 = !DILocation(line: 163, column: 12, scope: !239)
!289 = !DILocation(line: 164, column: 10, scope: !239)
!290 = !DILocation(line: 165, column: 22, scope: !239)
!291 = !DILocation(line: 165, column: 7, scope: !239)
!292 = !DILocation(line: 167, column: 12, scope: !255)
!293 = !DILocation(line: 167, column: 21, scope: !258)
!294 = !{!295, !110, i64 56}
!295 = !{!"LaneInfo", !143, i64 0, !201, i64 8, !201, i64 32, !225, i64 56, !109, i64 80, !296, i64 104, !298, i64 136}
!296 = !{!"LaneBoundary", !143, i64 0, !297, i64 8}
!297 = !{!"Vector_LaneBoundaryType", !110, i64 0, !110, i64 8, !113, i64 16}
!298 = !{!"Vector_int", !110, i64 0, !110, i64 8, !113, i64 16}
!299 = !DILocation(line: 167, column: 3, scope: !255)
!300 = !DILocation(line: 187, column: 63, scope: !239)
!301 = !DILocation(line: 187, column: 31, scope: !239)
!302 = !DILocation(line: 188, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !239, file: !1, line: 188, column: 7)
!304 = !DILocation(line: 188, column: 21, scope: !303)
!305 = !{!295, !110, i64 80}
!306 = !DILocation(line: 188, column: 7, scope: !239)
!307 = !DILocation(line: 168, column: 65, scope: !257)
!308 = !DILocation(line: 168, column: 33, scope: !257)
!309 = !DILocation(line: 169, column: 29, scope: !257)
!310 = !DILocation(line: 169, column: 18, scope: !257)
!311 = !DILocation(line: 170, column: 18, scope: !265)
!312 = !DILocation(line: 170, column: 9, scope: !257)
!313 = !DILocation(line: 171, column: 27, scope: !264)
!314 = !DILocation(line: 171, column: 20, scope: !264)
!315 = !DILocation(line: 172, column: 16, scope: !316)
!316 = distinct !DILexicalBlock(scope: !264, file: !1, line: 172, column: 11)
!317 = !DILocation(line: 172, column: 27, scope: !316)
!318 = !DILocation(line: 172, column: 22, scope: !316)
!319 = !DILocation(line: 175, column: 27, scope: !268)
!320 = !{!321, !143, i64 56}
!321 = !{!"LineSegment2d", !322, i64 0, !322, i64 16, !322, i64 32, !143, i64 48, !143, i64 56}
!322 = !{!"Vec2d", !143, i64 0, !143, i64 8}
!323 = !DILocation(line: 175, column: 16, scope: !268)
!324 = !DILocation(line: 175, column: 40, scope: !268)
!325 = !DILocation(line: 175, column: 44, scope: !268)
!326 = !DILocation(line: 175, column: 35, scope: !268)
!327 = !DILocation(line: 176, column: 68, scope: !267)
!328 = !DILocation(line: 176, column: 74, scope: !267)
!329 = !DILocation(line: 176, column: 78, scope: !267)
!330 = !DILocation(line: 176, column: 37, scope: !267)
!331 = !DILocation(line: 177, column: 23, scope: !332)
!332 = distinct !DILexicalBlock(scope: !267, file: !1, line: 177, column: 13)
!333 = !DILocation(line: 177, column: 72, scope: !332)
!334 = !DILocation(line: 177, column: 13, scope: !332)
!335 = !DILocation(line: 177, column: 89, scope: !332)
!336 = !DILocation(line: 184, column: 5, scope: !265)
!337 = !DILocation(line: 167, column: 37, scope: !258)
!338 = distinct !{!338, !299, !339}
!339 = !DILocation(line: 185, column: 3, scope: !255)
!340 = !DILocation(line: 192, column: 83, scope: !341)
!341 = distinct !DILexicalBlock(scope: !303, file: !1, line: 190, column: 10)
!342 = !DILocation(line: 192, column: 53, scope: !341)
!343 = !DILocation(line: 194, column: 23, scope: !239)
!344 = !DILocation(line: 194, column: 16, scope: !239)
!345 = !DILocation(line: 195, column: 18, scope: !346)
!346 = distinct !DILexicalBlock(scope: !239, file: !1, line: 195, column: 7)
!347 = !DILocation(line: 195, column: 35, scope: !346)
!348 = !DILocation(line: 195, column: 23, scope: !346)
!349 = !DILocation(line: 196, column: 22, scope: !346)
!350 = !DILocation(line: 196, column: 38, scope: !346)
!351 = !DILocation(line: 196, column: 61, scope: !346)
!352 = !DILocation(line: 196, column: 50, scope: !346)
!353 = !DILocation(line: 195, column: 7, scope: !239)
!354 = !DILocation(line: 199, column: 22, scope: !355)
!355 = distinct !DILexicalBlock(scope: !346, file: !1, line: 198, column: 10)
!356 = !DILocation(line: 199, column: 45, scope: !355)
!357 = !DILocation(line: 199, column: 17, scope: !355)
!358 = !DILocation(line: 203, column: 1, scope: !239)
!359 = distinct !DISubprogram(name: "GetSmoothPoint", scope: !1, file: !1, line: 205, type: !360, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{!28, !17, !22}
!362 = !{!363, !364, !365, !366, !368, !369, !370}
!363 = !DILocalVariable(name: "lane", arg: 1, scope: !359, file: !1, line: 205, type: !17)
!364 = !DILocalVariable(name: "s", arg: 2, scope: !359, file: !1, line: 205, type: !22)
!365 = !DILocalVariable(name: "point", scope: !359, file: !1, line: 206, type: !28)
!366 = !DILocalVariable(name: "low_itr", scope: !359, file: !1, line: 227, type: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!368 = !DILocalVariable(name: "index", scope: !359, file: !1, line: 231, type: !251)
!369 = !DILocalVariable(name: "delta_s", scope: !359, file: !1, line: 232, type: !22)
!370 = !DILocalVariable(name: "smooth_point", scope: !359, file: !1, line: 237, type: !28)
!371 = !DILocation(line: 205, column: 52, scope: !359)
!372 = !DILocation(line: 205, column: 65, scope: !359)
!373 = !DILocation(line: 206, column: 16, scope: !359)
!374 = !DILocation(line: 208, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !359, file: !1, line: 208, column: 7)
!376 = !DILocation(line: 208, column: 7, scope: !375)
!377 = !DILocation(line: 208, column: 34, scope: !375)
!378 = !DILocation(line: 208, column: 7, scope: !359)
!379 = !DILocation(line: 211, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !359, file: !1, line: 211, column: 7)
!381 = !DILocation(line: 211, column: 7, scope: !359)
!382 = !DILocation(line: 212, column: 27, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !1, line: 211, column: 17)
!384 = !{!295, !110, i64 8}
!385 = !DILocation(line: 212, column: 12, scope: !383)
!386 = !DILocation(line: 212, column: 5, scope: !383)
!387 = !DILocation(line: 215, column: 18, scope: !388)
!388 = distinct !DILexicalBlock(scope: !359, file: !1, line: 215, column: 7)
!389 = !{!295, !143, i64 0}
!390 = !DILocation(line: 215, column: 9, scope: !388)
!391 = !DILocation(line: 215, column: 7, scope: !359)
!392 = !DILocation(line: 216, column: 28, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !1, line: 215, column: 33)
!394 = !{!295, !110, i64 16}
!395 = !DILocation(line: 216, column: 12, scope: !393)
!396 = !DILocation(line: 216, column: 5, scope: !393)
!397 = !DILocation(line: 218, column: 56, scope: !398)
!398 = distinct !DILexicalBlock(scope: !359, file: !1, line: 218, column: 7)
!399 = !DILocation(line: 218, column: 37, scope: !398)
!400 = !DILocation(line: 218, column: 34, scope: !398)
!401 = !DILocation(line: 218, column: 7, scope: !359)
!402 = !DILocation(line: 227, column: 67, scope: !359)
!403 = !DILocation(line: 227, column: 95, scope: !359)
!404 = !{!295, !110, i64 88}
!405 = !DILocation(line: 227, column: 27, scope: !359)
!406 = !DILocation(line: 227, column: 17, scope: !359)
!407 = !DILocation(line: 228, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !359, file: !1, line: 228, column: 7)
!409 = !DILocation(line: 228, column: 7, scope: !359)
!410 = !DILocation(line: 231, column: 51, scope: !359)
!411 = !DILocation(line: 231, column: 28, scope: !359)
!412 = !DILocation(line: 232, column: 20, scope: !359)
!413 = !DILocation(line: 232, column: 29, scope: !359)
!414 = !DILocation(line: 232, column: 10, scope: !359)
!415 = !DILocation(line: 233, column: 15, scope: !416)
!416 = distinct !DILexicalBlock(scope: !359, file: !1, line: 233, column: 7)
!417 = !DILocation(line: 233, column: 7, scope: !359)
!418 = !DILocation(line: 234, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 233, column: 31)
!420 = !DILocation(line: 234, column: 5, scope: !419)
!421 = !DILocation(line: 237, column: 16, scope: !359)
!422 = !DILocation(line: 237, column: 97, scope: !359)
!423 = !{!295, !110, i64 32}
!424 = !DILocation(line: 237, column: 68, scope: !359)
!425 = !DILocation(line: 237, column: 31, scope: !359)
!426 = !DILocation(line: 240, column: 1, scope: !359)
!427 = distinct !DISubprogram(name: "LaneWaypoint1", scope: !1, file: !1, line: 251, type: !428, isLocal: false, isDefinition: true, scopeLine: 251, isOptimized: true, unit: !0, variables: !429)
!428 = !DISubroutineType(types: !12)
!429 = !{!430}
!430 = !DILocalVariable(name: "newlane", scope: !427, file: !1, line: 252, type: !13)
!431 = !DILocation(line: 252, column: 56, scope: !427)
!432 = !DILocation(line: 252, column: 34, scope: !427)
!433 = !DILocation(line: 252, column: 24, scope: !427)
!434 = !DILocation(line: 254, column: 14, scope: !427)
!435 = !DILocation(line: 256, column: 3, scope: !427)
!436 = distinct !DISubprogram(name: "LaneWaypoint2", scope: !1, file: !1, line: 259, type: !437, isLocal: false, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!13, !17, !262}
!439 = !{!440, !441, !442}
!440 = !DILocalVariable(name: "lane", arg: 1, scope: !436, file: !1, line: 259, type: !17)
!441 = !DILocalVariable(name: "s", arg: 2, scope: !436, file: !1, line: 259, type: !262)
!442 = !DILocalVariable(name: "newlane", scope: !436, file: !1, line: 260, type: !13)
!443 = !DILocation(line: 259, column: 59, scope: !436)
!444 = !DILocation(line: 259, column: 78, scope: !436)
!445 = !DILocation(line: 260, column: 56, scope: !436)
!446 = !DILocation(line: 260, column: 34, scope: !436)
!447 = !DILocation(line: 260, column: 24, scope: !436)
!448 = !DILocation(line: 261, column: 12, scope: !436)
!449 = !DILocation(line: 261, column: 18, scope: !436)
!450 = !{!451, !110, i64 0}
!451 = !{!"LaneWaypoint", !110, i64 0, !143, i64 8, !143, i64 16}
!452 = !DILocation(line: 262, column: 12, scope: !436)
!453 = !DILocation(line: 262, column: 14, scope: !436)
!454 = !{!451, !143, i64 8}
!455 = !DILocation(line: 263, column: 12, scope: !436)
!456 = !DILocation(line: 263, column: 14, scope: !436)
!457 = !{!451, !143, i64 16}
!458 = !DILocation(line: 264, column: 3, scope: !436)
!459 = distinct !DISubprogram(name: "RightBoundaryType", scope: !1, file: !1, line: 267, type: !460, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !464)
!460 = !DISubroutineType(types: !461)
!461 = !{!3, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!464 = !{!465, !466}
!465 = !DILocalVariable(name: "waypoint", arg: 1, scope: !459, file: !1, line: 267, type: !462)
!466 = !DILocalVariable(name: "type", scope: !467, file: !1, line: 271, type: !468)
!467 = distinct !DILexicalBlock(scope: !459, file: !1, line: 271, column: 3)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!470 = !DILocation(line: 267, column: 56, scope: !459)
!471 = !DILocation(line: 268, column: 18, scope: !472)
!472 = distinct !DILexicalBlock(scope: !459, file: !1, line: 268, column: 7)
!473 = !DILocation(line: 268, column: 8, scope: !472)
!474 = !DILocation(line: 268, column: 7, scope: !459)
!475 = !DILocation(line: 271, column: 92, scope: !467)
!476 = !{!295, !110, i64 112}
!477 = !DILocation(line: 271, column: 39, scope: !467)
!478 = !DILocation(line: 272, column: 62, scope: !479)
!479 = distinct !DILexicalBlock(scope: !467, file: !1, line: 271, column: 3)
!480 = !{!295, !110, i64 120}
!481 = !DILocation(line: 272, column: 13, scope: !479)
!482 = !DILocation(line: 271, column: 3, scope: !467)
!483 = !DILocation(line: 273, column: 15, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 273, column: 9)
!485 = distinct !DILexicalBlock(scope: !479, file: !1, line: 272, column: 75)
!486 = !{!487, !143, i64 0}
!487 = !{!"LaneBoundaryType", !143, i64 0, !110, i64 8, !113, i64 16}
!488 = !DILocation(line: 273, column: 17, scope: !484)
!489 = !DILocation(line: 273, column: 9, scope: !485)
!490 = !DILocation(line: 274, column: 17, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !1, line: 274, column: 11)
!492 = distinct !DILexicalBlock(scope: !484, file: !1, line: 273, column: 33)
!493 = !{!487, !113, i64 16}
!494 = !DILocation(line: 274, column: 28, scope: !491)
!495 = !DILocation(line: 274, column: 32, scope: !491)
!496 = !DILocation(line: 274, column: 41, scope: !491)
!497 = !{!487, !110, i64 8}
!498 = !DILocation(line: 274, column: 35, scope: !491)
!499 = !DILocation(line: 274, column: 11, scope: !492)
!500 = !DILocation(line: 275, column: 16, scope: !501)
!501 = distinct !DILexicalBlock(scope: !491, file: !1, line: 274, column: 48)
!502 = !{!111, !111, i64 0}
!503 = !DILocation(line: 275, column: 9, scope: !501)
!504 = !DILocation(line: 272, column: 67, scope: !479)
!505 = distinct !{!505, !482, !506}
!506 = !DILocation(line: 280, column: 3, scope: !467)
!507 = distinct !DISubprogram(name: "RightNeighborWaypoint", scope: !1, file: !1, line: 284, type: !508, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!13, !462}
!510 = !{!511, !512, !513, !514, !518, !521, !522, !523}
!511 = !DILocalVariable(name: "waypoint", arg: 1, scope: !507, file: !1, line: 284, type: !462)
!512 = !DILocalVariable(name: "neighbor", scope: !507, file: !1, line: 285, type: !13)
!513 = !DILocalVariable(name: "point", scope: !507, file: !1, line: 289, type: !28)
!514 = !DILocalVariable(name: "lane_id", scope: !515, file: !1, line: 290, type: !516)
!515 = distinct !DILexicalBlock(scope: !507, file: !1, line: 290, column: 3)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!518 = !DILocalVariable(name: "lane", scope: !519, file: !1, line: 292, type: !242)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 291, column: 83)
!520 = distinct !DILexicalBlock(scope: !515, file: !1, line: 290, column: 3)
!521 = !DILocalVariable(name: "s", scope: !519, file: !1, line: 296, type: !22)
!522 = !DILocalVariable(name: "l", scope: !519, file: !1, line: 297, type: !22)
!523 = !DILocalVariable(name: "point2", scope: !519, file: !1, line: 298, type: !28)
!524 = !DILocation(line: 284, column: 71, scope: !507)
!525 = !DILocation(line: 285, column: 35, scope: !507)
!526 = !DILocation(line: 285, column: 24, scope: !507)
!527 = !DILocation(line: 286, column: 18, scope: !528)
!528 = distinct !DILexicalBlock(scope: !507, file: !1, line: 286, column: 7)
!529 = !DILocation(line: 286, column: 8, scope: !528)
!530 = !DILocation(line: 286, column: 7, scope: !507)
!531 = !DILocation(line: 289, column: 16, scope: !507)
!532 = !DILocation(line: 289, column: 66, scope: !507)
!533 = !DILocation(line: 289, column: 24, scope: !507)
!534 = !DILocation(line: 290, column: 77, scope: !515)
!535 = !{!295, !110, i64 136}
!536 = !DILocation(line: 290, column: 19, scope: !515)
!537 = !DILocation(line: 291, column: 29, scope: !520)
!538 = !DILocation(line: 291, column: 67, scope: !520)
!539 = !{!295, !110, i64 144}
!540 = !DILocation(line: 291, column: 16, scope: !520)
!541 = !DILocation(line: 290, column: 3, scope: !515)
!542 = distinct !{!542, !541, !543}
!543 = !DILocation(line: 307, column: 3, scope: !515)
!544 = !DILocation(line: 292, column: 41, scope: !519)
!545 = !{!113, !113, i64 0}
!546 = !DILocation(line: 292, column: 29, scope: !519)
!547 = !DILocation(line: 292, column: 22, scope: !519)
!548 = !DILocation(line: 293, column: 10, scope: !549)
!549 = distinct !DILexicalBlock(scope: !519, file: !1, line: 293, column: 9)
!550 = !DILocation(line: 293, column: 9, scope: !519)
!551 = !DILocation(line: 296, column: 5, scope: !519)
!552 = !DILocation(line: 296, column: 12, scope: !519)
!553 = !DILocation(line: 297, column: 5, scope: !519)
!554 = !DILocation(line: 297, column: 12, scope: !519)
!555 = !DILocation(line: 298, column: 5, scope: !519)
!556 = !DILocation(line: 298, column: 27, scope: !519)
!557 = !{!322, !143, i64 0}
!558 = !{!322, !143, i64 8}
!559 = !DILocation(line: 298, column: 18, scope: !519)
!560 = !DILocation(line: 299, column: 10, scope: !561)
!561 = distinct !DILexicalBlock(scope: !519, file: !1, line: 299, column: 9)
!562 = !DILocation(line: 299, column: 9, scope: !519)
!563 = !DILocation(line: 302, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !519, file: !1, line: 302, column: 9)
!565 = !DILocation(line: 302, column: 11, scope: !564)
!566 = !DILocation(line: 302, column: 30, scope: !564)
!567 = !DILocation(line: 302, column: 43, scope: !564)
!568 = !DILocation(line: 302, column: 57, scope: !564)
!569 = !DILocation(line: 302, column: 35, scope: !564)
!570 = !DILocation(line: 302, column: 9, scope: !519)
!571 = !DILocation(line: 305, column: 14, scope: !572)
!572 = distinct !DILexicalBlock(scope: !564, file: !1, line: 304, column: 12)
!573 = !DILocation(line: 305, column: 7, scope: !572)
!574 = !DILocation(line: 307, column: 3, scope: !520)
!575 = !DILocation(line: 291, column: 72, scope: !520)
!576 = !DILocation(line: 309, column: 1, scope: !507)
