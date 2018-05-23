; ModuleID = 'example/path.c'
source_filename = "example/path.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Vec2d = type { double, double }
%struct.Vector_Vec2d = type { %struct.Vec2d*, %struct.Vec2d*, i32 }
%struct.Vector_LineSegment2d = type { %struct.LineSegment2d*, %struct.LineSegment2d*, i32 }
%struct.LineSegment2d = type { %struct.Vec2d, %struct.Vec2d, %struct.Vec2d, double, double }
%struct.LaneInfo = type { double, %struct.Vector_Vec2d, %struct.Vector_Vec2d, %struct.Vector_LineSegment2d, %struct.Vector_double, %struct.LaneBoundary, %struct.Vector_int }
%struct.Vector_double = type { double*, double*, i32 }
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
define double* @lower_bound_double(double* readonly, double* readnone, double) local_unnamed_addr #2 !dbg !99 {
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !103, metadata !93), !dbg !107
  tail call void @llvm.dbg.value(metadata double* %1, i64 0, metadata !104, metadata !93), !dbg !108
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !105, metadata !93), !dbg !109
  %4 = icmp ne double* %0, null, !dbg !110
  %5 = icmp ne double* %1, null, !dbg !112
  %6 = and i1 %4, %5, !dbg !113
  br i1 %6, label %7, label %17, !dbg !113

; <label>:7:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !106, metadata !93), !dbg !114
  tail call void @llvm.dbg.value(metadata double* %0, i64 0, metadata !106, metadata !93), !dbg !114
  %8 = icmp eq double* %0, %1, !dbg !115
  br i1 %8, label %17, label %9, !dbg !118

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !119

; <label>:10:                                     ; preds = %9, %14
  %11 = phi double* [ %15, %14 ], [ %0, %9 ]
  tail call void @llvm.dbg.value(metadata double* %11, i64 0, metadata !106, metadata !93), !dbg !114
  %12 = load double, double* %11, align 8, !dbg !119, !tbaa !122
  %13 = fcmp ult double %12, %2, !dbg !126
  br i1 %13, label %14, label %17, !dbg !127

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds double, double* %11, i64 1, !dbg !128
  tail call void @llvm.dbg.value(metadata double* %15, i64 0, metadata !106, metadata !93), !dbg !114
  tail call void @llvm.dbg.value(metadata double* %15, i64 0, metadata !106, metadata !93), !dbg !114
  %16 = icmp eq double* %15, %1, !dbg !115
  br i1 %16, label %17, label %10, !dbg !118, !llvm.loop !129

; <label>:17:                                     ; preds = %10, %14, %7, %3
  %18 = phi double* [ %1, %3 ], [ %0, %7 ], [ %11, %10 ], [ %15, %14 ]
  ret double* %18, !dbg !131
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone uwtable
define double @InnerProd(double, double, double, double) local_unnamed_addr #0 !dbg !132 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !137, metadata !139), !dbg !140
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !137, metadata !141), !dbg !140
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !138, metadata !139), !dbg !142
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !138, metadata !141), !dbg !142
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !137, metadata !93), !dbg !140
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !138, metadata !93), !dbg !142
  %5 = fmul double %0, %2, !dbg !143
  %6 = fmul double %1, %3, !dbg !144
  %7 = fadd double %5, %6, !dbg !145
  ret double %7, !dbg !146
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @Sub(double, double, double, double) local_unnamed_addr #0 !dbg !147 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !151, metadata !139), !dbg !154
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !151, metadata !141), !dbg !154
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !152, metadata !139), !dbg !155
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !152, metadata !141), !dbg !155
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !151, metadata !93), !dbg !154
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !152, metadata !93), !dbg !155
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !153, metadata !93), !dbg !156
  %5 = fsub double %0, %2, !dbg !157
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !153, metadata !139), !dbg !156
  %6 = fsub double %1, %3, !dbg !158
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !153, metadata !141), !dbg !156
  %7 = insertvalue { double, double } undef, double %5, 0, !dbg !159
  %8 = insertvalue { double, double } %7, double %6, 1, !dbg !159
  ret { double, double } %8, !dbg !159
}

; Function Attrs: nounwind readnone uwtable
define { double, double } @Mul(double, double, double) local_unnamed_addr #0 !dbg !160 {
  tail call void @llvm.dbg.value(metadata double %0, i64 0, metadata !164, metadata !139), !dbg !167
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !164, metadata !141), !dbg !167
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !164, metadata !93), !dbg !167
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !165, metadata !93), !dbg !168
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !166, metadata !93), !dbg !169
  %4 = fmul double %0, %2, !dbg !170
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !166, metadata !139), !dbg !169
  %5 = fmul double %1, %2, !dbg !171
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !166, metadata !141), !dbg !169
  %6 = insertvalue { double, double } undef, double %4, 0, !dbg !172
  %7 = insertvalue { double, double } %6, double %5, 1, !dbg !172
  ret { double, double } %7, !dbg !172
}

; Function Attrs: nounwind readonly uwtable
define i32 @empty_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #2 !dbg !173 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_Vec2d* %0, i64 0, metadata !179, metadata !93), !dbg !180
  %2 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 2, !dbg !181
  %3 = load i32, i32* %2, align 8, !dbg !181, !tbaa !182
  %4 = icmp eq i32 %3, 0, !dbg !186
  br i1 %4, label %12, label %5, !dbg !187

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1, !dbg !188
  %7 = load %struct.Vec2d*, %struct.Vec2d** %6, align 8, !dbg !188, !tbaa !189
  %8 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 0, !dbg !190
  %9 = load %struct.Vec2d*, %struct.Vec2d** %8, align 8, !dbg !190, !tbaa !191
  %10 = icmp eq %struct.Vec2d* %7, %9, !dbg !192
  %11 = zext i1 %10 to i32, !dbg !187
  br label %12, !dbg !187

; <label>:12:                                     ; preds = %5, %1
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  ret i32 %13, !dbg !193
}

; Function Attrs: nounwind readonly uwtable
define i32 @size_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #2 !dbg !194 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_Vec2d* %0, i64 0, metadata !199, metadata !93), !dbg !200
  %2 = tail call i32 @empty_Vec2d(%struct.Vector_Vec2d* %0), !dbg !201
  %3 = icmp eq i32 %2, 0, !dbg !201
  br i1 %3, label %4, label %13, !dbg !203

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1, !dbg !204
  %6 = bitcast %struct.Vec2d** %5 to i64*, !dbg !204
  %7 = load i64, i64* %6, align 8, !dbg !204, !tbaa !189
  %8 = bitcast %struct.Vector_Vec2d* %0 to i64*, !dbg !205
  %9 = load i64, i64* %8, align 8, !dbg !205, !tbaa !191
  %10 = sub i64 %7, %9, !dbg !206
  %11 = lshr exact i64 %10, 4, !dbg !206
  %12 = trunc i64 %11 to i32, !dbg !207
  br label %13, !dbg !208

; <label>:13:                                     ; preds = %1, %4
  %14 = phi i32 [ %12, %4 ], [ 0, %1 ]
  ret i32 %14, !dbg !209
}

; Function Attrs: nounwind readonly uwtable
define i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #2 !dbg !210 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_LineSegment2d* %0, i64 0, metadata !216, metadata !93), !dbg !217
  %2 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 2, !dbg !218
  %3 = load i32, i32* %2, align 8, !dbg !218, !tbaa !219
  %4 = icmp eq i32 %3, 0, !dbg !221
  br i1 %4, label %12, label %5, !dbg !222

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1, !dbg !223
  %7 = load %struct.LineSegment2d*, %struct.LineSegment2d** %6, align 8, !dbg !223, !tbaa !224
  %8 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 0, !dbg !225
  %9 = load %struct.LineSegment2d*, %struct.LineSegment2d** %8, align 8, !dbg !225, !tbaa !226
  %10 = icmp eq %struct.LineSegment2d* %7, %9, !dbg !227
  %11 = zext i1 %10 to i32, !dbg !222
  br label %12, !dbg !222

