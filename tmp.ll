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
  tail call void @llvm.dbg.value(metadata %struct.Vector_double* %0, i64 0, metadata !106, metadata !93), !dbg !107
  %2 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %0, i64 0, i32 1, !dbg !108
  %3 = bitcast double** %2 to i64*, !dbg !108
  %4 = load i64, i64* %3, align 8, !dbg !108, !tbaa !109
  %5 = bitcast %struct.Vector_double* %0 to i64*, !dbg !115
  %6 = load i64, i64* %5, align 8, !dbg !115, !tbaa !116
  %7 = sub i64 %4, %6, !dbg !117
  %8 = lshr exact i64 %7, 3, !dbg !117
  %9 = trunc i64 %8 to i32, !dbg !118
  ret i32 %9, !dbg !119
}

; Function Attrs: nounwind readonly uwtable
define double* @lower_bound_double(double* readonly, double* readnone, double) local_unnamed_addr #2 !dbg !120 {
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !124, metadata !93), !dbg !128
  tail call void @llvm.dbg.value(metadata double* %1, i64 0, metadata !125, metadata !93), !dbg !129
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !126, metadata !93), !dbg !130
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !127, metadata !93), !dbg !131
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !127, metadata !93), !dbg !131
  %4 = icmp eq double* %0, %1, !dbg !132
  br i1 %4, label %13, label %5, !dbg !135

; <label>:5:                                      ; preds = %3
  br label %6, !dbg !136

; <label>:6:                                      ; preds = %5, %10
  %7 = phi double* [ %11, %10 ], [ %0, %5 ]
  tail call void @llvm.dbg.value(metadata double* %7, i64 0, metadata !127, metadata !93), !dbg !131
  %8 = load double, double* %7, align 8, !dbg !136, !tbaa !139
  %9 = fcmp ult double %8, %2, !dbg !141
  br i1 %9, label %10, label %13, !dbg !142

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds double, double* %7, i64 1, !dbg !143
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !127, metadata !93), !dbg !131
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !127, metadata !93), !dbg !131
  %12 = icmp eq double* %11, %1, !dbg !132
  br i1 %12, label %13, label %6, !dbg !135, !llvm.loop !144

; <label>:13:                                     ; preds = %10, %6, %3
  %14 = phi double* [ %0, %3 ], [ %7, %6 ], [ %11, %10 ]
  ret double* %14, !dbg !146
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone uwtable
define double @InnerProd(double, double, double, double) local_unnamed_addr #0 !dbg !147 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !152, metadata !154), !dbg !155
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !152, metadata !156), !dbg !155
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !153, metadata !154), !dbg !157
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !153, metadata !156), !dbg !157
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !152, metadata !93), !dbg !155
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !153, metadata !93), !dbg !157
  %5 = fmul double %0, %2, !dbg !158
  %6 = fmul double %1, %3, !dbg !159
  %7 = fadd double %5, %6, !dbg !160
  ret double %7, !dbg !161
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @Sub(double, double, double, double) local_unnamed_addr #0 !dbg !162 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !166, metadata !154), !dbg !169
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !166, metadata !156), !dbg !169
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !167, metadata !154), !dbg !170
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !167, metadata !156), !dbg !170
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !166, metadata !93), !dbg !169
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !167, metadata !93), !dbg !170
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !168, metadata !93), !dbg !171
  %5 = fsub double %0, %2, !dbg !172
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !168, metadata !154), !dbg !171
  %6 = fsub double %1, %3, !dbg !173
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !168, metadata !156), !dbg !171
  %7 = insertvalue { double, double } undef, double %5, 0, !dbg !174
  %8 = insertvalue { double, double } %7, double %6, 1, !dbg !174
  ret { double, double } %8, !dbg !174
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @Mul(double, double, double) local_unnamed_addr #0 !dbg !175 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !179, metadata !154), !dbg !182
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !179, metadata !156), !dbg !182
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !179, metadata !93), !dbg !182
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !180, metadata !93), !dbg !183
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !181, metadata !93), !dbg !184
  %4 = fmul double %0, %2, !dbg !185
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !181, metadata !154), !dbg !184
  %5 = fmul double %1, %2, !dbg !186
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !181, metadata !156), !dbg !184
  %6 = insertvalue { double, double } undef, double %4, 0, !dbg !187
  %7 = insertvalue { double, double } %6, double %5, 1, !dbg !187
  ret { double, double } %7, !dbg !187
}

; Function Attrs: nounwind readonly uwtable
define i32 @empty_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #2 !dbg !188 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_Vec2d* %0, i64 0, metadata !194, metadata !93), !dbg !195
  %2 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1, !dbg !196
  %3 = load %struct.Vec2d*, %struct.Vec2d** %2, align 8, !dbg !196, !tbaa !197
  %4 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 0, !dbg !199
  %5 = load %struct.Vec2d*, %struct.Vec2d** %4, align 8, !dbg !199, !tbaa !200
  %6 = icmp eq %struct.Vec2d* %3, %5, !dbg !201
  %7 = zext i1 %6 to i32, !dbg !201
  ret i32 %7, !dbg !202
}

; Function Attrs: nounwind readonly uwtable
define i32 @size_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #2 !dbg !203 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_Vec2d* %0, i64 0, metadata !207, metadata !93), !dbg !208
  %2 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1, !dbg !209
  %3 = bitcast %struct.Vec2d** %2 to i64*, !dbg !209
  %4 = load i64, i64* %3, align 8, !dbg !209, !tbaa !197
  %5 = bitcast %struct.Vector_Vec2d* %0 to i64*, !dbg !210
  %6 = load i64, i64* %5, align 8, !dbg !210, !tbaa !200
  %7 = sub i64 %4, %6, !dbg !211
  %8 = lshr exact i64 %7, 4, !dbg !211
  %9 = trunc i64 %8 to i32, !dbg !212
  ret i32 %9, !dbg !213
}

; Function Attrs: nounwind readonly uwtable
define i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #2 !dbg !214 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_LineSegment2d* %0, i64 0, metadata !220, metadata !93), !dbg !221
  %2 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1, !dbg !222
  %3 = load %struct.LineSegment2d*, %struct.LineSegment2d** %2, align 8, !dbg !222, !tbaa !223
  %4 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 0, !dbg !225
  %5 = load %struct.LineSegment2d*, %struct.LineSegment2d** %4, align 8, !dbg !225, !tbaa !226
  %6 = icmp eq %struct.LineSegment2d* %3, %5, !dbg !227
  %7 = zext i1 %6 to i32, !dbg !227
  ret i32 %7, !dbg !228
}

; Function Attrs: nounwind readonly uwtable
define i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #2 !dbg !229 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_LineSegment2d* %0, i64 0, metadata !233, metadata !93), !dbg !234
  %2 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1, !dbg !235
  %3 = bitcast %struct.LineSegment2d** %2 to i64*, !dbg !235
  %4 = load i64, i64* %3, align 8, !dbg !235, !tbaa !223
  %5 = bitcast %struct.Vector_LineSegment2d* %0 to i64*, !dbg !236
  %6 = load i64, i64* %5, align 8, !dbg !236, !tbaa !226
  %7 = sub i64 %4, %6, !dbg !237
  %8 = lshr exact i64 %7, 6, !dbg !237
  %9 = trunc i64 %8 to i32, !dbg !238
  ret i32 %9, !dbg !239
}

