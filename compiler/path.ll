; ModuleID = 'path.c'
source_filename = "path.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Vector_Vec2d = type { %struct.Vec2d*, %struct.Vec2d*, i32 }
%struct.Vec2d = type { double, double }
%struct.Vector_LineSegment2d = type { %struct.LineSegment2d*, %struct.LineSegment2d*, i32 }
%struct.LineSegment2d = type { %struct.Vec2d, %struct.Vec2d, %struct.Vec2d, double, double }
%struct.LaneInfo = type { double, %struct.Vector_Vec2d, %struct.Vector_Vec2d, %struct.Vector_LineSegment2d, %struct.Vector_double, %struct.LaneBoundary, %struct.Vector_int }
%struct.Vector_double = type { double*, double*, i32 }
%struct.LaneBoundary = type { double, %struct.Vector_LaneBoundaryType }
%struct.Vector_LaneBoundaryType = type { %struct.LaneBoundaryType*, %struct.LaneBoundaryType*, i32 }
%struct.LaneBoundaryType = type { double, i32*, i32 }
%struct.Vector_int = type { i32*, i32*, i32 }
%struct.LaneWaypoint = type { %struct.LaneInfo*, double, double }

; Function Attrs: norecurse nounwind readnone ssp uwtable
define double @min_double(double, double) local_unnamed_addr #0 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define double* @lower_bound_double(double* readonly, double* readnone, double) local_unnamed_addr #1 {
  %4 = icmp eq double* %0, %1
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %10
  %7 = phi double* [ %11, %10 ], [ %0, %5 ]
  %8 = load double, double* %7, align 8, !tbaa !3
  %9 = fcmp ult double %8, %2
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds double, double* %7, i64 1
  %12 = icmp eq double* %11, %1
  br i1 %12, label %13, label %6

; <label>:13:                                     ; preds = %10, %6, %3
  %14 = phi double* [ %0, %3 ], [ %7, %6 ], [ %11, %10 ]
  ret double* %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: norecurse nounwind readnone ssp uwtable
define double @InnerProd(double, double, double, double) local_unnamed_addr #0 {
  %5 = fmul double %0, %2
  %6 = fmul double %1, %3
  %7 = fadd double %5, %6
  ret double %7
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define { double, double } @Sub(double, double, double, double) local_unnamed_addr #0 {
  %5 = fsub double %0, %2
  %6 = fsub double %1, %3
  %7 = insertvalue { double, double } undef, double %5, 0
  %8 = insertvalue { double, double } %7, double %6, 1
  ret { double, double } %8
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define { double, double } @Mul(double, double, double) local_unnamed_addr #0 {
  %4 = fmul double %0, %2
  %5 = fmul double %1, %2
  %6 = insertvalue { double, double } undef, double %4, 0
  %7 = insertvalue { double, double } %6, double %5, 1
  ret { double, double } %7
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @empty_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 8, !tbaa !7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1
  %7 = load %struct.Vec2d*, %struct.Vec2d** %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 0
  %9 = load %struct.Vec2d*, %struct.Vec2d** %8, align 8, !tbaa !12
  %10 = icmp eq %struct.Vec2d* %7, %9
  %11 = zext i1 %10 to i32
  br label %12