; <label>:12:                                     ; preds = %5, %1
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  ret i32 %13, !dbg !228
}

; Function Attrs: nounwind readonly uwtable
define i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #2 !dbg !229 {
  tail call void @llvm.dbg.value(metadata %struct.Vector_LineSegment2d* %0, i64 0, metadata !233, metadata !93), !dbg !234
  %2 = tail call i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* %0), !dbg !235
  %3 = icmp eq i32 %2, 0, !dbg !235
  br i1 %3, label %4, label %13, !dbg !237

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1, !dbg !238
  %6 = bitcast %struct.LineSegment2d** %5 to i64*, !dbg !238
  %7 = load i64, i64* %6, align 8, !dbg !238, !tbaa !224
  %8 = bitcast %struct.Vector_LineSegment2d* %0 to i64*, !dbg !239
  %9 = load i64, i64* %8, align 8, !dbg !239, !tbaa !226
  %10 = sub i64 %7, %9, !dbg !240
  %11 = lshr exact i64 %10, 6, !dbg !240
  %12 = trunc i64 %11 to i32, !dbg !241
  br label %13, !dbg !242

; <label>:13:                                     ; preds = %1, %4
  %14 = phi i32 [ %12, %4 ], [ 0, %1 ]
  ret i32 %14, !dbg !243
}

; Function Attrs: nounwind uwtable
define i32 @GetProjection(%struct.LaneInfo* readonly, %struct.Vec2d*, double*, double*) local_unnamed_addr #4 !dbg !244 {
  tail call void @llvm.dbg.value(metadata %struct.LaneInfo* %0, i64 0, metadata !250, metadata !93), !dbg !275
  tail call void @llvm.dbg.value(metadata %struct.Vec2d* %1, i64 0, metadata !251, metadata !93), !dbg !276
  tail call void @llvm.dbg.value(metadata double* %2, i64 0, metadata !252, metadata !93), !dbg !277
  tail call void @llvm.dbg.value(metadata double* %3, i64 0, metadata !253, metadata !93), !dbg !278
  %5 = icmp eq double* %2, null, !dbg !279
  %6 = icmp eq double* %3, null, !dbg !281
  %7 = or i1 %5, %6, !dbg !283
  %8 = icmp eq %struct.Vec2d* %1, null, !dbg !284
  %9 = or i1 %8, %7, !dbg !283
  %10 = icmp eq %struct.LaneInfo* %0, null, !dbg !286
  %11 = or i1 %10, %9, !dbg !283
  br i1 %11, label %112, label %12, !dbg !283

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 3, !dbg !288
  %14 = tail call i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* %13), !dbg !289
  %15 = icmp eq i32 %14, 0, !dbg !289
  br i1 %15, label %16, label %112, !dbg !290

; <label>:16:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata double 0x47D2CED32A16A1B1, i64 0, metadata !254, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !255, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !256, metadata !93), !dbg !293
  %17 = tail call i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* %13), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !257, metadata !93), !dbg !295
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !258, metadata !93), !dbg !296
  tail call void @llvm.dbg.value(metadata double 0x47D2CED32A16A1B1, i64 0, metadata !254, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !255, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !256, metadata !93), !dbg !293
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !258, metadata !93), !dbg !296
  %18 = icmp eq i32 %17, 0, !dbg !297
  %19 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %13, i64 0, i32 0
  %20 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !298
  br i1 %18, label %26, label %21, !dbg !304

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 1
  %24 = zext i32 %17 to i64, !dbg !304
  %25 = zext i32 %17 to i64
  br label %39, !dbg !304

; <label>:26:                                     ; preds = %82, %16
  %27 = phi double [ 0.000000e+00, %16 ], [ %83, %82 ]
  %28 = phi i32 [ 0, %16 ], [ %84, %82 ]
  %29 = phi double [ 0x47D2CED32A16A1B1, %16 ], [ %85, %82 ]
  %30 = phi %struct.LineSegment2d* [ %20, %16 ], [ %87, %82 ]
  %31 = zext i32 %28 to i64, !dbg !305
  %32 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, !dbg !305
  tail call void @llvm.dbg.value(metadata %struct.LineSegment2d* %32, i64 0, metadata !273, metadata !93), !dbg !306
  %33 = add i32 %28, 1, !dbg !307
  %34 = icmp ult i32 %33, %17, !dbg !309
  %35 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 0
  %36 = load double*, double** %35, align 8, !tbaa !310
  %37 = getelementptr inbounds double, double* %36, i64 %31
  %38 = load double, double* %37, align 8, !tbaa !122
  br i1 %34, label %89, label %93, !dbg !311

; <label>:39:                                     ; preds = %82, %21
  %40 = phi i64 [ 0, %21 ], [ %86, %82 ]
  %41 = phi %struct.LineSegment2d* [ %20, %21 ], [ %87, %82 ]
  %42 = phi double [ 0x47D2CED32A16A1B1, %21 ], [ %85, %82 ]
  %43 = phi i32 [ 0, %21 ], [ %84, %82 ]
  %44 = phi double [ 0.000000e+00, %21 ], [ %83, %82 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !258, metadata !93), !dbg !296
  tail call void @llvm.dbg.value(metadata double %44, i64 0, metadata !256, metadata !93), !dbg !293
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !255, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double %42, i64 0, metadata !254, metadata !93), !dbg !291
  %45 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %41, i64 %40, !dbg !312
  tail call void @llvm.dbg.value(metadata %struct.LineSegment2d* %45, i64 0, metadata !260, metadata !93), !dbg !313
  %46 = tail call double @DistanceTo(%struct.LineSegment2d* %45, %struct.Vec2d* nonnull %1) #7, !dbg !314
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !265, metadata !93), !dbg !315
  %47 = fcmp olt double %46, %42, !dbg !316
  br i1 %47, label %48, label %82, !dbg !317

; <label>:48:                                     ; preds = %39
  %49 = tail call double @ProjectOntoUnit(%struct.LineSegment2d* %45, %struct.Vec2d* nonnull %1) #7, !dbg !318
  tail call void @llvm.dbg.value(metadata double %49, i64 0, metadata !267, metadata !93), !dbg !319
  %50 = fcmp olt double %49, 0.000000e+00, !dbg !320
  %51 = icmp ne i64 %40, 0, !dbg !322
  %52 = and i1 %51, %50, !dbg !323
  br i1 %52, label %82, label %53, !dbg !323

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %41, i64 %40, i32 4, !dbg !324
  %55 = load double, double* %54, align 8, !dbg !324, !tbaa !325
  %56 = fcmp ogt double %49, %55, !dbg !328
  %57 = add nuw nsw i64 %40, 1, !dbg !329
  %58 = icmp ult i64 %57, %24, !dbg !330
  %59 = and i1 %58, %56, !dbg !331
  br i1 %59, label %60, label %80, !dbg !331

