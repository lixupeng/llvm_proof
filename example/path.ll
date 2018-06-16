; ModuleID = 'path.c'
source_filename = "path.c"
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

; Function Attrs: noinline nounwind uwtable
define double @min_double(double, double) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp olt double %5, %6
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = load double, double* %3, align 8
  br label %12

; <label>:10:                                     ; preds = %2
  %11 = load double, double* %4, align 8
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define i32 @size_double(%struct.Vector_double*) #0 {
  %2 = alloca %struct.Vector_double*, align 8
  store %struct.Vector_double* %0, %struct.Vector_double** %2, align 8
  %3 = load %struct.Vector_double*, %struct.Vector_double** %2, align 8
  %4 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %3, i32 0, i32 1
  %5 = load double*, double** %4, align 8
  %6 = load %struct.Vector_double*, %struct.Vector_double** %2, align 8
  %7 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %6, i32 0, i32 0
  %8 = load double*, double** %7, align 8
  %9 = ptrtoint double* %5 to i64
  %10 = ptrtoint double* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define double* @lower_bound_double(double*, double*, double) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store double %2, double* %7, align 8
  %9 = load double*, double** %5, align 8
  %10 = icmp ne double* %9, null
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %3
  %12 = load double*, double** %6, align 8
  %13 = icmp ne double* %12, null
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %11, %3
  %15 = load double*, double** %6, align 8
  store double* %15, double** %4, align 8
  br label %34

; <label>:16:                                     ; preds = %11
  %17 = load double*, double** %5, align 8
  store double* %17, double** %8, align 8
  br label %18

; <label>:18:                                     ; preds = %29, %16
  %19 = load double*, double** %8, align 8
  %20 = load double*, double** %6, align 8
  %21 = icmp ne double* %19, %20
  br i1 %21, label %22, label %32

; <label>:22:                                     ; preds = %18
  %23 = load double*, double** %8, align 8
  %24 = load double, double* %23, align 8
  %25 = load double, double* %7, align 8
  %26 = fcmp oge double %24, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %22
  br label %32

; <label>:28:                                     ; preds = %22
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load double*, double** %8, align 8
  %31 = getelementptr inbounds double, double* %30, i32 1
  store double* %31, double** %8, align 8
  br label %18

; <label>:32:                                     ; preds = %27, %18
  %33 = load double*, double** %8, align 8
  store double* %33, double** %4, align 8
  br label %34

; <label>:34:                                     ; preds = %32, %14
  %35 = load double*, double** %4, align 8
  ret double* %35
}

; Function Attrs: noinline nounwind uwtable
define double @InnerProd(double, double, double, double) #0 {
  %5 = alloca %struct.Vec2d, align 8
  %6 = alloca %struct.Vec2d, align 8
  %7 = bitcast %struct.Vec2d* %5 to { double, double }*
  %8 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 0
  store double %0, double* %8, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %7, i32 0, i32 1
  store double %1, double* %9, align 8
  %10 = bitcast %struct.Vec2d* %6 to { double, double }*
  %11 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  store double %2, double* %11, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %3, double* %12, align 8
  %13 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %5, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %6, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fmul double %14, %16
  %18 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %5, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %6, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fmul double %19, %21
  %23 = fadd double %17, %22
  ret double %23
}

; Function Attrs: noinline nounwind uwtable
define { double, double } @Sub(double, double, double, double) #0 {
  %5 = alloca %struct.Vec2d, align 8
  %6 = alloca %struct.Vec2d, align 8
  %7 = alloca %struct.Vec2d, align 8
  %8 = alloca %struct.Vec2d, align 8
  %9 = bitcast %struct.Vec2d* %6 to { double, double }*
  %10 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  store double %0, double* %10, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  store double %1, double* %11, align 8
  %12 = bitcast %struct.Vec2d* %7 to { double, double }*
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  store double %2, double* %13, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %3, double* %14, align 8
  %15 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %6, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %7, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fsub double %16, %18
  %20 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %8, i32 0, i32 0
  store double %19, double* %20, align 8
  %21 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %6, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %7, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fsub double %22, %24
  %26 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %8, i32 0, i32 1
  store double %25, double* %26, align 8
  %27 = bitcast %struct.Vec2d* %5 to i8*
  %28 = bitcast %struct.Vec2d* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %29 = bitcast %struct.Vec2d* %5 to { double, double }*
  %30 = load { double, double }, { double, double }* %29, align 8
  ret { double, double } %30
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noinline nounwind uwtable
define { double, double } @Mul(double, double, double) #0 {
  %4 = alloca %struct.Vec2d, align 8
  %5 = alloca %struct.Vec2d, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.Vec2d, align 8
  %8 = bitcast %struct.Vec2d* %5 to { double, double }*
  %9 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  store double %0, double* %9, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 1
  store double %1, double* %10, align 8
  store double %2, double* %6, align 8
  %11 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %5, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = load double, double* %6, align 8
  %14 = fmul double %12, %13
  %15 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %7, i32 0, i32 0
  store double %14, double* %15, align 8
  %16 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %5, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = load double, double* %6, align 8
  %19 = fmul double %17, %18
  %20 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %7, i32 0, i32 1
  store double %19, double* %20, align 8
  %21 = bitcast %struct.Vec2d* %4 to i8*
  %22 = bitcast %struct.Vec2d* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  %23 = bitcast %struct.Vec2d* %4 to { double, double }*
  %24 = load { double, double }, { double, double }* %23, align 8
  ret { double, double } %24
}