; <label>:12:                                     ; preds = %5, %1
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @size_Vec2d(%struct.Vector_Vec2d* nocapture readonly) local_unnamed_addr #1 {
  %2 = tail call i32 @empty_Vec2d(%struct.Vector_Vec2d* %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %0, i64 0, i32 1
  %6 = bitcast %struct.Vec2d** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !11
  %8 = bitcast %struct.Vector_Vec2d* %0 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !12
  %10 = sub i64 %7, %9
  %11 = lshr exact i64 %10, 4
  %12 = trunc i64 %11 to i32
  br label %13

; <label>:13:                                     ; preds = %1, %4
  %14 = phi i32 [ %12, %4 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 8, !tbaa !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1
  %7 = load %struct.LineSegment2d*, %struct.LineSegment2d** %6, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 0
  %9 = load %struct.LineSegment2d*, %struct.LineSegment2d** %8, align 8, !tbaa !16
  %10 = icmp eq %struct.LineSegment2d* %7, %9
  %11 = zext i1 %10 to i32
  br label %12

; <label>:12:                                     ; preds = %5, %1
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* nocapture readonly) local_unnamed_addr #1 {
  %2 = tail call i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %0, i64 0, i32 1
  %6 = bitcast %struct.LineSegment2d** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !15
  %8 = bitcast %struct.Vector_LineSegment2d* %0 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !16
  %10 = sub i64 %7, %9
  %11 = lshr exact i64 %10, 6
  %12 = trunc i64 %11 to i32
  br label %13

; <label>:13:                                     ; preds = %1, %4
  %14 = phi i32 [ %12, %4 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind ssp uwtable
define i32 @GetProjection(%struct.LaneInfo* readonly, %struct.Vec2d*, double*, double*) local_unnamed_addr #3 {
  %5 = icmp eq double* %2, null
  %6 = icmp eq double* %3, null
  %7 = or i1 %5, %6
  %8 = icmp eq %struct.Vec2d* %1, null
  %9 = or i1 %8, %7
  %10 = icmp eq %struct.LaneInfo* %0, null
  %11 = or i1 %10, %9
  br i1 %11, label %112, label %12

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 3
  %14 = tail call i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* nonnull %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %112

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* nonnull %13)
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %13, i64 0, i32 0
  %20 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !17
  br i1 %18, label %26, label %21

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 0
  %23 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %1, i64 0, i32 1
  %24 = zext i32 %17 to i64
  %25 = zext i32 %17 to i64
  br label %39

; <label>:26:                                     ; preds = %82, %16
  %27 = phi double [ 0.000000e+00, %16 ], [ %83, %82 ]
  %28 = phi i32 [ 0, %16 ], [ %84, %82 ]
  %29 = phi double [ 0x47D2CED32A16A1B1, %16 ], [ %85, %82 ]
  %30 = phi %struct.LineSegment2d* [ %20, %16 ], [ %87, %82 ]
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31
  %33 = add i32 %28, 1
  %34 = icmp ult i32 %33, %17
  %35 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 0
  %36 = load double*, double** %35, align 8, !tbaa !23
  %37 = getelementptr inbounds double, double* %36, i64 %31
  %38 = load double, double* %37, align 8, !tbaa !3
  br i1 %34, label %89, label %93

; <label>:39:                                     ; preds = %82, %21
  %40 = phi i64 [ 0, %21 ], [ %86, %82 ]
  %41 = phi %struct.LineSegment2d* [ %20, %21 ], [ %87, %82 ]
  %42 = phi double [ 0x47D2CED32A16A1B1, %21 ], [ %85, %82 ]
  %43 = phi i32 [ 0, %21 ], [ %84, %82 ]
  %44 = phi double [ 0.000000e+00, %21 ], [ %83, %82 ]
  %45 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %41, i64 %40
  %46 = tail call double @DistanceTo(%struct.LineSegment2d* %45, %struct.Vec2d* nonnull %1) #6
  %47 = fcmp olt double %46, %42
  br i1 %47, label %48, label %82

; <label>:48:                                     ; preds = %39
  %49 = tail call double @ProjectOntoUnit(%struct.LineSegment2d* %45, %struct.Vec2d* nonnull %1) #6
  %50 = fcmp olt double %49, 0.000000e+00
  %51 = icmp ne i64 %40, 0
  %52 = and i1 %51, %50
  br i1 %52, label %82, label %53

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %41, i64 %40, i32 4
  %55 = load double, double* %54, align 8, !tbaa !24
  %56 = fcmp ogt double %49, %55
  %57 = add nuw nsw i64 %40, 1
  %58 = icmp ult i64 %57, %24
  %59 = and i1 %58, %56
  br i1 %59, label %60, label %80

; <label>:60:                                     ; preds = %53
  %61 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !17
  %62 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %61, i64 %40
  %63 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %62, i64 1
  %64 = load double, double* %22, align 8
  %65 = load double, double* %23, align 8
  %66 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = tail call { double, double } @Sub(double %64, double %65, double %67, double %69)
  %71 = extractvalue { double, double } %70, 0
  %72 = extractvalue { double, double } %70, 1
  %73 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %63, i64 0, i32 2
  %74 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %73, i64 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %73, i64 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = tail call double @InnerProd(double %71, double %72, double %75, double %77)
  %79 = fcmp ult double %78, 0.000000e+00
  br i1 %79, label %80, label %82

; <label>:80:                                     ; preds = %60, %53
  %81 = trunc i64 %40 to i32
  br label %82

; <label>:82:                                     ; preds = %80, %60, %48, %39
  %83 = phi double [ %44, %39 ], [ %49, %80 ], [ %44, %60 ], [ %44, %48 ]
  %84 = phi i32 [ %43, %39 ], [ %81, %80 ], [ %43, %60 ], [ %43, %48 ]
  %85 = phi double [ %42, %39 ], [ %46, %80 ], [ %42, %60 ], [ %42, %48 ]
  %86 = add nuw nsw i64 %40, 1
  %87 = load %struct.LineSegment2d*, %struct.LineSegment2d** %19, align 8, !tbaa !17
  %88 = icmp eq i64 %86, %25
  br i1 %88, label %26, label %39

; <label>:89:                                     ; preds = %26
  %90 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, i32 4
  %91 = load double, double* %90, align 8, !tbaa !24
  %92 = tail call double @min_double(double %27, double %91)
  br label %93

; <label>:93:                                     ; preds = %26, %89
  %94 = phi double [ %92, %89 ], [ %27, %26 ]
  %95 = fadd double %38, %94
  store double %95, double* %2, align 8, !tbaa !3
  %96 = tail call double @ProductOntoUnit(%struct.LineSegment2d* %32, %struct.Vec2d* nonnull %1) #6
  %97 = icmp eq i32 %28, 0
  %98 = fcmp olt double %27, 0.000000e+00
  %99 = and i1 %98, %97
  br i1 %99, label %110, label %100

; <label>:100:                                    ; preds = %93
  %101 = icmp eq i32 %33, %17
  br i1 %101, label %102, label %106

; <label>:102:                                    ; preds = %100
  %103 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %30, i64 %31, i32 4
  %104 = load double, double* %103, align 8, !tbaa !24
  %105 = fcmp ogt double %27, %104
  br i1 %105, label %110, label %106

; <label>:106:                                    ; preds = %102, %100
  %107 = fcmp ogt double %96, 0.000000e+00
  %108 = fsub double -0.000000e+00, %29
  %109 = select i1 %107, double %29, double %108
  br label %110

; <label>:110:                                    ; preds = %102, %93, %106
  %111 = phi double [ %109, %106 ], [ %96, %93 ], [ %96, %102 ]
  store double %111, double* %3, align 8, !tbaa !3
  br label %112

; <label>:112:                                    ; preds = %12, %4, %110
  %113 = phi i32 [ 1, %110 ], [ 0, %4 ], [ 0, %12 ]
  ret i32 %113
}