; <label>:60:                                     ; preds = %53
  %61 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !dbg !332, !tbaa !298
  %62 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %61, i64 %40, !dbg !333
  %63 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %62, i64 1, !dbg !334
  tail call void @llvm.dbg.value(metadata %struct.LineSegment2d* %63, i64 0, metadata !270, metadata !93), !dbg !335
  %64 = load double, double* %22, align 8, !dbg !336
  %65 = load double, double* %23, align 8, !dbg !336
  %66 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 0, i32 0, !dbg !336
  %67 = load double, double* %66, align 8, !dbg !336
  %68 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 0, i32 1, !dbg !336
  %69 = load double, double* %68, align 8, !dbg !336
  %70 = tail call { double, double } @Sub(double %64, double %65, double %67, double %69), !dbg !336
  %71 = extractvalue { double, double } %70, 0, !dbg !336
  %72 = extractvalue { double, double } %70, 1, !dbg !336
  %73 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 2, !dbg !338
  %74 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %73, i64 0, i32 0, !dbg !339
  %75 = load double, double* %74, align 8, !dbg !339
  %76 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %73, i64 0, i32 1, !dbg !339
  %77 = load double, double* %76, align 8, !dbg !339
  %78 = tail call double @InnerProd(double %71, double %72, double %75, double %77), !dbg !339
  %79 = fcmp ult double %78, 0.000000e+00, !dbg !340
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %60, %53
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !254, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !255, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double %49, i64 0, metadata !256, metadata !93), !dbg !293
  %81 = trunc i64 %40 to i32, !dbg !341
  br label %82, !dbg !341

; <label>:82:                                     ; preds = %80, %60, %48, %39
  %83 = phi double [ %44, %39 ], [ %49, %80 ], [ %44, %60 ], [ %44, %48 ]
  %84 = phi i32 [ %43, %39 ], [ %81, %80 ], [ %43, %60 ], [ %43, %48 ]
  %85 = phi double [ %42, %39 ], [ %46, %80 ], [ %42, %60 ], [ %42, %48 ]
  tail call void @llvm.dbg.value(metadata double %85, i64 0, metadata !254, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !255, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double %83, i64 0, metadata !256, metadata !93), !dbg !293
  %86 = add nuw nsw i64 %40, 1, !dbg !342
  tail call void @llvm.dbg.value(metadata double %85, i64 0, metadata !254, metadata !93), !dbg !291
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !255, metadata !93), !dbg !292
  tail call void @llvm.dbg.value(metadata double %83, i64 0, metadata !256, metadata !93), !dbg !293
  %87 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !298
  %88 = icmp eq i64 %86, %25, !dbg !297
  br i1 %88, label %26, label %39, !dbg !304, !llvm.loop !343

; <label>:89:                                     ; preds = %26
  %90 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, i32 4, !dbg !345
  %91 = load double, double* %90, align 8, !dbg !345, !tbaa !325
  %92 = tail call double @min_double(double %27, double %91), !dbg !347
  br label %93

; <label>:93:                                     ; preds = %26, %89
  %94 = phi double [ %92, %89 ], [ %27, %26 ]
  %95 = fadd double %38, %94
  store double %95, double* %2, align 8, !tbaa !122
  %96 = tail call double @ProductOntoUnit(%struct.LineSegment2d* %32, %struct.Vec2d* nonnull %1) #7, !dbg !348
  tail call void @llvm.dbg.value(metadata double %96, i64 0, metadata !274, metadata !93), !dbg !349
  %97 = icmp eq i32 %28, 0, !dbg !350
  %98 = fcmp olt double %27, 0.000000e+00, !dbg !352
  %99 = and i1 %98, %97, !dbg !353
  br i1 %99, label %110, label %100, !dbg !353

; <label>:100:                                    ; preds = %93
  %101 = icmp eq i32 %33, %17, !dbg !354
  br i1 %101, label %102, label %106, !dbg !355

; <label>:102:                                    ; preds = %100
  %103 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, i32 4, !dbg !356
  %104 = load double, double* %103, align 8, !dbg !356, !tbaa !325
  %105 = fcmp ogt double %27, %104, !dbg !357
  br i1 %105, label %110, label %106, !dbg !358

; <label>:106:                                    ; preds = %102, %100
  %107 = fcmp ogt double %96, 0.000000e+00, !dbg !359
  %108 = fsub double -0.000000e+00, %29, !dbg !361
  %109 = select i1 %107, double %29, double %108, !dbg !362
  br label %110

; <label>:110:                                    ; preds = %102, %93, %106
  %111 = phi double [ %109, %106 ], [ %96, %93 ], [ %96, %102 ]
  store double %111, double* %3, align 8, !tbaa !122
  br label %112

; <label>:112:                                    ; preds = %12, %4, %110
  %113 = phi i32 [ 1, %110 ], [ 0, %4 ], [ 0, %12 ]
  ret i32 %113, !dbg !363
}

declare double @DistanceTo(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #5

declare double @ProjectOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #5

declare double @ProductOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #5

; Function Attrs: nounwind readonly uwtable
define { double, double } @GetSmoothPoint(%struct.LaneInfo* nocapture readonly, double) local_unnamed_addr #2 !dbg !364 {
  tail call void @llvm.dbg.value(metadata %struct.LaneInfo* %0, i64 0, metadata !368, metadata !93), !dbg !376
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !369, metadata !93), !dbg !377
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !370, metadata !93), !dbg !378
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !370, metadata !139), !dbg !378
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !370, metadata !141), !dbg !378
  %3 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 1, !dbg !379
  %4 = tail call i32 @size_Vec2d(%struct.Vector_Vec2d* %3), !dbg !381
  %5 = icmp ult i32 %4, 2, !dbg !382
  br i1 %5, label %69, label %6, !dbg !383

; <label>:6:                                      ; preds = %2
  %7 = fcmp ugt double %1, 0.000000e+00, !dbg !384
  br i1 %7, label %15, label %8, !dbg !386

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i64 0, i32 0, !dbg !387
  %10 = load %struct.Vec2d*, %struct.Vec2d** %9, align 8, !dbg !387, !tbaa !389
  %11 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i64 0, i32 0, !dbg !390
  %12 = load double, double* %11, align 8, !dbg !390
  %13 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i64 0, i32 1, !dbg !390
  %14 = load double, double* %13, align 8, !dbg !390
  br label %69, !dbg !391

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 0, !dbg !392
  %17 = load double, double* %16, align 8, !dbg !392, !tbaa !394
  %18 = fcmp ugt double %17, %1, !dbg !395
  br i1 %18, label %26, label %19, !dbg !396

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 1, i32 1, !dbg !397
  %21 = load %struct.Vec2d*, %struct.Vec2d** %20, align 8, !dbg !397, !tbaa !399
  %22 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %21, i64 -1, i32 0, !dbg !400
  %23 = load double, double* %22, align 8, !dbg !400
  %24 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %21, i64 -1, i32 1, !dbg !400
  %25 = load double, double* %24, align 8, !dbg !400
  br label %69, !dbg !401

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 0, !dbg !402
  %28 = load double*, double** %27, align 8, !dbg !402, !tbaa !310
  %29 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 1, !dbg !403
  %30 = load double*, double** %29, align 8, !dbg !403, !tbaa !404
  %31 = tail call double* @lower_bound_double(double* %28, double* %30, double %1), !dbg !405
  tail call void @llvm.dbg.value(metadata double* %31, i64 0, metadata !371, metadata !93), !dbg !406
  %32 = icmp eq double* %31, %30, !dbg !407
  br i1 %32, label %69, label %33, !dbg !409

; <label>:33:                                     ; preds = %26
  %34 = bitcast double** %27 to i64*, !dbg !410
  %35 = load i64, i64* %34, align 8, !dbg !410, !tbaa !310
  %36 = ptrtoint double* %31 to i64, !dbg !411
  %37 = sub i64 %36, %35, !dbg !411
  %38 = lshr exact i64 %37, 3, !dbg !411
  %39 = load double, double* %31, align 8, !dbg !412, !tbaa !122
  %40 = fsub double %39, %1, !dbg !413
  tail call void @llvm.dbg.value(metadata double %40, i64 0, metadata !374, metadata !93), !dbg !414
  %41 = fcmp olt double %40, 1.000000e-08, !dbg !415
  %42 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i64 0, i32 0
  %43 = load %struct.Vec2d*, %struct.Vec2d** %42, align 8, !tbaa !389
  %44 = and i64 %38, 4294967295
  br i1 %41, label %45, label %50, !dbg !417