; Function Attrs: noinline nounwind uwtable
define i32 @empty_Vec2d(%struct.Vector_Vec2d*) #0 {
  %2 = alloca %struct.Vector_Vec2d*, align 8
  store %struct.Vector_Vec2d* %0, %struct.Vector_Vec2d** %2, align 8
  %3 = load %struct.Vector_Vec2d*, %struct.Vector_Vec2d** %2, align 8
  %4 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i32 0, i32 1
  %5 = load %struct.Vec2d*, %struct.Vec2d** %4, align 8
  %6 = load %struct.Vector_Vec2d*, %struct.Vector_Vec2d** %2, align 8
  %7 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %6, i32 0, i32 0
  %8 = load %struct.Vec2d*, %struct.Vec2d** %7, align 8
  %9 = icmp eq %struct.Vec2d* %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @size_Vec2d(%struct.Vector_Vec2d*) #0 {
  %2 = alloca %struct.Vector_Vec2d*, align 8
  store %struct.Vector_Vec2d* %0, %struct.Vector_Vec2d** %2, align 8
  %3 = load %struct.Vector_Vec2d*, %struct.Vector_Vec2d** %2, align 8
  %4 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %3, i32 0, i32 1
  %5 = load %struct.Vec2d*, %struct.Vec2d** %4, align 8
  %6 = load %struct.Vector_Vec2d*, %struct.Vector_Vec2d** %2, align 8
  %7 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %6, i32 0, i32 0
  %8 = load %struct.Vec2d*, %struct.Vec2d** %7, align 8
  %9 = ptrtoint %struct.Vec2d* %5 to i64
  %10 = ptrtoint %struct.Vec2d* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 16
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d*) #0 {
  %2 = alloca %struct.Vector_LineSegment2d*, align 8
  store %struct.Vector_LineSegment2d* %0, %struct.Vector_LineSegment2d** %2, align 8
  %3 = load %struct.Vector_LineSegment2d*, %struct.Vector_LineSegment2d** %2, align 8
  %4 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %3, i32 0, i32 1
  %5 = load %struct.LineSegment2d*, %struct.LineSegment2d** %4, align 8
  %6 = load %struct.Vector_LineSegment2d*, %struct.Vector_LineSegment2d** %2, align 8
  %7 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %6, i32 0, i32 0
  %8 = load %struct.LineSegment2d*, %struct.LineSegment2d** %7, align 8
  %9 = icmp eq %struct.LineSegment2d* %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define i32 @size_LineSegment2d(%struct.Vector_LineSegment2d*) #0 {
  %2 = alloca %struct.Vector_LineSegment2d*, align 8
  store %struct.Vector_LineSegment2d* %0, %struct.Vector_LineSegment2d** %2, align 8
  %3 = load %struct.Vector_LineSegment2d*, %struct.Vector_LineSegment2d** %2, align 8
  %4 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %3, i32 0, i32 1
  %5 = load %struct.LineSegment2d*, %struct.LineSegment2d** %4, align 8
  %6 = load %struct.Vector_LineSegment2d*, %struct.Vector_LineSegment2d** %2, align 8
  %7 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %6, i32 0, i32 0
  %8 = load %struct.LineSegment2d*, %struct.LineSegment2d** %7, align 8
  %9 = ptrtoint %struct.LineSegment2d* %5 to i64
  %10 = ptrtoint %struct.LineSegment2d* %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 64
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define i32 @GetProjection(%struct.LaneInfo*, %struct.Vec2d*, double*, double*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.LaneInfo*, align 8
  %7 = alloca %struct.Vec2d*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.LineSegment2d*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.LineSegment2d*, align 8
  %19 = alloca %struct.Vec2d, align 8
  %20 = alloca %struct.LineSegment2d*, align 8
  %21 = alloca double, align 8
  store %struct.LaneInfo* %0, %struct.LaneInfo** %6, align 8
  store %struct.Vec2d* %1, %struct.Vec2d** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  %22 = load double*, double** %8, align 8
  %23 = icmp ne double* %22, null
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %4
  store i32 0, i32* %5, align 4
  br label %212

; <label>:25:                                     ; preds = %4
  %26 = load double*, double** %9, align 8
  %27 = icmp ne double* %26, null
  br i1 %27, label %29, label %28

; <label>:28:                                     ; preds = %25
  store i32 0, i32* %5, align 4
  br label %212

; <label>:29:                                     ; preds = %25
  %30 = load %struct.Vec2d*, %struct.Vec2d** %7, align 8
  %31 = icmp ne %struct.Vec2d* %30, null
  br i1 %31, label %33, label %32

; <label>:32:                                     ; preds = %29
  store i32 0, i32* %5, align 4
  br label %212

; <label>:33:                                     ; preds = %29
  %34 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %35 = icmp ne %struct.LaneInfo* %34, null
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %33
  %37 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %38 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %37, i32 0, i32 3
  %39 = call i32 @empty_LineSegment2d(%struct.Vector_LineSegment2d* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36, %33
  store i32 0, i32* %5, align 4
  br label %212

; <label>:42:                                     ; preds = %36
  store double 0x47D2CED32A16A1B1, double* %10, align 8
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  %43 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %44 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %43, i32 0, i32 3
  %45 = call i32 @size_LineSegment2d(%struct.Vector_LineSegment2d* %44)
  store i32 %45, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %46

; <label>:46:                                     ; preds = %134, %42
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %137

; <label>:50:                                     ; preds = %46
  %51 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %52 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %52, i32 0, i32 0
  %54 = load %struct.LineSegment2d*, %struct.LineSegment2d** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %54, i64 %56
  store %struct.LineSegment2d* %57, %struct.LineSegment2d** %15, align 8
  %58 = load %struct.LineSegment2d*, %struct.LineSegment2d** %15, align 8
  %59 = load %struct.Vec2d*, %struct.Vec2d** %7, align 8
  %60 = call double @DistanceTo(%struct.LineSegment2d* %58, %struct.Vec2d* %59)
  store double %60, double* %16, align 8
  %61 = load double, double* %16, align 8
  %62 = load double, double* %10, align 8
  %63 = fcmp olt double %61, %62
  br i1 %63, label %64, label %133

; <label>:64:                                     ; preds = %50
  %65 = load %struct.LineSegment2d*, %struct.LineSegment2d** %15, align 8
  %66 = load %struct.Vec2d*, %struct.Vec2d** %7, align 8
  %67 = call double @ProjectOntoUnit(%struct.LineSegment2d* %65, %struct.Vec2d* %66)
  store double %67, double* %17, align 8
  %68 = load double, double* %17, align 8
  %69 = fcmp olt double %68, 0.000000e+00
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %64
  %71 = load i32, i32* %14, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %70
  br label %134

; <label>:74:                                     ; preds = %70, %64
  %75 = load double, double* %17, align 8
  %76 = load %struct.LineSegment2d*, %struct.LineSegment2d** %15, align 8
  %77 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %76, i32 0, i32 4
  %78 = load double, double* %77, align 8
  %79 = fcmp ogt double %75, %78
  br i1 %79, label %80, label %129

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %129

; <label>:85:                                     ; preds = %80
  %86 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %87 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %87, i32 0, i32 0
  %89 = load %struct.LineSegment2d*, %struct.LineSegment2d** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %89, i64 %91
  %93 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %92, i64 1
  store %struct.LineSegment2d* %93, %struct.LineSegment2d** %18, align 8
  %94 = load %struct.Vec2d*, %struct.Vec2d** %7, align 8
  %95 = load %struct.LineSegment2d*, %struct.LineSegment2d** %18, align 8
  %96 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %95, i32 0, i32 0
  %97 = bitcast %struct.Vec2d* %94 to { double, double }*
  %98 = getelementptr inbounds { double, double }, { double, double }* %97, i32 0, i32 0
  %99 = load double, double* %98, align 8
  %100 = getelementptr inbounds { double, double }, { double, double }* %97, i32 0, i32 1
  %101 = load double, double* %100, align 8
  %102 = bitcast %struct.Vec2d* %96 to { double, double }*
  %103 = getelementptr inbounds { double, double }, { double, double }* %102, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds { double, double }, { double, double }* %102, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = call { double, double } @Sub(double %99, double %101, double %104, double %106)
  %108 = bitcast %struct.Vec2d* %19 to { double, double }*
  %109 = getelementptr inbounds { double, double }, { double, double }* %108, i32 0, i32 0
  %110 = extractvalue { double, double } %107, 0
  store double %110, double* %109, align 8
  %111 = getelementptr inbounds { double, double }, { double, double }* %108, i32 0, i32 1
  %112 = extractvalue { double, double } %107, 1
  store double %112, double* %111, align 8
  %113 = load %struct.LineSegment2d*, %struct.LineSegment2d** %18, align 8
  %114 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %113, i32 0, i32 2
  %115 = bitcast %struct.Vec2d* %19 to { double, double }*
  %116 = getelementptr inbounds { double, double }, { double, double }* %115, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds { double, double }, { double, double }* %115, i32 0, i32 1
  %119 = load double, double* %118, align 8
  %120 = bitcast %struct.Vec2d* %114 to { double, double }*
  %121 = getelementptr inbounds { double, double }, { double, double }* %120, i32 0, i32 0
  %122 = load double, double* %121, align 8
  %123 = getelementptr inbounds { double, double }, { double, double }* %120, i32 0, i32 1
  %124 = load double, double* %123, align 8
  %125 = call double @InnerProd(double %117, double %119, double %122, double %124)
  %126 = fcmp oge double %125, 0.000000e+00
  br i1 %126, label %127, label %128

; <label>:127:                                    ; preds = %85
  br label %134

; <label>:128:                                    ; preds = %85
  br label %129

; <label>:129:                                    ; preds = %128, %80, %74
  %130 = load double, double* %16, align 8
  store double %130, double* %10, align 8
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %11, align 4
  %132 = load double, double* %17, align 8
  store double %132, double* %12, align 8
  br label %133

; <label>:133:                                    ; preds = %129, %50
  br label %134

; <label>:134:                                    ; preds = %133, %127, %73
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %46

; <label>:137:                                    ; preds = %46
  %138 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %139 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.Vector_LineSegment2d, %struct.Vector_LineSegment2d* %139, i32 0, i32 0
  %141 = load %struct.LineSegment2d*, %struct.LineSegment2d** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %141, i64 %143
  store %struct.LineSegment2d* %144, %struct.LineSegment2d** %20, align 8
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, 1
  %147 = load i32, i32* %13, align 4
  %148 = icmp uge i32 %146, %147
  br i1 %148, label %149, label %161

; <label>:149:                                    ; preds = %137
  %150 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %151 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %151, i32 0, i32 0
  %153 = load double*, double** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  %157 = load double, double* %156, align 8
  %158 = load double, double* %12, align 8
  %159 = fadd double %157, %158
  %160 = load double*, double** %8, align 8
  store double %159, double* %160, align 8
  br label %177

; <label>:161:                                    ; preds = %137
  %162 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %163 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %163, i32 0, i32 0
  %165 = load double*, double** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds double, double* %165, i64 %167
  %169 = load double, double* %168, align 8
  %170 = load double, double* %12, align 8
  %171 = load %struct.LineSegment2d*, %struct.LineSegment2d** %20, align 8
  %172 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %171, i32 0, i32 4
  %173 = load double, double* %172, align 8
  %174 = call double @min_double(double %170, double %173)
  %175 = fadd double %169, %174
  %176 = load double*, double** %8, align 8
  store double %175, double* %176, align 8
  br label %177

; <label>:177:                                    ; preds = %161, %149
  %178 = load %struct.LineSegment2d*, %struct.LineSegment2d** %20, align 8
  %179 = load %struct.Vec2d*, %struct.Vec2d** %7, align 8
  %180 = call double @ProductOntoUnit(%struct.LineSegment2d* %178, %struct.Vec2d* %179)
  store double %180, double* %21, align 8
  %181 = load i32, i32* %11, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

; <label>:183:                                    ; preds = %177
  %184 = load double, double* %12, align 8
  %185 = fcmp olt double %184, 0.000000e+00
  br i1 %185, label %197, label %186

; <label>:186:                                    ; preds = %183, %177
  %187 = load i32, i32* %11, align 4
  %188 = add i32 %187, 1
  %189 = load i32, i32* %13, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %200

; <label>:191:                                    ; preds = %186
  %192 = load double, double* %12, align 8
  %193 = load %struct.LineSegment2d*, %struct.LineSegment2d** %20, align 8
  %194 = getelementptr inbounds %struct.LineSegment2d, %struct.LineSegment2d* %193, i32 0, i32 4
  %195 = load double, double* %194, align 8
  %196 = fcmp ogt double %192, %195
  br i1 %196, label %197, label %200

; <label>:197:                                    ; preds = %191, %183
  %198 = load double, double* %21, align 8
  %199 = load double*, double** %9, align 8
  store double %198, double* %199, align 8
  br label %211

; <label>:200:                                    ; preds = %191, %186
  %201 = load double, double* %21, align 8
  %202 = fcmp ogt double %201, 0.000000e+00
  br i1 %202, label %203, label %205

; <label>:203:                                    ; preds = %200
  %204 = load double, double* %10, align 8
  br label %208

; <label>:205:                                    ; preds = %200
  %206 = load double, double* %10, align 8
  %207 = fsub double -0.000000e+00, %206
  br label %208

; <label>:208:                                    ; preds = %205, %203
  %209 = phi double [ %204, %203 ], [ %207, %205 ]
  %210 = load double*, double** %9, align 8
  store double %209, double* %210, align 8
  br label %211

; <label>:211:                                    ; preds = %208, %197
  store i32 1, i32* %5, align 4
  br label %212

; <label>:212:                                    ; preds = %211, %41, %32, %28, %24
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare double @DistanceTo(%struct.LineSegment2d*, %struct.Vec2d*) #2

declare double @ProjectOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) #2

declare double @ProductOntoUnit(%struct.LineSegment2d*, %struct.Vec2d*) #2

; Function Attrs: noinline nounwind uwtable
define { double, double } @GetSmoothPoint(%struct.LaneInfo*, double) #0 {
  %3 = alloca %struct.Vec2d, align 8
  %4 = alloca %struct.LaneInfo*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.Vec2d, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.Vec2d, align 8
  %11 = alloca %struct.Vec2d, align 8
  store %struct.LaneInfo* %0, %struct.LaneInfo** %4, align 8
  store double %1, double* %5, align 8
  %12 = bitcast %struct.Vec2d* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 8, i1 false)
  %13 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %14 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %13, i32 0, i32 1
  %15 = call i32 @size_Vec2d(%struct.Vector_Vec2d* %14)
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %2
  %18 = bitcast %struct.Vec2d* %3 to i8*
  %19 = bitcast %struct.Vec2d* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  br label %147