; Function Attrs: nounwind uwtable
define i32 @GetProjection(%struct.LaneInfo* readonly, %struct.Vec2d*, double*, double*) local_unnamed_addr #4 !dbg !240 {
  tail call void @llvm.dbg.value(metadata %struct.LaneInfo* %0, i64 0, metadata !246, metadata !93), !dbg !271
  tail call void @llvm.dbg.value(metadata %struct.Vec2d* %1, i64 0, metadata !247, metadata !93), !dbg !272
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !248, metadata !93), !dbg !273
  tail call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !249, metadata !93), !dbg !274
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
  tail call void @llvm.dbg.value(metadata double 0x47D2CED32A16A1B1, i64 0, metadata !250, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !252, metadata !93), !dbg !289
  %17 = tail call i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* %13), !dbg !290
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !253, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !254, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0x47D2CED32A16A1B1, i64 0, metadata !250, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !252, metadata !93), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !254, metadata !93), !dbg !292
  %18 = icmp eq i32 %17, 0, !dbg !293
  %19 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %13, i64 0, i32 0
  %20 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !294
  br i1 %18, label %26, label %21, !dbg !299

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 1
  %24 = zext i32 %17 to i64, !dbg !299
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
  %38 = load double, double* %37, align 8, !tbaa !139
  br i1 %34, label %89, label %93, !dbg !306

; <label>:39:                                     ; preds = %82, %21
  %40 = phi i64 [ 0, %21 ], [ %86, %82 ]
  %41 = phi %struct.LineSegment2d* [ %20, %21 ], [ %87, %82 ]
  %42 = phi double [ 0x47D2CED32A16A1B1, %21 ], [ %85, %82 ]
  %43 = phi i32 [ 0, %21 ], [ %84, %82 ]
  %44 = phi double [ 0.000000e+00, %21 ], [ %83, %82 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !254, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double %44, i64 0, metadata !252, metadata !93), !dbg !289
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !251, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double %42, i64 0, metadata !250, metadata !93), !dbg !287
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
  %58 = icmp ult i64 %57, %24, !dbg !325
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
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !250, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !251, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double %49, i64 0, metadata !252, metadata !93), !dbg !289
  %81 = trunc i64 %40 to i32, !dbg !336
  br label %82, !dbg !336

; <label>:82:                                     ; preds = %80, %60, %48, %39
  %83 = phi double [ %44, %39 ], [ %49, %80 ], [ %44, %60 ], [ %44, %48 ]
  %84 = phi i32 [ %43, %39 ], [ %81, %80 ], [ %43, %60 ], [ %43, %48 ]
  %85 = phi double [ %42, %39 ], [ %46, %80 ], [ %42, %60 ], [ %42, %48 ]
  tail call void @llvm.dbg.value(metadata double %85, i64 0, metadata !250, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !251, metadata !93), !dbg !288
  tail call void @llvm.dbg.value(metadata double %83, i64 0, metadata !252, metadata !93), !dbg !289
  %86 = add nuw nsw i64 %40, 1, !dbg !337
  tail call void @llvm.dbg.value(metadata double %85, i64 0, metadata !250, metadata !93), !dbg !287
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !251, metadata !93), !dbg !288
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
  store double %95, double* %2, align 8, !tbaa !139
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
  store double %111, double* %3, align 8, !tbaa !139
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
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !365, metadata !154), !dbg !373
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !365, metadata !156), !dbg !373
  %3 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 1, !dbg !374
  %4 = tail call i32 @size_Vec2d(%struct.Vector_Vec2d* %3), !dbg !376
  %5 = icmp ult i32 %4, 2, !dbg !377
  br i1 %5, label %73, label %6, !dbg !378

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
  br label %73, !dbg !386

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
  br label %73, !dbg !396

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, !dbg !397
  %28 = tail call i32 @size_double(%struct.Vector_double* %27), !dbg !399
  %29 = icmp eq i32 %4, %28, !dbg !400
  br i1 %29, label %30, label %73, !dbg !401

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %27, i64 0, i32 0, !dbg !402
  %32 = load double*, double** %31, align 8, !dbg !402, !tbaa !305
  %33 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 1, !dbg !403
  %34 = load double*, double** %33, align 8, !dbg !403, !tbaa !404
  %35 = tail call double* @lower_bound_double(double* %32, double* %34, double %1), !dbg !405
  tail call void @llvm.dbg.value(metadata double* %35, i64 0, metadata !366, metadata !93), !dbg !406
  %36 = icmp eq double* %35, %34, !dbg !407
  br i1 %36, label %73, label %37, !dbg !409

; <label>:37:                                     ; preds = %30
  %38 = bitcast %struct.Vector_double* %27 to i64*, !dbg !410
  %39 = load i64, i64* %38, align 8, !dbg !410, !tbaa !305
  %40 = ptrtoint double* %35 to i64, !dbg !411
  %41 = sub i64 %40, %39, !dbg !411
  %42 = lshr exact i64 %41, 3, !dbg !411
  %43 = load double, double* %35, align 8, !dbg !412, !tbaa !139
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
  br label %73, !dbg !420

; <label>:54:                                     ; preds = %37
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !370, metadata !93), !dbg !421
  %55 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 2, i32 0, !dbg !422
  %56 = load %struct.Vec2d*, %struct.Vec2d** %55, align 8, !dbg !422, !tbaa !423
  %57 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %56, i64 %48, !dbg !424
  %58 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %57, i64 -1, !dbg !425
  %59 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %58, i64 0, i32 0, !dbg !426
  %60 = load double, double* %59, align 8, !dbg !426
  %61 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %58, i64 0, i32 1, !dbg !426
  %62 = load double, double* %61, align 8, !dbg !426
  %63 = tail call { double, double } @Mul(double %60, double %62, double %44), !dbg !426
  %64 = extractvalue { double, double } %63, 0, !dbg !426
  %65 = extractvalue { double, double } %63, 1, !dbg !426
  %66 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %47, i64 %48, i32 0, !dbg !427
  %67 = load double, double* %66, align 8, !dbg !427
  %68 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %47, i64 %48, i32 1, !dbg !427
  %69 = load double, double* %68, align 8, !dbg !427
  %70 = tail call { double, double } @Sub(double %67, double %69, double %64, double %65), !dbg !427
  %71 = extractvalue { double, double } %70, 0, !dbg !427
  tail call void @llvm.dbg.value(metadata double %71, i64 0, metadata !370, metadata !154), !dbg !421
  %72 = extractvalue { double, double } %70, 1, !dbg !427
  tail call void @llvm.dbg.value(metadata double %72, i64 0, metadata !370, metadata !156), !dbg !421
  br label %73

; <label>:73:                                     ; preds = %30, %54, %49, %26, %2, %19, %8
  %74 = phi double [ %12, %8 ], [ %23, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %30 ], [ %51, %49 ], [ %71, %54 ]
  %75 = phi double [ %14, %8 ], [ %25, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %30 ], [ %53, %49 ], [ %72, %54 ]
  %76 = insertvalue { double, double } undef, double %74, 0, !dbg !428
  %77 = insertvalue { double, double } %76, double %75, 1, !dbg !428
  ret { double, double } %77, !dbg !428
}