; <label>:45:                                     ; preds = %33
  %46 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 0, !dbg !418
  %47 = load double, double* %46, align 8, !dbg !418
  %48 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 1, !dbg !418
  %49 = load double, double* %48, align 8, !dbg !418
  br label %69, !dbg !420

; <label>:50:                                     ; preds = %33
  tail call void @llvm.dbg.declare(metadata %struct.Vec2d* undef, metadata !375, metadata !93), !dbg !421
  %51 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 2, i32 0, !dbg !422
  %52 = load %struct.Vec2d*, %struct.Vec2d** %51, align 8, !dbg !422, !tbaa !423
  %53 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %52, i64 %44, !dbg !424
  %54 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %53, i64 -1, !dbg !425
  %55 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %54, i64 0, i32 0, !dbg !426
  %56 = load double, double* %55, align 8, !dbg !426
  %57 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %54, i64 0, i32 1, !dbg !426
  %58 = load double, double* %57, align 8, !dbg !426
  %59 = tail call { double, double } @Mul(double %56, double %58, double %40), !dbg !426
  %60 = extractvalue { double, double } %59, 0, !dbg !426
  %61 = extractvalue { double, double } %59, 1, !dbg !426
  %62 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 0, !dbg !427
  %63 = load double, double* %62, align 8, !dbg !427
  %64 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 1, !dbg !427
  %65 = load double, double* %64, align 8, !dbg !427
  %66 = tail call { double, double } @Sub(double %63, double %65, double %60, double %61), !dbg !427
  %67 = extractvalue { double, double } %66, 0, !dbg !427
  tail call void @llvm.dbg.value(metadata double %67, i64 0, metadata !375, metadata !139), !dbg !421
  %68 = extractvalue { double, double } %66, 1, !dbg !427
  tail call void @llvm.dbg.value(metadata double %68, i64 0, metadata !375, metadata !141), !dbg !421
  br label %69