; <label>:20:                                     ; preds = %2
  %21 = load double, double* %5, align 8
  %22 = fcmp ole double %21, 0.000000e+00
  br i1 %22, label %23, label %30

; <label>:23:                                     ; preds = %20
  %24 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %25 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %25, i32 0, i32 0
  %27 = load %struct.Vec2d*, %struct.Vec2d** %26, align 8
  %28 = bitcast %struct.Vec2d* %3 to i8*
  %29 = bitcast %struct.Vec2d* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false)
  br label %147

; <label>:30:                                     ; preds = %20
  %31 = load double, double* %5, align 8
  %32 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %33 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fcmp oge double %31, %34
  br i1 %35, label %36, label %44

; <label>:36:                                     ; preds = %30
  %37 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %38 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %38, i32 0, i32 1
  %40 = load %struct.Vec2d*, %struct.Vec2d** %39, align 8
  %41 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %40, i64 -1
  %42 = bitcast %struct.Vec2d* %3 to i8*
  %43 = bitcast %struct.Vec2d* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 8, i1 false)
  br label %147

; <label>:44:                                     ; preds = %30
  %45 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %46 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %45, i32 0, i32 1
  %47 = call i32 @size_Vec2d(%struct.Vector_Vec2d* %46)
  %48 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %49 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %48, i32 0, i32 4
  %50 = call i32 @size_double(%struct.Vector_double* %49)
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %44
  %53 = bitcast %struct.Vec2d* %3 to i8*
  %54 = bitcast %struct.Vec2d* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* %54, i64 16, i32 8, i1 false)
  br label %147