; Function Attrs: nounwind uwtable
define noalias %struct.LaneWaypoint* @LaneWaypoint1() local_unnamed_addr #4 !dbg !429 {
  %1 = tail call noalias i8* @malloc(i64 24) #7, !dbg !433
  %2 = bitcast i8* %1 to %struct.LaneWaypoint*, !dbg !434
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %2, i64 0, metadata !432, metadata !93), !dbg !435
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !436
  ret %struct.LaneWaypoint* %2, !dbg !437
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noalias %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo*, double) local_unnamed_addr #4 !dbg !438 {
  tail call void @llvm.dbg.value(metadata %struct.LaneInfo* %0, i64 0, metadata !442, metadata !93), !dbg !445
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !443, metadata !93), !dbg !446
  %3 = tail call noalias i8* @malloc(i64 24) #7, !dbg !447
  %4 = bitcast i8* %3 to %struct.LaneWaypoint*, !dbg !448
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %4, i64 0, metadata !444, metadata !93), !dbg !449
  %5 = bitcast i8* %3 to %struct.LaneInfo**, !dbg !450
  store %struct.LaneInfo* %0, %struct.LaneInfo** %5, align 8, !dbg !451, !tbaa !452
  %6 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !454
  %7 = bitcast i8* %6 to double*, !dbg !454
  store double %1, double* %7, align 8, !dbg !455, !tbaa !456
  %8 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !457
  %9 = bitcast i8* %8 to double*, !dbg !457
  store double 0.000000e+00, double* %9, align 8, !dbg !458, !tbaa !459
  ret %struct.LaneWaypoint* %4, !dbg !460
}

; Function Attrs: nounwind readonly uwtable
define i32 @RightBoundaryType(%struct.LaneWaypoint* nocapture readonly) local_unnamed_addr #2 !dbg !461 {
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %0, i64 0, metadata !467, metadata !93), !dbg !472
  %2 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 0, !dbg !473
  %3 = load %struct.LaneInfo*, %struct.LaneInfo** %2, align 8, !dbg !473, !tbaa !452
  %4 = icmp eq %struct.LaneInfo* %3, null, !dbg !475
  br i1 %4, label %33, label %5, !dbg !476

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %3, i64 0, i32 5, i32 1, i32 0, !dbg !477
  %7 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %6, align 8, !dbg !477, !tbaa !478
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %7, i64 0, metadata !468, metadata !93), !dbg !479
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %7, i64 0, metadata !468, metadata !93), !dbg !479
  %8 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %3, i64 0, i32 5, i32 1, i32 1, !dbg !480
  %9 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %8, align 8, !dbg !480, !tbaa !482
  %10 = icmp eq %struct.LaneBoundaryType* %7, %9, !dbg !483
  br i1 %10, label %33, label %11, !dbg !484

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 1
  %13 = load double, double* %12, align 8, !tbaa !456
  br label %14, !dbg !484

; <label>:14:                                     ; preds = %11, %29
  %15 = phi %struct.LaneBoundaryType* [ %7, %11 ], [ %30, %29 ]
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %15, i64 0, metadata !468, metadata !93), !dbg !479
  %16 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 0, !dbg !485
  %17 = load double, double* %16, align 8, !dbg !485, !tbaa !488
  %18 = fcmp ugt double %17, %13, !dbg !490
  br i1 %18, label %29, label %19, !dbg !491

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 2, !dbg !492
  %21 = load i32, i32* %20, align 8, !dbg !492, !tbaa !495
  %22 = icmp sgt i32 %21, 0, !dbg !496
  br i1 %22, label %23, label %33, !dbg !497

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 1, !dbg !498
  %25 = load i32*, i32** %24, align 8, !dbg !498, !tbaa !499
  %26 = icmp eq i32* %25, null, !dbg !500
  br i1 %26, label %33, label %27, !dbg !501

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %25, align 4, !dbg !502, !tbaa !504
  br label %33, !dbg !505

; <label>:29:                                     ; preds = %14
  %30 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 1, !dbg !506
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %30, i64 0, metadata !468, metadata !93), !dbg !479
  tail call void @llvm.dbg.value(metadata %struct.LaneBoundaryType* %30, i64 0, metadata !468, metadata !93), !dbg !479
  %31 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %8, align 8, !dbg !480, !tbaa !482
  %32 = icmp eq %struct.LaneBoundaryType* %30, %31, !dbg !483
  br i1 %32, label %33, label %14, !dbg !484, !llvm.loop !507

; <label>:33:                                     ; preds = %29, %5, %1, %19, %23, %27
  %34 = phi i32 [ 0, %19 ], [ 0, %23 ], [ %28, %27 ], [ 0, %1 ], [ 0, %5 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define noalias %struct.LaneWaypoint* @RightNeighborWaypoint(%struct.LaneWaypoint* nocapture readonly) local_unnamed_addr #4 !dbg !509 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.Vec2d, align 8
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %0, i64 0, metadata !513, metadata !93), !dbg !526
  %5 = tail call %struct.LaneWaypoint* @LaneWaypoint1(), !dbg !527
  tail call void @llvm.dbg.value(metadata %struct.LaneWaypoint* %5, i64 0, metadata !514, metadata !93), !dbg !528
  %6 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 0, !dbg !529
  %7 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !dbg !529, !tbaa !452
  %8 = icmp eq %struct.LaneInfo* %7, null, !dbg !531
  br i1 %8, label %55, label %9, !dbg !532

; <label>:9:                                      ; preds = %1
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !515, metadata !93), !dbg !533
  %10 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 1, !dbg !534
  %11 = load double, double* %10, align 8, !dbg !534, !tbaa !456
  %12 = tail call { double, double } @GetSmoothPoint(%struct.LaneInfo* nonnull %7, double %11), !dbg !535
  %13 = extractvalue { double, double } %12, 0, !dbg !535
  tail call void @llvm.dbg.value(metadata double %13, i64 0, metadata !515, metadata !154), !dbg !533
  %14 = extractvalue { double, double } %12, 1, !dbg !535
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !515, metadata !156), !dbg !533
  %15 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %7, i64 0, i32 6, i32 0, !dbg !536
  %16 = load i32*, i32** %15, align 8, !dbg !536, !tbaa !537
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !516, metadata !93), !dbg !538
  call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !516, metadata !93), !dbg !538
  %17 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !dbg !539, !tbaa !452
  %18 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %17, i64 0, i32 6, i32 1, !dbg !540
  %19 = load i32*, i32** %18, align 8, !dbg !540, !tbaa !541
  %20 = icmp eq i32* %16, %19, !dbg !542
  br i1 %20, label %55, label %21, !dbg !543

; <label>:21:                                     ; preds = %9
  %22 = bitcast double* %2 to i8*
  %23 = bitcast double* %3 to i8*
  %24 = bitcast %struct.Vec2d* %4 to i8*
  %25 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %4, i64 0, i32 0
  %26 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %4, i64 0, i32 1
  br label %32, !dbg !543

; <label>:27:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32* %54, i64 0, metadata !516, metadata !93), !dbg !538
  %28 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !dbg !539, !tbaa !452
  %29 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %28, i64 0, i32 6, i32 1, !dbg !540
  %30 = load i32*, i32** %29, align 8, !dbg !540, !tbaa !541
  %31 = icmp eq i32* %54, %30, !dbg !542
  br i1 %31, label %55, label %32, !dbg !543, !llvm.loop !544

; <label>:32:                                     ; preds = %21, %27
  %33 = phi %struct.LaneWaypoint* [ undef, %21 ], [ %53, %27 ]
  %34 = phi i32* [ %16, %21 ], [ %54, %27 ]
  call void @llvm.dbg.value(metadata i32* %34, i64 0, metadata !516, metadata !93), !dbg !538
  %35 = load i32, i32* %34, align 4, !dbg !546, !tbaa !547
  %36 = call %struct.LaneInfo* @GetLaneById(i32 %35) #7, !dbg !548
  call void @llvm.dbg.value(metadata %struct.LaneInfo* %36, i64 0, metadata !520, metadata !93), !dbg !549
  %37 = icmp eq %struct.LaneInfo* %36, null, !dbg !550
  br i1 %37, label %55, label %38, !dbg !552