declare double @DistanceTo(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #4

declare double @ProjectOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #4

declare double @ProductOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readonly ssp uwtable
define { double, double } @GetSmoothPoint(%struct.LaneInfo* nocapture readonly, double) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 1
  %4 = tail call i32 @size_Vec2d(%struct.Vector_Vec2d* nonnull %3)
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %69, label %6

; <label>:6:                                      ; preds = %2
  %7 = fcmp ugt double %1, 0.000000e+00
  br i1 %7, label %15, label %8

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i64 0, i32 0
  %10 = load %struct.Vec2d*, %struct.Vec2d** %9, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i64 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i64 0, i32 1
  %14 = load double, double* %13, align 8
  br label %69

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 0
  %17 = load double, double* %16, align 8, !tbaa !28
  %18 = fcmp ugt double %17, %1
  br i1 %18, label %26, label %19

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 1, i32 1
  %21 = load %struct.Vec2d*, %struct.Vec2d** %20, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %21, i64 -1, i32 0
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %21, i64 -1, i32 1
  %25 = load double, double* %24, align 8
  br label %69

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 0
  %28 = load double*, double** %27, align 8, !tbaa !23
  %29 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 4, i32 1
  %30 = load double*, double** %29, align 8, !tbaa !30
  %31 = tail call double* @lower_bound_double(double* %28, double* %30, double %1)
  %32 = icmp eq double* %31, %30
  br i1 %32, label %69, label %33

; <label>:33:                                     ; preds = %26
  %34 = bitcast double** %27 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !23
  %36 = ptrtoint double* %31 to i64
  %37 = sub i64 %36, %35
  %38 = lshr exact i64 %37, 3
  %39 = load double, double* %31, align 8, !tbaa !3
  %40 = fsub double %39, %1
  %41 = fcmp olt double %40, 1.000000e-08
  %42 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i64 0, i32 0
  %43 = load %struct.Vec2d*, %struct.Vec2d** %42, align 8, !tbaa !27
  %44 = and i64 %38, 4294967295
  br i1 %41, label %45, label %50

; <label>:45:                                     ; preds = %33
  %46 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 0
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 1
  %49 = load double, double* %48, align 8
  br label %69

; <label>:50:                                     ; preds = %33
  %51 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %0, i64 0, i32 2, i32 0
  %52 = load %struct.Vec2d*, %struct.Vec2d** %51, align 8, !tbaa !31
  %53 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %52, i64 %44
  %54 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %53, i64 -1
  %55 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %54, i64 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %54, i64 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = tail call { double, double } @Mul(double %56, double %58, double %40)
  %60 = extractvalue { double, double } %59, 0
  %61 = extractvalue { double, double } %59, 1
  %62 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 0
  %63 = load double, double* %62, align 8
  %64 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %43, i64 %44, i32 1
  %65 = load double, double* %64, align 8
  %66 = tail call { double, double } @Sub(double %63, double %65, double %60, double %61)
  %67 = extractvalue { double, double } %66, 0
  %68 = extractvalue { double, double } %66, 1
  br label %69

; <label>:69:                                     ; preds = %26, %50, %45, %2, %19, %8
  %70 = phi double [ %12, %8 ], [ %23, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ %47, %45 ], [ %67, %50 ]
  %71 = phi double [ %14, %8 ], [ %25, %19 ], [ 0.000000e+00, %2 ], [ 0.000000e+00, %26 ], [ %49, %45 ], [ %68, %50 ]
  %72 = insertvalue { double, double } undef, double %70, 0
  %73 = insertvalue { double, double } %72, double %71, 1
  ret { double, double } %73
}