; <label>:55:                                     ; preds = %44
  %56 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %57 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %57, i32 0, i32 0
  %59 = load double*, double** %58, align 8
  %60 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %61 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %61, i32 0, i32 1
  %63 = load double*, double** %62, align 8
  %64 = load double, double* %5, align 8
  %65 = call double* @lower_bound_double(double* %59, double* %63, double %64)
  store double* %65, double** %7, align 8
  %66 = load double*, double** %7, align 8
  %67 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %68 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %68, i32 0, i32 1
  %70 = load double*, double** %69, align 8
  %71 = icmp eq double* %66, %70
  br i1 %71, label %72, label %75

; <label>:72:                                     ; preds = %55
  %73 = bitcast %struct.Vec2d* %3 to i8*
  %74 = bitcast %struct.Vec2d* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 16, i32 8, i1 false)
  br label %147

; <label>:75:                                     ; preds = %55
  %76 = load double*, double** %7, align 8
  %77 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %78 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.Vector_double, %struct.Vector_double* %78, i32 0, i32 0
  %80 = load double*, double** %79, align 8
  %81 = ptrtoint double* %76 to i64
  %82 = ptrtoint double* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load double*, double** %7, align 8
  %87 = load double, double* %86, align 8
  %88 = load double, double* %5, align 8
  %89 = fsub double %87, %88
  store double %89, double* %9, align 8
  %90 = load double, double* %9, align 8
  %91 = fcmp olt double %90, 1.000000e-08
  br i1 %91, label %92, label %102