; <label>:38:                                     ; preds = %32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !553
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !523, metadata !93), !dbg !554
  store double 0.000000e+00, double* %2, align 8, !dbg !554, !tbaa !139
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #7, !dbg !555
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !524, metadata !93), !dbg !556
  store double 0.000000e+00, double* %3, align 8, !dbg !556, !tbaa !139
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #7, !dbg !557
  store double %13, double* %25, align 8, !dbg !558, !tbaa !559
  store double %14, double* %26, align 8, !dbg !558, !tbaa !560
  call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !523, metadata !93), !dbg !554
  call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !524, metadata !93), !dbg !556
  call void @llvm.dbg.value(metadata %struct.Vec2d* %4, i64 0, metadata !525, metadata !93), !dbg !561
  %39 = call i32 @GetProjection(%struct.LaneInfo* nonnull %36, %struct.Vec2d* nonnull %4, double* nonnull %2, double* nonnull %3), !dbg !562
  %40 = icmp eq i32 %39, 0, !dbg !562
  br i1 %40, label %51, label %41, !dbg !564

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %2, align 8, !dbg !565, !tbaa !139
  call void @llvm.dbg.value(metadata double %42, i64 0, metadata !523, metadata !93), !dbg !554
  %43 = fcmp olt double %42, -1.000000e+00, !dbg !567
  br i1 %43, label %51, label %44, !dbg !568

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %36, i64 0, i32 0, !dbg !569
  %46 = load double, double* %45, align 8, !dbg !569, !tbaa !389
  %47 = fadd double %46, 1.000000e+00, !dbg !570
  %48 = fcmp ogt double %42, %47, !dbg !571
  br i1 %48, label %51, label %49, !dbg !572

; <label>:49:                                     ; preds = %44
  %50 = call %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo* nonnull %36, double %42), !dbg !573
  br label %51, !dbg !575