; Function Attrs: nounwind ssp uwtable
define noalias %struct.LaneWaypoint* @LaneWaypoint1() local_unnamed_addr #3 {
  %1 = tail call i8* @malloc(i64 24) #7
  %2 = bitcast i8* %1 to %struct.LaneWaypoint*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false)
  ret %struct.LaneWaypoint* %2
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define noalias %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo*, double) local_unnamed_addr #3 {
  %3 = tail call i8* @malloc(i64 24) #7
  %4 = bitcast i8* %3 to %struct.LaneWaypoint*
  %5 = bitcast i8* %3 to %struct.LaneInfo**
  store %struct.LaneInfo* %0, %struct.LaneInfo** %5, align 8, !tbaa !32
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to double*
  store double %1, double* %7, align 8, !tbaa !34
  %8 = getelementptr inbounds i8, i8* %3, i64 16
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 8, !tbaa !35
  ret %struct.LaneWaypoint* %4
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @RightBoundaryType(%struct.LaneWaypoint* nocapture readonly) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 0
  %3 = load %struct.LaneInfo*, %struct.LaneInfo** %2, align 8, !tbaa !32
  %4 = icmp eq %struct.LaneInfo* %3, null
  br i1 %4, label %31, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %3, i64 0, i32 5, i32 1, i32 0
  %7 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %6, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %3, i64 0, i32 5, i32 1, i32 1
  %9 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %8, align 8, !tbaa !37
  %10 = icmp eq %struct.LaneBoundaryType* %7, %9
  br i1 %10, label %31, label %11

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 1
  %13 = load double, double* %12, align 8, !tbaa !34
  br label %14