; <label>:92:                                     ; preds = %75
  %93 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %94 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %94, i32 0, i32 0
  %96 = load %struct.Vec2d*, %struct.Vec2d** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %96, i64 %98
  %100 = bitcast %struct.Vec2d* %3 to i8*
  %101 = bitcast %struct.Vec2d* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false)
  br label %147

; <label>:102:                                    ; preds = %75
  %103 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %104 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %104, i32 0, i32 0
  %106 = load %struct.Vec2d*, %struct.Vec2d** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %106, i64 %108
  %110 = load %struct.LaneInfo*, %struct.LaneInfo** %4, align 8
  %111 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.Vector_Vec2d, %struct.Vector_Vec2d* %111, i32 0, i32 0
  %113 = load %struct.Vec2d*, %struct.Vec2d** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %113, i64 %115
  %117 = load double, double* %9, align 8
  %118 = bitcast %struct.Vec2d* %116 to { double, double }*
  %119 = getelementptr inbounds { double, double }, { double, double }* %118, i32 0, i32 0
  %120 = load double, double* %119, align 8
  %121 = getelementptr inbounds { double, double }, { double, double }* %118, i32 0, i32 1
  %122 = load double, double* %121, align 8
  %123 = call { double, double } @Mul(double %120, double %122, double %117)
  %124 = bitcast %struct.Vec2d* %11 to { double, double }*
  %125 = getelementptr inbounds { double, double }, { double, double }* %124, i32 0, i32 0
  %126 = extractvalue { double, double } %123, 0
  store double %126, double* %125, align 8
  %127 = getelementptr inbounds { double, double }, { double, double }* %124, i32 0, i32 1
  %128 = extractvalue { double, double } %123, 1
  store double %128, double* %127, align 8
  %129 = bitcast %struct.Vec2d* %109 to { double, double }*
  %130 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 0
  %131 = load double, double* %130, align 8
  %132 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 1
  %133 = load double, double* %132, align 8
  %134 = bitcast %struct.Vec2d* %11 to { double, double }*
  %135 = getelementptr inbounds { double, double }, { double, double }* %134, i32 0, i32 0
  %136 = load double, double* %135, align 8
  %137 = getelementptr inbounds { double, double }, { double, double }* %134, i32 0, i32 1
  %138 = load double, double* %137, align 8
  %139 = call { double, double } @Sub(double %131, double %133, double %136, double %138)
  %140 = bitcast %struct.Vec2d* %10 to { double, double }*
  %141 = getelementptr inbounds { double, double }, { double, double }* %140, i32 0, i32 0
  %142 = extractvalue { double, double } %139, 0
  store double %142, double* %141, align 8
  %143 = getelementptr inbounds { double, double }, { double, double }* %140, i32 0, i32 1
  %144 = extractvalue { double, double } %139, 1
  store double %144, double* %143, align 8
  %145 = bitcast %struct.Vec2d* %3 to i8*
  %146 = bitcast %struct.Vec2d* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %146, i64 16, i32 8, i1 false)
  br label %147