; <label>:51:                                     ; preds = %49, %38, %44, %41
  %52 = phi i1 [ false, %49 ], [ true, %38 ], [ true, %44 ], [ true, %41 ]
  %53 = phi %struct.LaneWaypoint* [ %50, %49 ], [ %33, %38 ], [ %33, %44 ], [ %33, %41 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #7, !dbg !576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #7, !dbg !576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !576
  %54 = getelementptr inbounds i32, i32* %34, i64 1, !dbg !577
  call void @llvm.dbg.value(metadata i32* %54, i64 0, metadata !516, metadata !93), !dbg !538
  br i1 %52, label %27, label %55

; <label>:55:                                     ; preds = %27, %51, %32, %9, %1
  %56 = phi %struct.LaneWaypoint* [ %5, %1 ], [ %5, %9 ], [ %5, %27 ], [ %53, %51 ], [ %5, %32 ]
  ret %struct.LaneWaypoint* %56, !dbg !578
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
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Type", file: !1, line: 109, size: 32, elements: !4)
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneWaypoint", file: !1, line: 239, size: 192, elements: !15)
!15 = !{!16, !81, !82}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "lane_", scope: !14, file: !1, line: 240, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneInfo", file: !1, line: 139, size: 1280, elements: !20)
!20 = !{!21, !23, !35, !36, !50, !57, !74}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "total_length_", scope: !19, file: !1, line: 140, baseType: !22, size: 64)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "points_", scope: !19, file: !1, line: 141, baseType: !24, size: 192, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_Vec2d", file: !1, line: 67, size: 192, elements: !25)
!25 = !{!26, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !24, file: !1, line: 68, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec2d", file: !1, line: 44, size: 128, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "x_", scope: !28, file: !1, line: 45, baseType: !22, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "y_", scope: !28, file: !1, line: 46, baseType: !22, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !24, file: !1, line: 69, baseType: !27, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !24, file: !1, line: 70, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "unit_directions_", scope: !19, file: !1, line: 142, baseType: !24, size: 192, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "segments_", scope: !19, file: !1, line: 143, baseType: !37, size: 192, offset: 448)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_LineSegment2d", file: !1, line: 92, size: 192, elements: !38)
!38 = !{!39, !48, !49}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !37, file: !1, line: 93, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LineSegment2d", file: !1, line: 84, size: 512, elements: !42)
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "start_", scope: !41, file: !1, line: 85, baseType: !28, size: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !41, file: !1, line: 86, baseType: !28, size: 128, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "unit_direction_", scope: !41, file: !1, line: 87, baseType: !28, size: 128, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "heading_", scope: !41, file: !1, line: 88, baseType: !22, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "length_", scope: !41, file: !1, line: 89, baseType: !22, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !37, file: !1, line: 94, baseType: !40, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !37, file: !1, line: 95, baseType: !34, size: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "accumulated_s_", scope: !19, file: !1, line: 144, baseType: !51, size: 192, offset: 640)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_double", file: !1, line: 19, size: 192, elements: !52)
!52 = !{!53, !55, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !51, file: !1, line: 20, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !51, file: !1, line: 21, baseType: !54, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !51, file: !1, line: 22, baseType: !34, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "right_boundary", scope: !19, file: !1, line: 145, baseType: !58, size: 256, offset: 832)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneBoundary", file: !1, line: 131, size: 256, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !58, file: !1, line: 132, baseType: !22, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "boundary_type", scope: !58, file: !1, line: 133, baseType: !62, size: 192, offset: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_LaneBoundaryType", file: !1, line: 125, size: 192, elements: !63)
!63 = !{!64, !72, !73}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !62, file: !1, line: 126, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneBoundaryType", file: !1, line: 119, size: 192, elements: !67)
!67 = !{!68, !69, !71}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !66, file: !1, line: 120, baseType: !22, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !66, file: !1, line: 121, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "types_size", scope: !66, file: !1, line: 122, baseType: !34, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !62, file: !1, line: 127, baseType: !65, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !62, file: !1, line: 128, baseType: !34, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "right_neighbor_forward_lane_id", scope: !19, file: !1, line: 146, baseType: !75, size: 192, offset: 1088)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_int", file: !1, line: 10, size: 192, elements: !76)
!76 = !{!77, !79, !80}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !75, file: !1, line: 11, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !75, file: !1, line: 12, baseType: !78, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !75, file: !1, line: 13, baseType: !34, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !14, file: !1, line: 241, baseType: !22, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !14, file: !1, line: 242, baseType: !22, size: 64, offset: 128)
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
!99 = distinct !DISubprogram(name: "size_double", scope: !1, file: !1, line: 29, type: !100, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !105)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!105 = !{!106}
!106 = !DILocalVariable(name: "vec", arg: 1, scope: !99, file: !1, line: 29, type: !103)
!107 = !DILocation(line: 29, column: 50, scope: !99)
!108 = !DILocation(line: 30, column: 15, scope: !99)
!109 = !{!110, !111, i64 8}
!110 = !{!"Vector_double", !111, i64 0, !111, i64 8, !114, i64 16}
!111 = !{!"any pointer", !112, i64 0}
!112 = !{!"omnipotent char", !113, i64 0}
!113 = !{!"Simple C/C++ TBAA"}
!114 = !{!"int", !112, i64 0}
!115 = !DILocation(line: 30, column: 26, scope: !99)
!116 = !{!110, !111, i64 0}
!117 = !DILocation(line: 30, column: 19, scope: !99)
!118 = !DILocation(line: 30, column: 10, scope: !99)
!119 = !DILocation(line: 30, column: 3, scope: !99)
!120 = distinct !DISubprogram(name: "lower_bound_double", scope: !1, file: !1, line: 33, type: !121, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !123)
!121 = !DISubroutineType(types: !122)
!122 = !{!54, !54, !54, !22}
!123 = !{!124, !125, !126, !127}
!124 = !DILocalVariable(name: "start", arg: 1, scope: !120, file: !1, line: 33, type: !54)
!125 = !DILocalVariable(name: "end", arg: 2, scope: !120, file: !1, line: 33, type: !54)
!126 = !DILocalVariable(name: "value", arg: 3, scope: !120, file: !1, line: 33, type: !22)
!127 = !DILocalVariable(name: "p", scope: !120, file: !1, line: 34, type: !54)
!128 = !DILocation(line: 33, column: 36, scope: !120)
!129 = !DILocation(line: 33, column: 51, scope: !120)
!130 = !DILocation(line: 33, column: 63, scope: !120)
!131 = !DILocation(line: 34, column: 11, scope: !120)
!132 = !DILocation(line: 35, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 35, column: 3)
!134 = distinct !DILexicalBlock(scope: !120, file: !1, line: 35, column: 3)
!135 = !DILocation(line: 35, column: 3, scope: !134)
!136 = !DILocation(line: 36, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 36, column: 9)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 35, column: 34)
!139 = !{!140, !140, i64 0}
!140 = !{!"double", !112, i64 0}
!141 = !DILocation(line: 36, column: 12, scope: !137)
!142 = !DILocation(line: 36, column: 9, scope: !138)
!143 = !DILocation(line: 35, column: 29, scope: !133)
!144 = distinct !{!144, !135, !145}
!145 = !DILocation(line: 37, column: 3, scope: !134)
!146 = !DILocation(line: 38, column: 3, scope: !120)
!147 = distinct !DISubprogram(name: "InnerProd", scope: !1, file: !1, line: 49, type: !148, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !151)
!148 = !DISubroutineType(types: !149)
!149 = !{!22, !150, !150}
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "point1", arg: 1, scope: !147, file: !1, line: 49, type: !150)
!153 = !DILocalVariable(name: "point2", arg: 2, scope: !147, file: !1, line: 49, type: !150)
!154 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!155 = !DILocation(line: 49, column: 37, scope: !147)
!156 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!157 = !DILocation(line: 49, column: 64, scope: !147)
!158 = !DILocation(line: 50, column: 20, scope: !147)
!159 = !DILocation(line: 50, column: 44, scope: !147)
!160 = !DILocation(line: 50, column: 32, scope: !147)
!161 = !DILocation(line: 50, column: 3, scope: !147)
!162 = distinct !DISubprogram(name: "Sub", scope: !1, file: !1, line: 53, type: !163, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!28, !150, !150}
!165 = !{!166, !167, !168}
!166 = !DILocalVariable(name: "point1", arg: 1, scope: !162, file: !1, line: 53, type: !150)
!167 = !DILocalVariable(name: "point2", arg: 2, scope: !162, file: !1, line: 53, type: !150)
!168 = !DILocalVariable(name: "result", scope: !162, file: !1, line: 54, type: !28)
!169 = !DILocation(line: 53, column: 37, scope: !162)
!170 = !DILocation(line: 53, column: 64, scope: !162)
!171 = !DILocation(line: 54, column: 16, scope: !162)
!172 = !DILocation(line: 55, column: 25, scope: !162)
!173 = !DILocation(line: 56, column: 25, scope: !162)
!174 = !DILocation(line: 58, column: 1, scope: !162)
!175 = distinct !DISubprogram(name: "Mul", scope: !1, file: !1, line: 60, type: !176, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!28, !150, !22}
!178 = !{!179, !180, !181}
!179 = !DILocalVariable(name: "point1", arg: 1, scope: !175, file: !1, line: 60, type: !150)
!180 = !DILocalVariable(name: "c", arg: 2, scope: !175, file: !1, line: 60, type: !22)
!181 = !DILocalVariable(name: "result", scope: !175, file: !1, line: 61, type: !28)
!182 = !DILocation(line: 60, column: 37, scope: !175)
!183 = !DILocation(line: 60, column: 52, scope: !175)
!184 = !DILocation(line: 61, column: 16, scope: !175)
!185 = !DILocation(line: 62, column: 25, scope: !175)
!186 = !DILocation(line: 63, column: 25, scope: !175)
!187 = !DILocation(line: 65, column: 1, scope: !175)
!188 = distinct !DISubprogram(name: "empty_Vec2d", scope: !1, file: !1, line: 73, type: !189, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !193)
!189 = !DISubroutineType(types: !190)
!190 = !{!34, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!193 = !{!194}
!194 = !DILocalVariable(name: "vec", arg: 1, scope: !188, file: !1, line: 73, type: !191)
!195 = !DILocation(line: 73, column: 44, scope: !188)
!196 = !DILocation(line: 74, column: 15, scope: !188)
!197 = !{!198, !111, i64 8}
!198 = !{!"Vector_Vec2d", !111, i64 0, !111, i64 8, !114, i64 16}
!199 = !DILocation(line: 74, column: 27, scope: !188)
!200 = !{!198, !111, i64 0}
!201 = !DILocation(line: 74, column: 19, scope: !188)
!202 = !DILocation(line: 74, column: 3, scope: !188)
!203 = distinct !DISubprogram(name: "size_Vec2d", scope: !1, file: !1, line: 77, type: !204, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!102, !191}
!206 = !{!207}
!207 = !DILocalVariable(name: "vec", arg: 1, scope: !203, file: !1, line: 77, type: !191)
!208 = !DILocation(line: 77, column: 48, scope: !203)
!209 = !DILocation(line: 78, column: 15, scope: !203)
!210 = !DILocation(line: 78, column: 26, scope: !203)
!211 = !DILocation(line: 78, column: 19, scope: !203)
!212 = !DILocation(line: 78, column: 10, scope: !203)
!213 = !DILocation(line: 78, column: 3, scope: !203)
!214 = distinct !DISubprogram(name: "empty_LineSegment2d", scope: !1, file: !1, line: 98, type: !215, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !219)
!215 = !DISubroutineType(types: !216)
!216 = !{!34, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!219 = !{!220}
!220 = !DILocalVariable(name: "vec", arg: 1, scope: !214, file: !1, line: 98, type: !217)
!221 = !DILocation(line: 98, column: 60, scope: !214)
!222 = !DILocation(line: 99, column: 15, scope: !214)
!223 = !{!224, !111, i64 8}
!224 = !{!"Vector_LineSegment2d", !111, i64 0, !111, i64 8, !114, i64 16}
!225 = !DILocation(line: 99, column: 27, scope: !214)
!226 = !{!224, !111, i64 0}
!227 = !DILocation(line: 99, column: 19, scope: !214)
!228 = !DILocation(line: 99, column: 3, scope: !214)
!229 = distinct !DISubprogram(name: "size_LineSegment2d", scope: !1, file: !1, line: 102, type: !230, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!102, !217}
!232 = !{!233}
!233 = !DILocalVariable(name: "vec", arg: 1, scope: !229, file: !1, line: 102, type: !217)
!234 = !DILocation(line: 102, column: 64, scope: !229)
!235 = !DILocation(line: 103, column: 15, scope: !229)
!236 = !DILocation(line: 103, column: 26, scope: !229)
!237 = !DILocation(line: 103, column: 19, scope: !229)
!238 = !DILocation(line: 103, column: 10, scope: !229)
!239 = !DILocation(line: 103, column: 3, scope: !229)
!240 = distinct !DISubprogram(name: "GetProjection", scope: !1, file: !1, line: 155, type: !241, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !245)
!241 = !DISubroutineType(types: !242)
!242 = !{!34, !243, !244, !54, !54}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !256, !261, !263, !266, !269, !270}
!246 = !DILocalVariable(name: "lane", arg: 1, scope: !240, file: !1, line: 155, type: !243)
!247 = !DILocalVariable(name: "point", arg: 2, scope: !240, file: !1, line: 155, type: !244)
!248 = !DILocalVariable(name: "accumulate_s", arg: 3, scope: !240, file: !1, line: 155, type: !54)
!249 = !DILocalVariable(name: "lateral", arg: 4, scope: !240, file: !1, line: 155, type: !54)
!250 = !DILocalVariable(name: "min_distance", scope: !240, file: !1, line: 161, type: !22)
!251 = !DILocalVariable(name: "min_index", scope: !240, file: !1, line: 162, type: !102)
!252 = !DILocalVariable(name: "min_proj", scope: !240, file: !1, line: 163, type: !22)
!253 = !DILocalVariable(name: "num_segments", scope: !240, file: !1, line: 164, type: !102)
!254 = !DILocalVariable(name: "i", scope: !255, file: !1, line: 166, type: !102)
!255 = distinct !DILexicalBlock(scope: !240, file: !1, line: 166, column: 3)
!256 = !DILocalVariable(name: "segment", scope: !257, file: !1, line: 167, type: !259)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 166, column: 47)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 166, column: 3)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!261 = !DILocalVariable(name: "distance", scope: !257, file: !1, line: 168, type: !262)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!263 = !DILocalVariable(name: "proj", scope: !264, file: !1, line: 170, type: !262)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 169, column: 34)
!265 = distinct !DILexicalBlock(scope: !257, file: !1, line: 169, column: 9)
!266 = !DILocalVariable(name: "next_segment", scope: !267, file: !1, line: 175, type: !259)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 174, column: 60)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 174, column: 11)
!269 = !DILocalVariable(name: "segment", scope: !240, file: !1, line: 186, type: !259)
!270 = !DILocalVariable(name: "prod", scope: !240, file: !1, line: 193, type: !262)
!271 = !DILocation(line: 155, column: 36, scope: !240)
!272 = !DILocation(line: 155, column: 62, scope: !240)
!273 = !DILocation(line: 155, column: 77, scope: !240)
!274 = !DILocation(line: 155, column: 99, scope: !240)
!275 = !DILocation(line: 156, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !240, file: !1, line: 156, column: 7)
!277 = !DILocation(line: 157, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !240, file: !1, line: 157, column: 7)
!279 = !DILocation(line: 156, column: 7, scope: !240)
!280 = !DILocation(line: 158, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !240, file: !1, line: 158, column: 7)
!282 = !DILocation(line: 159, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !240, file: !1, line: 159, column: 7)
!284 = !DILocation(line: 159, column: 43, scope: !283)
!285 = !DILocation(line: 159, column: 16, scope: !283)
!286 = !DILocation(line: 159, column: 7, scope: !240)
!287 = !DILocation(line: 161, column: 10, scope: !240)
!288 = !DILocation(line: 162, column: 12, scope: !240)
!289 = !DILocation(line: 163, column: 10, scope: !240)
!290 = !DILocation(line: 164, column: 27, scope: !240)
!291 = !DILocation(line: 164, column: 12, scope: !240)
!292 = !DILocation(line: 166, column: 17, scope: !255)
!293 = !DILocation(line: 166, column: 26, scope: !258)
!294 = !{!295, !111, i64 56}
!295 = !{!"LaneInfo", !140, i64 0, !198, i64 8, !198, i64 32, !224, i64 56, !110, i64 80, !296, i64 104, !298, i64 136}
!296 = !{!"LaneBoundary", !140, i64 0, !297, i64 8}
!297 = !{!"Vector_LaneBoundaryType", !111, i64 0, !111, i64 8, !114, i64 16}
!298 = !{!"Vector_int", !111, i64 0, !111, i64 8, !114, i64 16}
!299 = !DILocation(line: 166, column: 3, scope: !255)
!300 = !DILocation(line: 186, column: 63, scope: !240)
!301 = !DILocation(line: 186, column: 31, scope: !240)
!302 = !DILocation(line: 187, column: 17, scope: !303)
!303 = distinct !DILexicalBlock(scope: !240, file: !1, line: 187, column: 7)
!304 = !DILocation(line: 187, column: 21, scope: !303)
!305 = !{!295, !111, i64 80}
!306 = !DILocation(line: 187, column: 7, scope: !240)
!307 = !DILocation(line: 167, column: 65, scope: !257)
!308 = !DILocation(line: 167, column: 33, scope: !257)
!309 = !DILocation(line: 168, column: 29, scope: !257)
!310 = !DILocation(line: 168, column: 18, scope: !257)
!311 = !DILocation(line: 169, column: 18, scope: !265)
!312 = !DILocation(line: 169, column: 9, scope: !257)
!313 = !DILocation(line: 170, column: 27, scope: !264)
!314 = !DILocation(line: 170, column: 20, scope: !264)
!315 = !DILocation(line: 171, column: 16, scope: !316)
!316 = distinct !DILexicalBlock(scope: !264, file: !1, line: 171, column: 11)
!317 = !DILocation(line: 171, column: 27, scope: !316)
!318 = !DILocation(line: 171, column: 22, scope: !316)
!319 = !DILocation(line: 174, column: 27, scope: !268)
!320 = !{!321, !140, i64 56}
!321 = !{!"LineSegment2d", !322, i64 0, !322, i64 16, !322, i64 32, !140, i64 48, !140, i64 56}
!322 = !{!"Vec2d", !140, i64 0, !140, i64 8}
!323 = !DILocation(line: 174, column: 16, scope: !268)
!324 = !DILocation(line: 174, column: 40, scope: !268)
!325 = !DILocation(line: 174, column: 44, scope: !268)
!326 = !DILocation(line: 174, column: 35, scope: !268)
!327 = !DILocation(line: 175, column: 68, scope: !267)
!328 = !DILocation(line: 175, column: 74, scope: !267)
!329 = !DILocation(line: 175, column: 78, scope: !267)
!330 = !DILocation(line: 175, column: 37, scope: !267)
!331 = !DILocation(line: 176, column: 23, scope: !332)
!332 = distinct !DILexicalBlock(scope: !267, file: !1, line: 176, column: 13)
!333 = !DILocation(line: 176, column: 72, scope: !332)
!334 = !DILocation(line: 176, column: 13, scope: !332)
!335 = !DILocation(line: 176, column: 89, scope: !332)
!336 = !DILocation(line: 183, column: 5, scope: !265)
!337 = !DILocation(line: 166, column: 42, scope: !258)
!338 = distinct !{!338, !299, !339}
!339 = !DILocation(line: 184, column: 3, scope: !255)
!340 = !DILocation(line: 191, column: 83, scope: !341)
!341 = distinct !DILexicalBlock(scope: !303, file: !1, line: 189, column: 10)
!342 = !DILocation(line: 191, column: 53, scope: !341)
!343 = !DILocation(line: 193, column: 23, scope: !240)
!344 = !DILocation(line: 193, column: 16, scope: !240)
!345 = !DILocation(line: 194, column: 18, scope: !346)
!346 = distinct !DILexicalBlock(scope: !240, file: !1, line: 194, column: 7)
!347 = !DILocation(line: 194, column: 35, scope: !346)
!348 = !DILocation(line: 194, column: 23, scope: !346)
!349 = !DILocation(line: 195, column: 22, scope: !346)
!350 = !DILocation(line: 195, column: 38, scope: !346)
!351 = !DILocation(line: 195, column: 61, scope: !346)
!352 = !DILocation(line: 195, column: 50, scope: !346)
!353 = !DILocation(line: 194, column: 7, scope: !240)
!354 = !DILocation(line: 198, column: 22, scope: !355)
!355 = distinct !DILexicalBlock(scope: !346, file: !1, line: 197, column: 10)
!356 = !DILocation(line: 198, column: 45, scope: !355)
!357 = !DILocation(line: 198, column: 17, scope: !355)
!358 = !DILocation(line: 202, column: 1, scope: !240)
!359 = distinct !DISubprogram(name: "GetSmoothPoint", scope: !1, file: !1, line: 204, type: !360, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{!28, !17, !22}
!362 = !{!363, !364, !365, !366, !368, !369, !370}
!363 = !DILocalVariable(name: "lane", arg: 1, scope: !359, file: !1, line: 204, type: !17)
!364 = !DILocalVariable(name: "s", arg: 2, scope: !359, file: !1, line: 204, type: !22)
!365 = !DILocalVariable(name: "point", scope: !359, file: !1, line: 205, type: !28)
!366 = !DILocalVariable(name: "low_itr", scope: !359, file: !1, line: 221, type: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!368 = !DILocalVariable(name: "index", scope: !359, file: !1, line: 225, type: !102)
!369 = !DILocalVariable(name: "delta_s", scope: !359, file: !1, line: 226, type: !22)
!370 = !DILocalVariable(name: "smooth_point", scope: !359, file: !1, line: 231, type: !28)
!371 = !DILocation(line: 204, column: 52, scope: !359)
!372 = !DILocation(line: 204, column: 65, scope: !359)
!373 = !DILocation(line: 205, column: 16, scope: !359)
!374 = !DILocation(line: 207, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !359, file: !1, line: 207, column: 7)
!376 = !DILocation(line: 207, column: 7, scope: !375)
!377 = !DILocation(line: 207, column: 34, scope: !375)
!378 = !DILocation(line: 207, column: 7, scope: !359)
!379 = !DILocation(line: 210, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !359, file: !1, line: 210, column: 7)
!381 = !DILocation(line: 210, column: 7, scope: !359)
!382 = !DILocation(line: 211, column: 27, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !1, line: 210, column: 17)
!384 = !{!295, !111, i64 8}
!385 = !DILocation(line: 211, column: 12, scope: !383)
!386 = !DILocation(line: 211, column: 5, scope: !383)
!387 = !DILocation(line: 214, column: 18, scope: !388)
!388 = distinct !DILexicalBlock(scope: !359, file: !1, line: 214, column: 7)
!389 = !{!295, !140, i64 0}
!390 = !DILocation(line: 214, column: 9, scope: !388)
!391 = !DILocation(line: 214, column: 7, scope: !359)
!392 = !DILocation(line: 215, column: 28, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !1, line: 214, column: 33)
!394 = !{!295, !111, i64 16}
!395 = !DILocation(line: 215, column: 12, scope: !393)
!396 = !DILocation(line: 215, column: 5, scope: !393)
!397 = !DILocation(line: 217, column: 56, scope: !398)
!398 = distinct !DILexicalBlock(scope: !359, file: !1, line: 217, column: 7)
!399 = !DILocation(line: 217, column: 37, scope: !398)
!400 = !DILocation(line: 217, column: 34, scope: !398)
!401 = !DILocation(line: 217, column: 7, scope: !359)
!402 = !DILocation(line: 221, column: 67, scope: !359)
!403 = !DILocation(line: 221, column: 95, scope: !359)
!404 = !{!295, !111, i64 88}
!405 = !DILocation(line: 221, column: 27, scope: !359)
!406 = !DILocation(line: 221, column: 17, scope: !359)
!407 = !DILocation(line: 222, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !359, file: !1, line: 222, column: 7)
!409 = !DILocation(line: 222, column: 7, scope: !359)
!410 = !DILocation(line: 225, column: 51, scope: !359)
!411 = !DILocation(line: 225, column: 28, scope: !359)
!412 = !DILocation(line: 226, column: 20, scope: !359)
!413 = !DILocation(line: 226, column: 29, scope: !359)
!414 = !DILocation(line: 226, column: 10, scope: !359)
!415 = !DILocation(line: 227, column: 15, scope: !416)
!416 = distinct !DILexicalBlock(scope: !359, file: !1, line: 227, column: 7)
!417 = !DILocation(line: 227, column: 7, scope: !359)
!418 = !DILocation(line: 228, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 227, column: 31)
!420 = !DILocation(line: 228, column: 5, scope: !419)
!421 = !DILocation(line: 231, column: 16, scope: !359)
!422 = !DILocation(line: 231, column: 97, scope: !359)
!423 = !{!295, !111, i64 32}
!424 = !DILocation(line: 231, column: 103, scope: !359)
!425 = !DILocation(line: 231, column: 111, scope: !359)
!426 = !DILocation(line: 231, column: 68, scope: !359)
!427 = !DILocation(line: 231, column: 31, scope: !359)
!428 = !DILocation(line: 234, column: 1, scope: !359)
!429 = distinct !DISubprogram(name: "LaneWaypoint1", scope: !1, file: !1, line: 245, type: !430, isLocal: false, isDefinition: true, scopeLine: 245, isOptimized: true, unit: !0, variables: !431)
!430 = !DISubroutineType(types: !12)
!431 = !{!432}
!432 = !DILocalVariable(name: "newlane", scope: !429, file: !1, line: 246, type: !13)
!433 = !DILocation(line: 246, column: 56, scope: !429)
!434 = !DILocation(line: 246, column: 34, scope: !429)
!435 = !DILocation(line: 246, column: 24, scope: !429)
!436 = !DILocation(line: 248, column: 14, scope: !429)
!437 = !DILocation(line: 250, column: 3, scope: !429)
!438 = distinct !DISubprogram(name: "LaneWaypoint2", scope: !1, file: !1, line: 253, type: !439, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!13, !17, !262}
!441 = !{!442, !443, !444}
!442 = !DILocalVariable(name: "lane", arg: 1, scope: !438, file: !1, line: 253, type: !17)
!443 = !DILocalVariable(name: "s", arg: 2, scope: !438, file: !1, line: 253, type: !262)
!444 = !DILocalVariable(name: "newlane", scope: !438, file: !1, line: 254, type: !13)
!445 = !DILocation(line: 253, column: 59, scope: !438)
!446 = !DILocation(line: 253, column: 78, scope: !438)
!447 = !DILocation(line: 254, column: 56, scope: !438)
!448 = !DILocation(line: 254, column: 34, scope: !438)
!449 = !DILocation(line: 254, column: 24, scope: !438)
!450 = !DILocation(line: 255, column: 12, scope: !438)
!451 = !DILocation(line: 255, column: 18, scope: !438)
!452 = !{!453, !111, i64 0}
!453 = !{!"LaneWaypoint", !111, i64 0, !140, i64 8, !140, i64 16}
!454 = !DILocation(line: 256, column: 12, scope: !438)
!455 = !DILocation(line: 256, column: 14, scope: !438)
!456 = !{!453, !140, i64 8}
!457 = !DILocation(line: 257, column: 12, scope: !438)
!458 = !DILocation(line: 257, column: 14, scope: !438)
!459 = !{!453, !140, i64 16}
!460 = !DILocation(line: 258, column: 3, scope: !438)
!461 = distinct !DISubprogram(name: "RightBoundaryType", scope: !1, file: !1, line: 261, type: !462, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !466)
!462 = !DISubroutineType(types: !463)
!463 = !{!3, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "waypoint", arg: 1, scope: !461, file: !1, line: 261, type: !464)
!468 = !DILocalVariable(name: "type", scope: !469, file: !1, line: 265, type: !470)
!469 = distinct !DILexicalBlock(scope: !461, file: !1, line: 265, column: 3)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!472 = !DILocation(line: 261, column: 56, scope: !461)
!473 = !DILocation(line: 262, column: 18, scope: !474)
!474 = distinct !DILexicalBlock(scope: !461, file: !1, line: 262, column: 7)
!475 = !DILocation(line: 262, column: 8, scope: !474)
!476 = !DILocation(line: 262, column: 7, scope: !461)
!477 = !DILocation(line: 265, column: 92, scope: !469)
!478 = !{!295, !111, i64 112}
!479 = !DILocation(line: 265, column: 39, scope: !469)
!480 = !DILocation(line: 266, column: 62, scope: !481)
!481 = distinct !DILexicalBlock(scope: !469, file: !1, line: 265, column: 3)
!482 = !{!295, !111, i64 120}
!483 = !DILocation(line: 266, column: 13, scope: !481)
!484 = !DILocation(line: 265, column: 3, scope: !469)
!485 = !DILocation(line: 267, column: 15, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 267, column: 9)
!487 = distinct !DILexicalBlock(scope: !481, file: !1, line: 266, column: 75)
!488 = !{!489, !140, i64 0}
!489 = !{!"LaneBoundaryType", !140, i64 0, !111, i64 8, !114, i64 16}
!490 = !DILocation(line: 267, column: 17, scope: !486)
!491 = !DILocation(line: 267, column: 9, scope: !487)
!492 = !DILocation(line: 268, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 268, column: 11)
!494 = distinct !DILexicalBlock(scope: !486, file: !1, line: 267, column: 33)
!495 = !{!489, !114, i64 16}
!496 = !DILocation(line: 268, column: 28, scope: !493)
!497 = !DILocation(line: 268, column: 32, scope: !493)
!498 = !DILocation(line: 268, column: 41, scope: !493)
!499 = !{!489, !111, i64 8}
!500 = !DILocation(line: 268, column: 35, scope: !493)
!501 = !DILocation(line: 268, column: 11, scope: !494)
!502 = !DILocation(line: 269, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !1, line: 268, column: 48)
!504 = !{!112, !112, i64 0}
!505 = !DILocation(line: 269, column: 9, scope: !503)
!506 = !DILocation(line: 266, column: 67, scope: !481)
!507 = distinct !{!507, !484, !508}
!508 = !DILocation(line: 274, column: 3, scope: !469)
!509 = distinct !DISubprogram(name: "RightNeighborWaypoint", scope: !1, file: !1, line: 278, type: !510, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!13, !464}
!512 = !{!513, !514, !515, !516, !520, !523, !524, !525}
!513 = !DILocalVariable(name: "waypoint", arg: 1, scope: !509, file: !1, line: 278, type: !464)
!514 = !DILocalVariable(name: "neighbor", scope: !509, file: !1, line: 279, type: !13)
!515 = !DILocalVariable(name: "point", scope: !509, file: !1, line: 283, type: !28)
!516 = !DILocalVariable(name: "lane_id", scope: !517, file: !1, line: 284, type: !518)
!517 = distinct !DILexicalBlock(scope: !509, file: !1, line: 284, column: 3)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!520 = !DILocalVariable(name: "lane", scope: !521, file: !1, line: 286, type: !243)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 285, column: 83)
!522 = distinct !DILexicalBlock(scope: !517, file: !1, line: 284, column: 3)
!523 = !DILocalVariable(name: "s", scope: !521, file: !1, line: 290, type: !22)
!524 = !DILocalVariable(name: "l", scope: !521, file: !1, line: 291, type: !22)
!525 = !DILocalVariable(name: "point2", scope: !521, file: !1, line: 292, type: !28)
!526 = !DILocation(line: 278, column: 71, scope: !509)
!527 = !DILocation(line: 279, column: 35, scope: !509)
!528 = !DILocation(line: 279, column: 24, scope: !509)
!529 = !DILocation(line: 280, column: 18, scope: !530)
!530 = distinct !DILexicalBlock(scope: !509, file: !1, line: 280, column: 7)
!531 = !DILocation(line: 280, column: 8, scope: !530)
!532 = !DILocation(line: 280, column: 7, scope: !509)
!533 = !DILocation(line: 283, column: 16, scope: !509)
!534 = !DILocation(line: 283, column: 66, scope: !509)
!535 = !DILocation(line: 283, column: 24, scope: !509)
!536 = !DILocation(line: 284, column: 77, scope: !517)
!537 = !{!295, !111, i64 136}
!538 = !DILocation(line: 284, column: 19, scope: !517)
!539 = !DILocation(line: 285, column: 29, scope: !522)
!540 = !DILocation(line: 285, column: 67, scope: !522)
!541 = !{!295, !111, i64 144}
!542 = !DILocation(line: 285, column: 16, scope: !522)
!543 = !DILocation(line: 284, column: 3, scope: !517)
!544 = distinct !{!544, !543, !545}
!545 = !DILocation(line: 301, column: 3, scope: !517)
!546 = !DILocation(line: 286, column: 41, scope: !521)
!547 = !{!114, !114, i64 0}
!548 = !DILocation(line: 286, column: 29, scope: !521)
!549 = !DILocation(line: 286, column: 22, scope: !521)
!550 = !DILocation(line: 287, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !521, file: !1, line: 287, column: 9)
!552 = !DILocation(line: 287, column: 9, scope: !521)
!553 = !DILocation(line: 290, column: 5, scope: !521)
!554 = !DILocation(line: 290, column: 12, scope: !521)
!555 = !DILocation(line: 291, column: 5, scope: !521)
!556 = !DILocation(line: 291, column: 12, scope: !521)
!557 = !DILocation(line: 292, column: 5, scope: !521)
!558 = !DILocation(line: 292, column: 27, scope: !521)
!559 = !{!322, !140, i64 0}
!560 = !{!322, !140, i64 8}
!561 = !DILocation(line: 292, column: 18, scope: !521)
!562 = !DILocation(line: 293, column: 10, scope: !563)
!563 = distinct !DILexicalBlock(scope: !521, file: !1, line: 293, column: 9)
!564 = !DILocation(line: 293, column: 9, scope: !521)
!565 = !DILocation(line: 296, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !521, file: !1, line: 296, column: 9)
!567 = !DILocation(line: 296, column: 11, scope: !566)
!568 = !DILocation(line: 296, column: 30, scope: !566)
!569 = !DILocation(line: 296, column: 43, scope: !566)
!570 = !DILocation(line: 296, column: 57, scope: !566)
!571 = !DILocation(line: 296, column: 35, scope: !566)
!572 = !DILocation(line: 296, column: 9, scope: !521)
!573 = !DILocation(line: 299, column: 14, scope: !574)
!574 = distinct !DILexicalBlock(scope: !566, file: !1, line: 298, column: 12)
!575 = !DILocation(line: 299, column: 7, scope: !574)
!576 = !DILocation(line: 301, column: 3, scope: !522)
!577 = !DILocation(line: 285, column: 72, scope: !522)
!578 = !DILocation(line: 303, column: 1, scope: !509)