; <label>:14:                                     ; preds = %11, %27
  %15 = phi %struct.LaneBoundaryType* [ %7, %11 ], [ %28, %27 ]
  %16 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 0
  %17 = load double, double* %16, align 8, !tbaa !38
  %18 = fcmp ugt double %17, %13
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 2
  %21 = load i32, i32* %20, align 8, !tbaa !40
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 0, i32 1
  %25 = load i32*, i32** %24, align 8, !tbaa !41
  %26 = load i32, i32* %25, align 4, !tbaa !42
  br label %31

; <label>:27:                                     ; preds = %14
  %28 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %15, i64 1
  %29 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %8, align 8, !tbaa !37
  %30 = icmp eq %struct.LaneBoundaryType* %28, %29
  br i1 %30, label %31, label %14

; <label>:31:                                     ; preds = %27, %5, %1, %19, %23
  %32 = phi i32 [ 0, %19 ], [ %26, %23 ], [ 0, %1 ], [ 0, %5 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind ssp uwtable
define noalias %struct.LaneWaypoint* @RightNeighborWaypoint(%struct.LaneWaypoint* nocapture readonly) local_unnamed_addr #3 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.Vec2d, align 8
  %5 = tail call %struct.LaneWaypoint* @LaneWaypoint1()
  %6 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 0
  %7 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !tbaa !32
  %8 = icmp eq %struct.LaneInfo* %7, null
  br i1 %8, label %55, label %9

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %0, i64 0, i32 1
  %11 = load double, double* %10, align 8, !tbaa !34
  %12 = tail call { double, double } @GetSmoothPoint(%struct.LaneInfo* nonnull %7, double %11)
  %13 = extractvalue { double, double } %12, 0
  %14 = extractvalue { double, double } %12, 1
  %15 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %7, i64 0, i32 6, i32 0
  %16 = load i32*, i32** %15, align 8, !tbaa !43
  %17 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !tbaa !32
  %18 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %17, i64 0, i32 6, i32 1
  %19 = load i32*, i32** %18, align 8, !tbaa !44
  %20 = icmp eq i32* %16, %19
  br i1 %20, label %55, label %21

; <label>:21:                                     ; preds = %9
  %22 = bitcast double* %2 to i8*
  %23 = bitcast double* %3 to i8*
  %24 = bitcast %struct.Vec2d* %4 to i8*
  %25 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %4, i64 0, i32 0
  %26 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %4, i64 0, i32 1
  br label %32

; <label>:27:                                     ; preds = %51
  %28 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8, !tbaa !32
  %29 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %28, i64 0, i32 6, i32 1
  %30 = load i32*, i32** %29, align 8, !tbaa !44
  %31 = icmp eq i32* %54, %30
  br i1 %31, label %55, label %32

; <label>:32:                                     ; preds = %21, %27
  %33 = phi %struct.LaneWaypoint* [ undef, %21 ], [ %53, %27 ]
  %34 = phi i32* [ %16, %21 ], [ %54, %27 ]
  %35 = load i32, i32* %34, align 4, !tbaa !45
  %36 = call %struct.LaneInfo* @GetLaneById(i32 %35) #6
  %37 = icmp eq %struct.LaneInfo* %36, null
  br i1 %37, label %55, label %38

; <label>:38:                                     ; preds = %32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #6
  store double 0.000000e+00, double* %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #6
  store double 0.000000e+00, double* %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #6
  store double %13, double* %25, align 8, !tbaa !46
  store double %14, double* %26, align 8, !tbaa !47
  %39 = call i32 @GetProjection(%struct.LaneInfo* nonnull %36, %struct.Vec2d* nonnull %4, double* nonnull %2, double* nonnull %3)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %2, align 8, !tbaa !3
  %43 = fcmp olt double %42, -1.000000e+00
  br i1 %43, label %51, label %44

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %36, i64 0, i32 0
  %46 = load double, double* %45, align 8, !tbaa !28
  %47 = fadd double %46, 1.000000e+00
  %48 = fcmp ogt double %42, %47
  br i1 %48, label %51, label %49

; <label>:49:                                     ; preds = %44
  %50 = call %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo* nonnull %36, double %42)
  br label %51