; <label>:69:                                     ; preds = %26, %50, %45, %2, %19, %8
  %70 = phi double [ %12, %8 ], [ %23, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ %47, %45 ], [ %67, %50 ]
  %71 = phi double [ %14, %8 ], [ %25, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ %49, %45 ], [ %68, %50 ]
  %72 = insertvalue { double, double } undef, double %70, 0, !dbg !428
  %73 = insertvalue { double, double } %72, double %71, 1, !dbg !428
  ret { double, double } %73, !dbg !428
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
  tail call void @llvm.dbg.value(metadata double %13, i64 0, metadata !515, metadata !139), !dbg !533
  %14 = extractvalue { double, double } %12, 1, !dbg !535
  tail call void @llvm.dbg.value(metadata double %14, i64 0, metadata !515, metadata !141), !dbg !533
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
  store double 0.000000e+00, double* %2, align 8, !dbg !554, !tbaa !122
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #7, !dbg !555
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !524, metadata !93), !dbg !556
  store double 0.000000e+00, double* %3, align 8, !dbg !556, !tbaa !122
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
  %42 = load double, double* %2, align 8, !dbg !565, !tbaa !122
  call void @llvm.dbg.value(metadata double %42, i64 0, metadata !523, metadata !93), !dbg !554
  %43 = fcmp olt double %42, -1.000000e+00, !dbg !567
  br i1 %43, label %51, label %44, !dbg !568

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %36, i64 0, i32 0, !dbg !569
  %46 = load double, double* %45, align 8, !dbg !569, !tbaa !394
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
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Type", file: !1, line: 108, size: 32, elements: !4)
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneWaypoint", file: !1, line: 235, size: 192, elements: !15)
!15 = !{!16, !81, !82}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "lane_", scope: !14, file: !1, line: 236, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneInfo", file: !1, line: 138, size: 1280, elements: !20)
!20 = !{!21, !23, !35, !36, !50, !57, !74}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "total_length_", scope: !19, file: !1, line: 139, baseType: !22, size: 64)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "points_", scope: !19, file: !1, line: 140, baseType: !24, size: 192, offset: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_Vec2d", file: !1, line: 64, size: 192, elements: !25)
!25 = !{!26, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !24, file: !1, line: 65, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec2d", file: !1, line: 41, size: 128, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "x_", scope: !28, file: !1, line: 42, baseType: !22, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "y_", scope: !28, file: !1, line: 43, baseType: !22, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !24, file: !1, line: 66, baseType: !27, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !24, file: !1, line: 67, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "unit_directions_", scope: !19, file: !1, line: 141, baseType: !24, size: 192, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "segments_", scope: !19, file: !1, line: 142, baseType: !37, size: 192, offset: 448)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_LineSegment2d", file: !1, line: 90, size: 192, elements: !38)
!38 = !{!39, !48, !49}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !37, file: !1, line: 91, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LineSegment2d", file: !1, line: 82, size: 512, elements: !42)
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "start_", scope: !41, file: !1, line: 83, baseType: !28, size: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !41, file: !1, line: 84, baseType: !28, size: 128, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "unit_direction_", scope: !41, file: !1, line: 85, baseType: !28, size: 128, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "heading_", scope: !41, file: !1, line: 86, baseType: !22, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "length_", scope: !41, file: !1, line: 87, baseType: !22, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !37, file: !1, line: 92, baseType: !40, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !37, file: !1, line: 93, baseType: !34, size: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "accumulated_s_", scope: !19, file: !1, line: 143, baseType: !51, size: 192, offset: 640)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_double", file: !1, line: 19, size: 192, elements: !52)
!52 = !{!53, !55, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !51, file: !1, line: 20, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !51, file: !1, line: 21, baseType: !54, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !51, file: !1, line: 22, baseType: !34, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "right_boundary", scope: !19, file: !1, line: 144, baseType: !58, size: 256, offset: 832)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneBoundary", file: !1, line: 130, size: 256, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !58, file: !1, line: 131, baseType: !22, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "boundary_type", scope: !58, file: !1, line: 132, baseType: !62, size: 192, offset: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_LaneBoundaryType", file: !1, line: 124, size: 192, elements: !63)
!63 = !{!64, !72, !73}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !62, file: !1, line: 125, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneBoundaryType", file: !1, line: 118, size: 192, elements: !67)
!67 = !{!68, !69, !71}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !66, file: !1, line: 119, baseType: !22, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !66, file: !1, line: 120, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "types_size", scope: !66, file: !1, line: 121, baseType: !34, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !62, file: !1, line: 126, baseType: !65, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !62, file: !1, line: 127, baseType: !34, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "right_neighbor_forward_lane_id", scope: !19, file: !1, line: 145, baseType: !75, size: 192, offset: 1088)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_int", file: !1, line: 10, size: 192, elements: !76)
!76 = !{!77, !79, !80}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !75, file: !1, line: 11, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !75, file: !1, line: 12, baseType: !78, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !75, file: !1, line: 13, baseType: !34, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !14, file: !1, line: 237, baseType: !22, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !14, file: !1, line: 238, baseType: !22, size: 64, offset: 128)
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
!99 = distinct !DISubprogram(name: "lower_bound_double", scope: !1, file: !1, line: 29, type: !100, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!54, !54, !54, !22}
!102 = !{!103, !104, !105, !106}
!103 = !DILocalVariable(name: "start", arg: 1, scope: !99, file: !1, line: 29, type: !54)
!104 = !DILocalVariable(name: "end", arg: 2, scope: !99, file: !1, line: 29, type: !54)
!105 = !DILocalVariable(name: "value", arg: 3, scope: !99, file: !1, line: 29, type: !22)
!106 = !DILocalVariable(name: "p", scope: !99, file: !1, line: 31, type: !54)
!107 = !DILocation(line: 29, column: 36, scope: !99)
!108 = !DILocation(line: 29, column: 51, scope: !99)
!109 = !DILocation(line: 29, column: 63, scope: !99)
!110 = !DILocation(line: 30, column: 8, scope: !111)
!111 = distinct !DILexicalBlock(scope: !99, file: !1, line: 30, column: 7)
!112 = !DILocation(line: 30, column: 18, scope: !111)
!113 = !DILocation(line: 30, column: 14, scope: !111)
!114 = !DILocation(line: 31, column: 11, scope: !99)
!115 = !DILocation(line: 32, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 32, column: 3)
!117 = distinct !DILexicalBlock(scope: !99, file: !1, line: 32, column: 3)
!118 = !DILocation(line: 32, column: 3, scope: !117)
!119 = !DILocation(line: 33, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 33, column: 9)
!121 = distinct !DILexicalBlock(scope: !116, file: !1, line: 32, column: 34)
!122 = !{!123, !123, i64 0}
!123 = !{!"double", !124, i64 0}
!124 = !{!"omnipotent char", !125, i64 0}
!125 = !{!"Simple C/C++ TBAA"}
!126 = !DILocation(line: 33, column: 12, scope: !120)
!127 = !DILocation(line: 33, column: 9, scope: !121)
!128 = !DILocation(line: 32, column: 29, scope: !116)
!129 = distinct !{!129, !118, !130}
!130 = !DILocation(line: 34, column: 3, scope: !117)
!131 = !DILocation(line: 36, column: 1, scope: !99)
!132 = distinct !DISubprogram(name: "InnerProd", scope: !1, file: !1, line: 46, type: !133, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !136)
!133 = !DISubroutineType(types: !134)
!134 = !{!22, !135, !135}
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!136 = !{!137, !138}
!137 = !DILocalVariable(name: "point1", arg: 1, scope: !132, file: !1, line: 46, type: !135)
!138 = !DILocalVariable(name: "point2", arg: 2, scope: !132, file: !1, line: 46, type: !135)
!139 = !DIExpression(DW_OP_LLVM_fragment, 0, 64)
!140 = !DILocation(line: 46, column: 37, scope: !132)
!141 = !DIExpression(DW_OP_LLVM_fragment, 64, 64)
!142 = !DILocation(line: 46, column: 64, scope: !132)
!143 = !DILocation(line: 47, column: 20, scope: !132)
!144 = !DILocation(line: 47, column: 44, scope: !132)
!145 = !DILocation(line: 47, column: 32, scope: !132)
!146 = !DILocation(line: 47, column: 3, scope: !132)
!147 = distinct !DISubprogram(name: "Sub", scope: !1, file: !1, line: 50, type: !148, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{!28, !135, !135}
!150 = !{!151, !152, !153}
!151 = !DILocalVariable(name: "point1", arg: 1, scope: !147, file: !1, line: 50, type: !135)
!152 = !DILocalVariable(name: "point2", arg: 2, scope: !147, file: !1, line: 50, type: !135)
!153 = !DILocalVariable(name: "result", scope: !147, file: !1, line: 51, type: !28)
!154 = !DILocation(line: 50, column: 37, scope: !147)
!155 = !DILocation(line: 50, column: 64, scope: !147)
!156 = !DILocation(line: 51, column: 16, scope: !147)
!157 = !DILocation(line: 52, column: 25, scope: !147)
!158 = !DILocation(line: 53, column: 25, scope: !147)
!159 = !DILocation(line: 55, column: 1, scope: !147)
!160 = distinct !DISubprogram(name: "Mul", scope: !1, file: !1, line: 57, type: !161, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{!28, !135, !22}
!163 = !{!164, !165, !166}
!164 = !DILocalVariable(name: "point1", arg: 1, scope: !160, file: !1, line: 57, type: !135)
!165 = !DILocalVariable(name: "c", arg: 2, scope: !160, file: !1, line: 57, type: !22)
!166 = !DILocalVariable(name: "result", scope: !160, file: !1, line: 58, type: !28)
!167 = !DILocation(line: 57, column: 37, scope: !160)
!168 = !DILocation(line: 57, column: 52, scope: !160)
!169 = !DILocation(line: 58, column: 16, scope: !160)
!170 = !DILocation(line: 59, column: 25, scope: !160)
!171 = !DILocation(line: 60, column: 25, scope: !160)
!172 = !DILocation(line: 62, column: 1, scope: !160)
!173 = distinct !DISubprogram(name: "empty_Vec2d", scope: !1, file: !1, line: 70, type: !174, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !178)
!174 = !DISubroutineType(types: !175)
!175 = !{!34, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!178 = !{!179}
!179 = !DILocalVariable(name: "vec", arg: 1, scope: !173, file: !1, line: 70, type: !176)
!180 = !DILocation(line: 70, column: 44, scope: !173)
!181 = !DILocation(line: 71, column: 15, scope: !173)
!182 = !{!183, !185, i64 16}
!183 = !{!"Vector_Vec2d", !184, i64 0, !184, i64 8, !185, i64 16}
!184 = !{!"any pointer", !124, i64 0}
!185 = !{!"int", !124, i64 0}
!186 = !DILocation(line: 71, column: 24, scope: !173)
!187 = !DILocation(line: 71, column: 29, scope: !173)
!188 = !DILocation(line: 71, column: 37, scope: !173)
!189 = !{!183, !184, i64 8}
!190 = !DILocation(line: 71, column: 49, scope: !173)
!191 = !{!183, !184, i64 0}
!192 = !DILocation(line: 71, column: 41, scope: !173)
!193 = !DILocation(line: 71, column: 3, scope: !173)
!194 = distinct !DISubprogram(name: "size_Vec2d", scope: !1, file: !1, line: 74, type: !195, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !198)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !176}
!197 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!198 = !{!199}
!199 = !DILocalVariable(name: "vec", arg: 1, scope: !194, file: !1, line: 74, type: !176)
!200 = !DILocation(line: 74, column: 48, scope: !194)
!201 = !DILocation(line: 75, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !1, line: 75, column: 7)
!203 = !DILocation(line: 75, column: 7, scope: !194)
!204 = !DILocation(line: 76, column: 15, scope: !194)
!205 = !DILocation(line: 76, column: 26, scope: !194)
!206 = !DILocation(line: 76, column: 19, scope: !194)
!207 = !DILocation(line: 76, column: 10, scope: !194)
!208 = !DILocation(line: 76, column: 3, scope: !194)
!209 = !DILocation(line: 77, column: 1, scope: !194)
!210 = distinct !DISubprogram(name: "empty_LineSegment2d", scope: !1, file: !1, line: 96, type: !211, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !215)
!211 = !DISubroutineType(types: !212)
!212 = !{!34, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!215 = !{!216}
!216 = !DILocalVariable(name: "vec", arg: 1, scope: !210, file: !1, line: 96, type: !213)
!217 = !DILocation(line: 96, column: 60, scope: !210)
!218 = !DILocation(line: 97, column: 15, scope: !210)
!219 = !{!220, !185, i64 16}
!220 = !{!"Vector_LineSegment2d", !184, i64 0, !184, i64 8, !185, i64 16}
!221 = !DILocation(line: 97, column: 24, scope: !210)
!222 = !DILocation(line: 97, column: 29, scope: !210)
!223 = !DILocation(line: 97, column: 37, scope: !210)
!224 = !{!220, !184, i64 8}
!225 = !DILocation(line: 97, column: 49, scope: !210)
!226 = !{!220, !184, i64 0}
!227 = !DILocation(line: 97, column: 41, scope: !210)
!228 = !DILocation(line: 97, column: 3, scope: !210)
!229 = distinct !DISubprogram(name: "size_LineSegment2d", scope: !1, file: !1, line: 100, type: !230, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!197, !213}
!232 = !{!233}
!233 = !DILocalVariable(name: "vec", arg: 1, scope: !229, file: !1, line: 100, type: !213)
!234 = !DILocation(line: 100, column: 64, scope: !229)
!235 = !DILocation(line: 101, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !229, file: !1, line: 101, column: 7)
!237 = !DILocation(line: 101, column: 7, scope: !229)
!238 = !DILocation(line: 102, column: 15, scope: !229)
!239 = !DILocation(line: 102, column: 26, scope: !229)
!240 = !DILocation(line: 102, column: 19, scope: !229)
!241 = !DILocation(line: 102, column: 10, scope: !229)
!242 = !DILocation(line: 102, column: 3, scope: !229)
!243 = !DILocation(line: 103, column: 1, scope: !229)
!244 = distinct !DISubprogram(name: "GetProjection", scope: !1, file: !1, line: 154, type: !245, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !249)
!245 = !DISubroutineType(types: !246)
!246 = !{!34, !247, !248, !54, !54}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !258, !260, !265, !267, !270, !273, !274}
!250 = !DILocalVariable(name: "lane", arg: 1, scope: !244, file: !1, line: 154, type: !247)
!251 = !DILocalVariable(name: "point", arg: 2, scope: !244, file: !1, line: 154, type: !248)
!252 = !DILocalVariable(name: "accumulate_s", arg: 3, scope: !244, file: !1, line: 154, type: !54)
!253 = !DILocalVariable(name: "lateral", arg: 4, scope: !244, file: !1, line: 154, type: !54)
!254 = !DILocalVariable(name: "min_distance", scope: !244, file: !1, line: 160, type: !22)
!255 = !DILocalVariable(name: "min_index", scope: !244, file: !1, line: 161, type: !197)
!256 = !DILocalVariable(name: "min_proj", scope: !244, file: !1, line: 162, type: !22)
!257 = !DILocalVariable(name: "num_segments", scope: !244, file: !1, line: 163, type: !197)
!258 = !DILocalVariable(name: "i", scope: !259, file: !1, line: 165, type: !197)
!259 = distinct !DILexicalBlock(scope: !244, file: !1, line: 165, column: 3)
!260 = !DILocalVariable(name: "segment", scope: !261, file: !1, line: 166, type: !263)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 165, column: 47)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 165, column: 3)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!265 = !DILocalVariable(name: "distance", scope: !261, file: !1, line: 167, type: !266)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!267 = !DILocalVariable(name: "proj", scope: !268, file: !1, line: 169, type: !266)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 168, column: 34)
!269 = distinct !DILexicalBlock(scope: !261, file: !1, line: 168, column: 9)
!270 = !DILocalVariable(name: "next_segment", scope: !271, file: !1, line: 174, type: !263)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 173, column: 60)
!272 = distinct !DILexicalBlock(scope: !268, file: !1, line: 173, column: 11)
!273 = !DILocalVariable(name: "segment", scope: !244, file: !1, line: 185, type: !263)
!274 = !DILocalVariable(name: "prod", scope: !244, file: !1, line: 192, type: !266)
!275 = !DILocation(line: 154, column: 36, scope: !244)
!276 = !DILocation(line: 154, column: 62, scope: !244)
!277 = !DILocation(line: 154, column: 77, scope: !244)
!278 = !DILocation(line: 154, column: 99, scope: !244)
!279 = !DILocation(line: 155, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !244, file: !1, line: 155, column: 7)
!281 = !DILocation(line: 156, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !244, file: !1, line: 156, column: 7)
!283 = !DILocation(line: 155, column: 7, scope: !244)
!284 = !DILocation(line: 157, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !244, file: !1, line: 157, column: 7)
!286 = !DILocation(line: 158, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !244, file: !1, line: 158, column: 7)
!288 = !DILocation(line: 158, column: 43, scope: !287)
!289 = !DILocation(line: 158, column: 16, scope: !287)
!290 = !DILocation(line: 158, column: 7, scope: !244)
!291 = !DILocation(line: 160, column: 10, scope: !244)
!292 = !DILocation(line: 161, column: 12, scope: !244)
!293 = !DILocation(line: 162, column: 10, scope: !244)
!294 = !DILocation(line: 163, column: 27, scope: !244)
!295 = !DILocation(line: 163, column: 12, scope: !244)
!296 = !DILocation(line: 165, column: 17, scope: !259)
!297 = !DILocation(line: 165, column: 26, scope: !262)
!298 = !{!299, !184, i64 56}
!299 = !{!"LaneInfo", !123, i64 0, !183, i64 8, !183, i64 32, !220, i64 56, !300, i64 80, !301, i64 104, !303, i64 136}
!300 = !{!"Vector_double", !184, i64 0, !184, i64 8, !185, i64 16}
!301 = !{!"LaneBoundary", !123, i64 0, !302, i64 8}
!302 = !{!"Vector_LaneBoundaryType", !184, i64 0, !184, i64 8, !185, i64 16}
!303 = !{!"Vector_int", !184, i64 0, !184, i64 8, !185, i64 16}
!304 = !DILocation(line: 165, column: 3, scope: !259)
!305 = !DILocation(line: 185, column: 63, scope: !244)
!306 = !DILocation(line: 185, column: 31, scope: !244)
!307 = !DILocation(line: 186, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !244, file: !1, line: 186, column: 7)
!309 = !DILocation(line: 186, column: 21, scope: !308)
!310 = !{!299, !184, i64 80}
!311 = !DILocation(line: 186, column: 7, scope: !244)
!312 = !DILocation(line: 166, column: 65, scope: !261)
!313 = !DILocation(line: 166, column: 33, scope: !261)
!314 = !DILocation(line: 167, column: 29, scope: !261)
!315 = !DILocation(line: 167, column: 18, scope: !261)
!316 = !DILocation(line: 168, column: 18, scope: !269)
!317 = !DILocation(line: 168, column: 9, scope: !261)
!318 = !DILocation(line: 169, column: 27, scope: !268)
!319 = !DILocation(line: 169, column: 20, scope: !268)
!320 = !DILocation(line: 170, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !268, file: !1, line: 170, column: 11)
!322 = !DILocation(line: 170, column: 27, scope: !321)
!323 = !DILocation(line: 170, column: 22, scope: !321)
!324 = !DILocation(line: 173, column: 27, scope: !272)
!325 = !{!326, !123, i64 56}
!326 = !{!"LineSegment2d", !327, i64 0, !327, i64 16, !327, i64 32, !123, i64 48, !123, i64 56}
!327 = !{!"Vec2d", !123, i64 0, !123, i64 8}
!328 = !DILocation(line: 173, column: 16, scope: !272)
!329 = !DILocation(line: 173, column: 40, scope: !272)
!330 = !DILocation(line: 173, column: 44, scope: !272)
!331 = !DILocation(line: 173, column: 35, scope: !272)
!332 = !DILocation(line: 174, column: 68, scope: !271)
!333 = !DILocation(line: 174, column: 74, scope: !271)
!334 = !DILocation(line: 174, column: 78, scope: !271)
!335 = !DILocation(line: 174, column: 37, scope: !271)
!336 = !DILocation(line: 175, column: 23, scope: !337)
!337 = distinct !DILexicalBlock(scope: !271, file: !1, line: 175, column: 13)
!338 = !DILocation(line: 175, column: 72, scope: !337)
!339 = !DILocation(line: 175, column: 13, scope: !337)
!340 = !DILocation(line: 175, column: 89, scope: !337)
!341 = !DILocation(line: 182, column: 5, scope: !269)
!342 = !DILocation(line: 165, column: 42, scope: !262)
!343 = distinct !{!343, !304, !344}
!344 = !DILocation(line: 183, column: 3, scope: !259)
!345 = !DILocation(line: 190, column: 83, scope: !346)
!346 = distinct !DILexicalBlock(scope: !308, file: !1, line: 188, column: 10)
!347 = !DILocation(line: 190, column: 53, scope: !346)
!348 = !DILocation(line: 192, column: 23, scope: !244)
!349 = !DILocation(line: 192, column: 16, scope: !244)
!350 = !DILocation(line: 193, column: 18, scope: !351)
!351 = distinct !DILexicalBlock(scope: !244, file: !1, line: 193, column: 7)
!352 = !DILocation(line: 193, column: 35, scope: !351)
!353 = !DILocation(line: 193, column: 23, scope: !351)
!354 = !DILocation(line: 194, column: 22, scope: !351)
!355 = !DILocation(line: 194, column: 38, scope: !351)
!356 = !DILocation(line: 194, column: 61, scope: !351)
!357 = !DILocation(line: 194, column: 50, scope: !351)
!358 = !DILocation(line: 193, column: 7, scope: !244)
!359 = !DILocation(line: 197, column: 22, scope: !360)
!360 = distinct !DILexicalBlock(scope: !351, file: !1, line: 196, column: 10)
!361 = !DILocation(line: 197, column: 45, scope: !360)
!362 = !DILocation(line: 197, column: 17, scope: !360)
!363 = !DILocation(line: 201, column: 1, scope: !244)
!364 = distinct !DISubprogram(name: "GetSmoothPoint", scope: !1, file: !1, line: 203, type: !365, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!28, !17, !22}
!367 = !{!368, !369, !370, !371, !373, !374, !375}
!368 = !DILocalVariable(name: "lane", arg: 1, scope: !364, file: !1, line: 203, type: !17)
!369 = !DILocalVariable(name: "s", arg: 2, scope: !364, file: !1, line: 203, type: !22)
!370 = !DILocalVariable(name: "point", scope: !364, file: !1, line: 204, type: !28)
!371 = !DILocalVariable(name: "low_itr", scope: !364, file: !1, line: 217, type: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!373 = !DILocalVariable(name: "index", scope: !364, file: !1, line: 221, type: !197)
!374 = !DILocalVariable(name: "delta_s", scope: !364, file: !1, line: 222, type: !22)
!375 = !DILocalVariable(name: "smooth_point", scope: !364, file: !1, line: 227, type: !28)
!376 = !DILocation(line: 203, column: 52, scope: !364)
!377 = !DILocation(line: 203, column: 65, scope: !364)
!378 = !DILocation(line: 204, column: 16, scope: !364)
!379 = !DILocation(line: 206, column: 25, scope: !380)
!380 = distinct !DILexicalBlock(scope: !364, file: !1, line: 206, column: 7)
!381 = !DILocation(line: 206, column: 7, scope: !380)
!382 = !DILocation(line: 206, column: 34, scope: !380)
!383 = !DILocation(line: 206, column: 7, scope: !364)
!384 = !DILocation(line: 209, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !364, file: !1, line: 209, column: 7)
!386 = !DILocation(line: 209, column: 7, scope: !364)
!387 = !DILocation(line: 210, column: 27, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !1, line: 209, column: 17)
!389 = !{!299, !184, i64 8}
!390 = !DILocation(line: 210, column: 12, scope: !388)
!391 = !DILocation(line: 210, column: 5, scope: !388)
!392 = !DILocation(line: 213, column: 18, scope: !393)
!393 = distinct !DILexicalBlock(scope: !364, file: !1, line: 213, column: 7)
!394 = !{!299, !123, i64 0}
!395 = !DILocation(line: 213, column: 9, scope: !393)
!396 = !DILocation(line: 213, column: 7, scope: !364)
!397 = !DILocation(line: 214, column: 28, scope: !398)
!398 = distinct !DILexicalBlock(scope: !393, file: !1, line: 213, column: 33)
!399 = !{!299, !184, i64 16}
!400 = !DILocation(line: 214, column: 12, scope: !398)
!401 = !DILocation(line: 214, column: 5, scope: !398)
!402 = !DILocation(line: 217, column: 67, scope: !364)
!403 = !DILocation(line: 217, column: 95, scope: !364)
!404 = !{!299, !184, i64 88}
!405 = !DILocation(line: 217, column: 27, scope: !364)
!406 = !DILocation(line: 217, column: 17, scope: !364)
!407 = !DILocation(line: 218, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !364, file: !1, line: 218, column: 7)
!409 = !DILocation(line: 218, column: 7, scope: !364)
!410 = !DILocation(line: 221, column: 51, scope: !364)
!411 = !DILocation(line: 221, column: 28, scope: !364)
!412 = !DILocation(line: 222, column: 20, scope: !364)
!413 = !DILocation(line: 222, column: 29, scope: !364)
!414 = !DILocation(line: 222, column: 10, scope: !364)
!415 = !DILocation(line: 223, column: 15, scope: !416)
!416 = distinct !DILexicalBlock(scope: !364, file: !1, line: 223, column: 7)
!417 = !DILocation(line: 223, column: 7, scope: !364)
!418 = !DILocation(line: 224, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 223, column: 31)
!420 = !DILocation(line: 224, column: 5, scope: !419)
!421 = !DILocation(line: 227, column: 16, scope: !364)
!422 = !DILocation(line: 227, column: 97, scope: !364)
!423 = !{!299, !184, i64 32}
!424 = !DILocation(line: 227, column: 103, scope: !364)
!425 = !DILocation(line: 227, column: 111, scope: !364)
!426 = !DILocation(line: 227, column: 68, scope: !364)
!427 = !DILocation(line: 227, column: 31, scope: !364)
!428 = !DILocation(line: 230, column: 1, scope: !364)
!429 = distinct !DISubprogram(name: "LaneWaypoint1", scope: !1, file: !1, line: 241, type: !430, isLocal: false, isDefinition: true, scopeLine: 241, isOptimized: true, unit: !0, variables: !431)
!430 = !DISubroutineType(types: !12)
!431 = !{!432}
!432 = !DILocalVariable(name: "newlane", scope: !429, file: !1, line: 242, type: !13)
!433 = !DILocation(line: 242, column: 56, scope: !429)
!434 = !DILocation(line: 242, column: 34, scope: !429)
!435 = !DILocation(line: 242, column: 24, scope: !429)
!436 = !DILocation(line: 244, column: 14, scope: !429)
!437 = !DILocation(line: 246, column: 3, scope: !429)
!438 = distinct !DISubprogram(name: "LaneWaypoint2", scope: !1, file: !1, line: 249, type: !439, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!13, !17, !266}
!441 = !{!442, !443, !444}
!442 = !DILocalVariable(name: "lane", arg: 1, scope: !438, file: !1, line: 249, type: !17)
!443 = !DILocalVariable(name: "s", arg: 2, scope: !438, file: !1, line: 249, type: !266)
!444 = !DILocalVariable(name: "newlane", scope: !438, file: !1, line: 250, type: !13)
!445 = !DILocation(line: 249, column: 59, scope: !438)
!446 = !DILocation(line: 249, column: 78, scope: !438)
!447 = !DILocation(line: 250, column: 56, scope: !438)
!448 = !DILocation(line: 250, column: 34, scope: !438)
!449 = !DILocation(line: 250, column: 24, scope: !438)
!450 = !DILocation(line: 251, column: 12, scope: !438)
!451 = !DILocation(line: 251, column: 18, scope: !438)
!452 = !{!453, !184, i64 0}
!453 = !{!"LaneWaypoint", !184, i64 0, !123, i64 8, !123, i64 16}
!454 = !DILocation(line: 252, column: 12, scope: !438)
!455 = !DILocation(line: 252, column: 14, scope: !438)
!456 = !{!453, !123, i64 8}
!457 = !DILocation(line: 253, column: 12, scope: !438)
!458 = !DILocation(line: 253, column: 14, scope: !438)
!459 = !{!453, !123, i64 16}
!460 = !DILocation(line: 254, column: 3, scope: !438)
!461 = distinct !DISubprogram(name: "RightBoundaryType", scope: !1, file: !1, line: 257, type: !462, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !466)
!462 = !DISubroutineType(types: !463)
!463 = !{!3, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!466 = !{!467, !468}
!467 = !DILocalVariable(name: "waypoint", arg: 1, scope: !461, file: !1, line: 257, type: !464)
!468 = !DILocalVariable(name: "type", scope: !469, file: !1, line: 261, type: !470)
!469 = distinct !DILexicalBlock(scope: !461, file: !1, line: 261, column: 3)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!472 = !DILocation(line: 257, column: 56, scope: !461)
!473 = !DILocation(line: 258, column: 18, scope: !474)
!474 = distinct !DILexicalBlock(scope: !461, file: !1, line: 258, column: 7)
!475 = !DILocation(line: 258, column: 8, scope: !474)
!476 = !DILocation(line: 258, column: 7, scope: !461)
!477 = !DILocation(line: 261, column: 92, scope: !469)
!478 = !{!299, !184, i64 112}
!479 = !DILocation(line: 261, column: 39, scope: !469)
!480 = !DILocation(line: 262, column: 62, scope: !481)
!481 = distinct !DILexicalBlock(scope: !469, file: !1, line: 261, column: 3)
!482 = !{!299, !184, i64 120}
!483 = !DILocation(line: 262, column: 13, scope: !481)
!484 = !DILocation(line: 261, column: 3, scope: !469)
!485 = !DILocation(line: 263, column: 15, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 263, column: 9)
!487 = distinct !DILexicalBlock(scope: !481, file: !1, line: 262, column: 75)
!488 = !{!489, !123, i64 0}
!489 = !{!"LaneBoundaryType", !123, i64 0, !184, i64 8, !185, i64 16}
!490 = !DILocation(line: 263, column: 17, scope: !486)
!491 = !DILocation(line: 263, column: 9, scope: !487)
!492 = !DILocation(line: 264, column: 17, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 264, column: 11)
!494 = distinct !DILexicalBlock(scope: !486, file: !1, line: 263, column: 33)
!495 = !{!489, !185, i64 16}
!496 = !DILocation(line: 264, column: 28, scope: !493)
!497 = !DILocation(line: 264, column: 32, scope: !493)
!498 = !DILocation(line: 264, column: 41, scope: !493)
!499 = !{!489, !184, i64 8}
!500 = !DILocation(line: 264, column: 35, scope: !493)
!501 = !DILocation(line: 264, column: 11, scope: !494)
!502 = !DILocation(line: 265, column: 16, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !1, line: 264, column: 48)
!504 = !{!124, !124, i64 0}
!505 = !DILocation(line: 265, column: 9, scope: !503)
!506 = !DILocation(line: 262, column: 67, scope: !481)
!507 = distinct !{!507, !484, !508}
!508 = !DILocation(line: 270, column: 3, scope: !469)
!509 = distinct !DISubprogram(name: "RightNeighborWaypoint", scope: !1, file: !1, line: 274, type: !510, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!13, !464}
!512 = !{!513, !514, !515, !516, !520, !523, !524, !525}
!513 = !DILocalVariable(name: "waypoint", arg: 1, scope: !509, file: !1, line: 274, type: !464)
!514 = !DILocalVariable(name: "neighbor", scope: !509, file: !1, line: 275, type: !13)
!515 = !DILocalVariable(name: "point", scope: !509, file: !1, line: 279, type: !28)
!516 = !DILocalVariable(name: "lane_id", scope: !517, file: !1, line: 280, type: !518)
!517 = distinct !DILexicalBlock(scope: !509, file: !1, line: 280, column: 3)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!520 = !DILocalVariable(name: "lane", scope: !521, file: !1, line: 282, type: !247)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 281, column: 83)
!522 = distinct !DILexicalBlock(scope: !517, file: !1, line: 280, column: 3)
!523 = !DILocalVariable(name: "s", scope: !521, file: !1, line: 286, type: !22)
!524 = !DILocalVariable(name: "l", scope: !521, file: !1, line: 287, type: !22)
!525 = !DILocalVariable(name: "point2", scope: !521, file: !1, line: 288, type: !28)
!526 = !DILocation(line: 274, column: 71, scope: !509)
!527 = !DILocation(line: 275, column: 35, scope: !509)
!528 = !DILocation(line: 275, column: 24, scope: !509)
!529 = !DILocation(line: 276, column: 18, scope: !530)
!530 = distinct !DILexicalBlock(scope: !509, file: !1, line: 276, column: 7)
!531 = !DILocation(line: 276, column: 8, scope: !530)
!532 = !DILocation(line: 276, column: 7, scope: !509)
!533 = !DILocation(line: 279, column: 16, scope: !509)
!534 = !DILocation(line: 279, column: 66, scope: !509)
!535 = !DILocation(line: 279, column: 24, scope: !509)
!536 = !DILocation(line: 280, column: 77, scope: !517)
!537 = !{!299, !184, i64 136}
!538 = !DILocation(line: 280, column: 19, scope: !517)
!539 = !DILocation(line: 281, column: 29, scope: !522)
!540 = !DILocation(line: 281, column: 67, scope: !522)
!541 = !{!299, !184, i64 144}
!542 = !DILocation(line: 281, column: 16, scope: !522)
!543 = !DILocation(line: 280, column: 3, scope: !517)
!544 = distinct !{!544, !543, !545}
!545 = !DILocation(line: 297, column: 3, scope: !517)
!546 = !DILocation(line: 282, column: 41, scope: !521)
!547 = !{!185, !185, i64 0}
!548 = !DILocation(line: 282, column: 29, scope: !521)
!549 = !DILocation(line: 282, column: 22, scope: !521)
!550 = !DILocation(line: 283, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !521, file: !1, line: 283, column: 9)
!552 = !DILocation(line: 283, column: 9, scope: !521)
!553 = !DILocation(line: 286, column: 5, scope: !521)
!554 = !DILocation(line: 286, column: 12, scope: !521)
!555 = !DILocation(line: 287, column: 5, scope: !521)
!556 = !DILocation(line: 287, column: 12, scope: !521)
!557 = !DILocation(line: 288, column: 5, scope: !521)
!558 = !DILocation(line: 288, column: 27, scope: !521)
!559 = !{!327, !123, i64 0}
!560 = !{!327, !123, i64 8}
!561 = !DILocation(line: 288, column: 18, scope: !521)
!562 = !DILocation(line: 289, column: 10, scope: !563)
!563 = distinct !DILexicalBlock(scope: !521, file: !1, line: 289, column: 9)
!564 = !DILocation(line: 289, column: 9, scope: !521)
!565 = !DILocation(line: 292, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !521, file: !1, line: 292, column: 9)
!567 = !DILocation(line: 292, column: 11, scope: !566)
!568 = !DILocation(line: 292, column: 30, scope: !566)
!569 = !DILocation(line: 292, column: 43, scope: !566)
!570 = !DILocation(line: 292, column: 57, scope: !566)
!571 = !DILocation(line: 292, column: 35, scope: !566)
!572 = !DILocation(line: 292, column: 9, scope: !521)
!573 = !DILocation(line: 295, column: 14, scope: !574)
!574 = distinct !DILexicalBlock(scope: !566, file: !1, line: 294, column: 12)
!575 = !DILocation(line: 295, column: 7, scope: !574)
!576 = !DILocation(line: 297, column: 3, scope: !522)
!577 = !DILocation(line: 281, column: 72, scope: !522)
!578 = !DILocation(line: 299, column: 1, scope: !509)