; <label>:147:                                    ; preds = %102, %92, %72, %52, %36, %23, %17
  %148 = bitcast %struct.Vec2d* %3 to { double, double }*
  %149 = load { double, double }, { double, double }* %148, align 8
  ret { double, double } %149
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noinline nounwind uwtable
define %struct.LaneWaypoint* @LaneWaypoint1() #0 {
  %1 = alloca %struct.LaneWaypoint*, align 8
  %2 = call noalias i8* @malloc(i64 24) #4
  %3 = bitcast i8* %2 to %struct.LaneWaypoint*
  store %struct.LaneWaypoint* %3, %struct.LaneWaypoint** %1, align 8
  %4 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %1, align 8
  %5 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %4, i32 0, i32 0
  store %struct.LaneInfo* null, %struct.LaneInfo** %5, align 8
  %6 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %1, align 8
  %7 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %6, i32 0, i32 1
  store double 0.000000e+00, double* %7, align 8
  %8 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %1, align 8
  %9 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %8, i32 0, i32 2
  store double 0.000000e+00, double* %9, align 8
  %10 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %1, align 8
  ret %struct.LaneWaypoint* %10
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind uwtable
define %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo*, double) #0 {
  %3 = alloca %struct.LaneInfo*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.LaneWaypoint*, align 8
  store %struct.LaneInfo* %0, %struct.LaneInfo** %3, align 8
  store double %1, double* %4, align 8
  %6 = call noalias i8* @malloc(i64 24) #4
  %7 = bitcast i8* %6 to %struct.LaneWaypoint*
  store %struct.LaneWaypoint* %7, %struct.LaneWaypoint** %5, align 8
  %8 = load %struct.LaneInfo*, %struct.LaneInfo** %3, align 8
  %9 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %5, align 8
  %10 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %9, i32 0, i32 0
  store %struct.LaneInfo* %8, %struct.LaneInfo** %10, align 8
  %11 = load double, double* %4, align 8
  %12 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %5, align 8
  %13 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %12, i32 0, i32 1
  store double %11, double* %13, align 8
  %14 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %5, align 8
  %15 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %14, i32 0, i32 2
  store double 0.000000e+00, double* %15, align 8
  %16 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %5, align 8
  ret %struct.LaneWaypoint* %16
}