; <label>:51:                                     ; preds = %49, %38, %44, %41
  %52 = phi i1 [ false, %49 ], [ true, %38 ], [ true, %44 ], [ true, %41 ]
  %53 = phi %struct.LaneWaypoint* [ %50, %49 ], [ %33, %38 ], [ %33, %44 ], [ %33, %41 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #6
  %54 = getelementptr inbounds i32, i32* %34, i64 1
  br i1 %52, label %27, label %55

; <label>:55:                                     ; preds = %27, %51, %32, %9, %1
  %56 = phi %struct.LaneWaypoint* [ %5, %1 ], [ %5, %9 ], [ %5, %27 ], [ %53, %51 ], [ %5, %32 ]
  ret %struct.LaneWaypoint* %56
}

declare %struct.LaneInfo* @GetLaneById(i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 16}
!8 = !{!"Vector_Vec2d", !9, i64 0, !9, i64 8, !10, i64 16}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !9, i64 0}
!13 = !{!14, !10, i64 16}
!14 = !{!"Vector_LineSegment2d", !9, i64 0, !9, i64 8, !10, i64 16}
!15 = !{!14, !9, i64 8}
!16 = !{!14, !9, i64 0}
!17 = !{!18, !9, i64 56}
!18 = !{!"LaneInfo", !4, i64 0, !8, i64 8, !8, i64 32, !14, i64 56, !19, i64 80, !20, i64 104, !22, i64 136}
!19 = !{!"Vector_double", !9, i64 0, !9, i64 8, !10, i64 16}
!20 = !{!"LaneBoundary", !4, i64 0, !21, i64 8}
!21 = !{!"Vector_LaneBoundaryType", !9, i64 0, !9, i64 8, !10, i64 16}
!22 = !{!"Vector_int", !9, i64 0, !9, i64 8, !10, i64 16}
!23 = !{!18, !9, i64 80}
!24 = !{!25, !4, i64 56}
!25 = !{!"LineSegment2d", !26, i64 0, !26, i64 16, !26, i64 32, !4, i64 48, !4, i64 56}
!26 = !{!"Vec2d", !4, i64 0, !4, i64 8}
!27 = !{!18, !9, i64 8}
!28 = !{!18, !4, i64 0}
!29 = !{!18, !9, i64 16}
!30 = !{!18, !9, i64 88}
!31 = !{!18, !9, i64 32}
!32 = !{!33, !9, i64 0}
!33 = !{!"LaneWaypoint", !9, i64 0, !4, i64 8, !4, i64 16}
!34 = !{!33, !4, i64 8}
!35 = !{!33, !4, i64 16}
!36 = !{!18, !9, i64 112}
!37 = !{!18, !9, i64 120}
!38 = !{!39, !4, i64 0}
!39 = !{!"LaneBoundaryType", !4, i64 0, !9, i64 8, !10, i64 16}
!40 = !{!39, !10, i64 16}
!41 = !{!39, !9, i64 8}
!42 = !{!5, !5, i64 0}
!43 = !{!18, !9, i64 136}
!44 = !{!18, !9, i64 144}
!45 = !{!10, !10, i64 0}
!46 = !{!26, !4, i64 0}
!47 = !{!26, !4, i64 8}