; Function Attrs: noinline nounwind uwtable
define i32 @RightBoundaryType(%struct.LaneWaypoint*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.LaneWaypoint*, align 8
  %4 = alloca %struct.LaneBoundaryType*, align 8
  store %struct.LaneWaypoint* %0, %struct.LaneWaypoint** %3, align 8
  %5 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %6 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %5, i32 0, i32 0
  %7 = load %struct.LaneInfo*, %struct.LaneInfo** %6, align 8
  %8 = icmp ne %struct.LaneInfo* %7, null
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

; <label>:10:                                     ; preds = %1
  %11 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %12 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %11, i32 0, i32 0
  %13 = load %struct.LaneInfo*, %struct.LaneInfo** %12, align 8
  %14 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.LaneBoundary, %struct.LaneBoundary* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.Vector_LaneBoundaryType, %struct.Vector_LaneBoundaryType* %15, i32 0, i32 0
  %17 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %16, align 8
  store %struct.LaneBoundaryType* %17, %struct.LaneBoundaryType** %4, align 8
  br label %18

; <label>:18:                                     ; preds = %53, %10
  %19 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %4, align 8
  %20 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %21 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %20, i32 0, i32 0
  %22 = load %struct.LaneInfo*, %struct.LaneInfo** %21, align 8
  %23 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.LaneBoundary, %struct.LaneBoundary* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.Vector_LaneBoundaryType, %struct.Vector_LaneBoundaryType* %24, i32 0, i32 1
  %26 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %25, align 8
  %27 = icmp ne %struct.LaneBoundaryType* %19, %26
  br i1 %27, label %28, label %56

; <label>:28:                                     ; preds = %18
  %29 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %4, align 8
  %30 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %33 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = fcmp ole double %31, %34
  br i1 %35, label %36, label %52

; <label>:36:                                     ; preds = %28
  %37 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %4, align 8
  %38 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %51

; <label>:41:                                     ; preds = %36
  %42 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %4, align 8
  %43 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

; <label>:46:                                     ; preds = %41
  %47 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %4, align 8
  %48 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  br label %57

; <label>:51:                                     ; preds = %41, %36
  store i32 0, i32* %2, align 4
  br label %57

; <label>:52:                                     ; preds = %28
  br label %53

; <label>:53:                                     ; preds = %52
  %54 = load %struct.LaneBoundaryType*, %struct.LaneBoundaryType** %4, align 8
  %55 = getelementptr inbounds %struct.LaneBoundaryType, %struct.LaneBoundaryType* %54, i32 1
  store %struct.LaneBoundaryType* %55, %struct.LaneBoundaryType** %4, align 8
  br label %18

; <label>:56:                                     ; preds = %18
  store i32 0, i32* %2, align 4
  br label %57

; <label>:57:                                     ; preds = %56, %51, %46, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind uwtable
define %struct.LaneWaypoint* @RightNeighborWaypoint(%struct.LaneWaypoint*) #0 {
  %2 = alloca %struct.LaneWaypoint*, align 8
  %3 = alloca %struct.LaneWaypoint*, align 8
  %4 = alloca %struct.LaneWaypoint*, align 8
  %5 = alloca %struct.Vec2d, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.LaneInfo*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.Vec2d, align 8
  store %struct.LaneWaypoint* %0, %struct.LaneWaypoint** %3, align 8
  %11 = call %struct.LaneWaypoint* @LaneWaypoint1()
  store %struct.LaneWaypoint* %11, %struct.LaneWaypoint** %4, align 8
  %12 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %13 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %12, i32 0, i32 0
  %14 = load %struct.LaneInfo*, %struct.LaneInfo** %13, align 8
  %15 = icmp ne %struct.LaneInfo* %14, null
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %1
  %17 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %4, align 8
  store %struct.LaneWaypoint* %17, %struct.LaneWaypoint** %2, align 8
  br label %85

; <label>:18:                                     ; preds = %1
  %19 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %20 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %19, i32 0, i32 0
  %21 = load %struct.LaneInfo*, %struct.LaneInfo** %20, align 8
  %22 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %23 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = call { double, double } @GetSmoothPoint(%struct.LaneInfo* %21, double %24)
  %26 = bitcast %struct.Vec2d* %5 to { double, double }*
  %27 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 0
  %28 = extractvalue { double, double } %25, 0
  store double %28, double* %27, align 8
  %29 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 1
  %30 = extractvalue { double, double } %25, 1
  store double %30, double* %29, align 8
  %31 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %32 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %31, i32 0, i32 0
  %33 = load %struct.LaneInfo*, %struct.LaneInfo** %32, align 8
  %34 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.Vector_int, %struct.Vector_int* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %6, align 8
  br label %37

; <label>:37:                                     ; preds = %80, %18
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %3, align 8
  %40 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %39, i32 0, i32 0
  %41 = load %struct.LaneInfo*, %struct.LaneInfo** %40, align 8
  %42 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.Vector_int, %struct.Vector_int* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %38, %44
  br i1 %45, label %46, label %83

; <label>:46:                                     ; preds = %37
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.LaneInfo* @GetLaneById(i32 %48)
  store %struct.LaneInfo* %49, %struct.LaneInfo** %7, align 8
  %50 = load %struct.LaneInfo*, %struct.LaneInfo** %7, align 8
  %51 = icmp ne %struct.LaneInfo* %50, null
  br i1 %51, label %54, label %52

; <label>:52:                                     ; preds = %46
  %53 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %4, align 8
  store %struct.LaneWaypoint* %53, %struct.LaneWaypoint** %2, align 8
  br label %85

; <label>:54:                                     ; preds = %46
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %55 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i32 0, i32 0
  %56 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %5, i32 0, i32 0
  %57 = load double, double* %56, align 8
  store double %57, double* %55, align 8
  %58 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %10, i32 0, i32 1
  %59 = getelementptr inbounds %struct.Vec2d, %struct.Vec2d* %5, i32 0, i32 1
  %60 = load double, double* %59, align 8
  store double %60, double* %58, align 8
  %61 = load %struct.LaneInfo*, %struct.LaneInfo** %7, align 8
  %62 = call i32 @GetProjection(%struct.LaneInfo* %61, %struct.Vec2d* %10, double* %8, double* %9)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

; <label>:64:                                     ; preds = %54
  br label %80

; <label>:65:                                     ; preds = %54
  %66 = load double, double* %8, align 8
  %67 = fcmp olt double %66, -1.000000e+00
  br i1 %67, label %75, label %68

; <label>:68:                                     ; preds = %65
  %69 = load double, double* %8, align 8
  %70 = load %struct.LaneInfo*, %struct.LaneInfo** %7, align 8
  %71 = getelementptr inbounds %struct.LaneInfo, %struct.LaneInfo* %70, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = fadd double %72, 1.000000e+00
  %74 = fcmp ogt double %69, %73
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %68, %65
  br label %80

; <label>:76:                                     ; preds = %68
  %77 = load %struct.LaneInfo*, %struct.LaneInfo** %7, align 8
  %78 = load double, double* %8, align 8
  %79 = call %struct.LaneWaypoint* @LaneWaypoint2(%struct.LaneInfo* %77, double %78)
  store %struct.LaneWaypoint* %79, %struct.LaneWaypoint** %2, align 8
  br label %85

; <label>:80:                                     ; preds = %75, %64
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %6, align 8
  br label %37

; <label>:83:                                     ; preds = %37
  %84 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %4, align 8
  store %struct.LaneWaypoint* %84, %struct.LaneWaypoint** %2, align 8
  br label %85

; <label>:85:                                     ; preds = %83, %76, %52, %16
  %86 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %2, align 8
  ret %struct.LaneWaypoint* %86
}

declare %struct.LaneInfo* @GetLaneById(i32) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)"}
