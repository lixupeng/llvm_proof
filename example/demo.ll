; ModuleID = 'demo.c'
source_filename = "demo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PncMap = type { %struct.RoutingResponse, %struct.VehicleState, %struct.LaneWaypoint, %struct.Vector_WaypointIndex, %struct.Vector_RouteIndex, %struct.Set_String, %struct.Set_String, i32, i32, i32, i32, i8 }
%struct.RoutingResponse = type { %struct.RoutingRequest, %struct.RoadSegment*, i32 }
%struct.RoutingRequest = type { %struct.Vector_LaneWaypoint* }
%struct.Vector_LaneWaypoint = type { %struct.LaneWaypoint*, %struct.LaneWaypoint*, i32 }
%struct.RoadSegment = type { %struct.String, %struct.Passage*, i32 }
%struct.String = type {}
%struct.Passage = type { %struct.LaneSegment*, i32 }
%struct.LaneSegment = type { %struct.String, %struct.Lane* }
%struct.Lane = type {}
%struct.VehicleState = type {}
%struct.LaneWaypoint = type { %struct.String, double }
%struct.Vector_WaypointIndex = type { %struct.WaypointIndex*, %struct.WaypointIndex*, i32 }
%struct.WaypointIndex = type { %struct.LaneWaypoint, i32 }
%struct.Vector_RouteIndex = type { %struct.RouteIndex*, %struct.RouteIndex*, i32 }
%struct.RouteIndex = type { %struct.LaneSegment, %struct.Index }
%struct.Index = type { i32, i32, i32 }
%struct.Set_String = type {}
%struct.Vector_RouteIndex.0 = type opaque
%struct.Vector_RouteIndex.1 = type opaque
%struct.Vector_RouteIndex.2 = type opaque
%struct.Vector_RouteIndex.3 = type opaque
%struct.Vector_WaypointIndex.4 = type opaque

@FLAGS_replan_lateral_distance_threshold = external local_unnamed_addr global i32, align 4
@FLAGS_replan_longitudinal_distance_threshold = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define signext i8 @UpdateVehicleState(%struct.PncMap*, %struct.VehicleState*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 0
  %4 = tail call signext i8 @ValidateRouting(%struct.RoutingResponse* %3) #3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %58, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 1
  %8 = tail call signext i8 @has_x(%struct.VehicleState* %7) #3
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call double @DistanceXY(%struct.VehicleState* %7, %struct.VehicleState* %1) #3
  %12 = load i32, i32* @FLAGS_replan_lateral_distance_threshold, align 4, !tbaa !2
  %13 = load i32, i32* @FLAGS_replan_longitudinal_distance_threshold, align 4, !tbaa !2
  %14 = add nsw i32 %13, %12
  %15 = sitofp i32 %14 to double
  %16 = fcmp ogt double %11, %15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %6, %10
  %18 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 7
  store i32 0, i32* %18, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 8
  store i32 -1, i32* %19, align 4, !tbaa !18
  %20 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11
  store i8 0, i8* %20, align 8, !tbaa !19
  br label %21

; <label>:21:                                     ; preds = %17, %10
  %22 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 2
  %23 = tail call signext i8 @GetNearestPointFromRouting(%struct.VehicleState* %1, %struct.LaneWaypoint* %22) #3
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %58, label %25

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @GetWaypointIndex(%struct.LaneWaypoint* %22) #3
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %58, label %28

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 4
  %30 = bitcast %struct.Vector_RouteIndex* %29 to %struct.Vector_RouteIndex.0*
  %31 = tail call i32 @size_RouteIndex(%struct.Vector_RouteIndex.0* %30) #3
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %58

; <label>:33:                                     ; preds = %28
  tail call void @UpdateNextRoutingWaypointIndex(%struct.PncMap* %0, i32 %26) #3
  %34 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 8
  store i32 %26, i32* %34, align 4, !tbaa !18
  tail call void @UpdateRoutingRange(%struct.PncMap* %0, i32 %26) #3
  %35 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 3
  %36 = tail call signext i8 @empty_WaypointIndex(%struct.Vector_WaypointIndex* %35) #3
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %58

; <label>:38:                                     ; preds = %33
  %39 = tail call %struct.WaypointIndex* @back_WaypointIndex(%struct.Vector_WaypointIndex* %35) #3
  %40 = getelementptr inbounds %struct.WaypointIndex, %struct.WaypointIndex* %39, i64 0, i32 0
  %41 = tail call i32 @GetWaypointIndex(%struct.LaneWaypoint* %40) #3
  %42 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 7
  %43 = load i32, i32* %42, align 8, !tbaa !6
  %44 = tail call i32 @size_WaypointIndex(%struct.Vector_WaypointIndex* %35) #3
  %45 = add i32 %44, -1
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %56, label %47

; <label>:47:                                     ; preds = %38
  %48 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11
  %49 = load i8, i8* %48, align 8, !tbaa !19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %58

; <label>:51:                                     ; preds = %47
  %52 = tail call %struct.WaypointIndex* @back_WaypointIndex(%struct.Vector_WaypointIndex* nonnull %35) #3
  %53 = getelementptr inbounds %struct.WaypointIndex, %struct.WaypointIndex* %52, i64 0, i32 1
  %54 = load i32, i32* %53, align 8, !tbaa !20
  %55 = icmp eq i32 %41, %54
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %51, %38
  %57 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11
  store i8 1, i8* %57, align 8, !tbaa !19
  br label %58

; <label>:58:                                     ; preds = %28, %25, %33, %47, %56, %51, %21, %2
  %59 = phi i8 [ 0, %2 ], [ 0, %21 ], [ 0, %28 ], [ 0, %25 ], [ 0, %33 ], [ 1, %47 ], [ 1, %56 ], [ 1, %51 ]
  ret i8 %59
}

declare signext i8 @ValidateRouting(%struct.RoutingResponse*) local_unnamed_addr #1

declare signext i8 @has_x(%struct.VehicleState*) local_unnamed_addr #1

declare double @DistanceXY(%struct.VehicleState*, %struct.VehicleState*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare signext i8 @GetNearestPointFromRouting(%struct.VehicleState*, %struct.LaneWaypoint*) local_unnamed_addr #1

declare i32 @GetWaypointIndex(%struct.LaneWaypoint*) local_unnamed_addr #1

declare i32 @size_RouteIndex(%struct.Vector_RouteIndex.0*) local_unnamed_addr #1

declare void @UpdateNextRoutingWaypointIndex(%struct.PncMap*, i32) local_unnamed_addr #1

declare void @UpdateRoutingRange(%struct.PncMap*, i32) local_unnamed_addr #1

declare signext i8 @empty_WaypointIndex(%struct.Vector_WaypointIndex*) local_unnamed_addr #1

declare %struct.WaypointIndex* @back_WaypointIndex(%struct.Vector_WaypointIndex*) local_unnamed_addr #1

declare i32 @size_WaypointIndex(%struct.Vector_WaypointIndex*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define signext i8 @UpdateRoutingResponse(%struct.PncMap*, %struct.RoutingResponse* nocapture readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 5
  tail call void @clear_String(%struct.Set_String* %3) #3
  %4 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 4
  %5 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.1*
  tail call void @clear_RouteIndex(%struct.Vector_RouteIndex.1* %5) #3
  %6 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 6
  tail call void @clear_String(%struct.Set_String* %6) #3
  %7 = getelementptr inbounds %struct.RoutingResponse, %struct.RoutingResponse* %1, i64 0, i32 2
  %8 = load i32, i32* %7, align 8, !tbaa !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %65, label %10

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.RoutingResponse, %struct.RoutingResponse* %1, i64 0, i32 1
  %12 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.2*
  %13 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.3*
  br label %14

; <label>:14:                                     ; preds = %10, %60
  %15 = phi i64 [ 0, %10 ], [ %61, %60 ]
  %16 = load %struct.RoadSegment*, %struct.RoadSegment** %11, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.RoadSegment, %struct.RoadSegment* %16, i64 %15, i32 2
  %18 = load i32, i32* %17, align 8, !tbaa !24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %60, label %20

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.RoadSegment, %struct.RoadSegment* %16, i64 %15, i32 1
  %22 = trunc i64 %15 to i32
  br label %23

; <label>:23:                                     ; preds = %20, %55
  %24 = phi i64 [ 0, %20 ], [ %56, %55 ]
  %25 = load %struct.Passage*, %struct.Passage** %21, align 8, !tbaa !26
  %26 = getelementptr inbounds %struct.Passage, %struct.Passage* %25, i64 %24, i32 1
  %27 = load i32, i32* %26, align 8, !tbaa !27
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %55, label %29

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.Passage, %struct.Passage* %25, i64 %24, i32 0
  %31 = trunc i64 %24 to i32
  br label %32

; <label>:32:                                     ; preds = %29, %43
  %33 = phi i64 [ 0, %29 ], [ %51, %43 ]
  tail call void @insert_String(%struct.Set_String* %6) #3
  tail call void @emplace_back_RouteIndex(%struct.Vector_RouteIndex.2* %12) #3
  %34 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #3
  %35 = load %struct.LaneSegment*, %struct.LaneSegment** %30, align 8, !tbaa !29
  %36 = getelementptr inbounds %struct.LaneSegment, %struct.LaneSegment* %35, i64 %33
  %37 = tail call %struct.Lane* @ToLaneSegment(%struct.LaneSegment* %36) #3
  %38 = bitcast %struct.RouteIndex* %34 to %struct.Lane**
  store %struct.Lane* %37, %struct.Lane** %38, align 8
  %39 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #3
  %40 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %39, i64 0, i32 0, i32 1
  %41 = load %struct.Lane*, %struct.Lane** %40, align 8, !tbaa !30
  %42 = icmp eq %struct.Lane* %41, null
  br i1 %42, label %130, label %43

; <label>:43:                                     ; preds = %32
  %44 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #3
  %45 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %44, i64 0, i32 1, i32 0
  store i32 %22, i32* %45, align 8, !tbaa !34
  %46 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #3
  %47 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %46, i64 0, i32 1, i32 1
  store i32 %31, i32* %47, align 4, !tbaa !35
  %48 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #3
  %49 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %48, i64 0, i32 1, i32 2
  %50 = trunc i64 %33 to i32
  store i32 %50, i32* %49, align 8, !tbaa !36
  %51 = add nuw nsw i64 %33, 1
  %52 = load i32, i32* %26, align 8, !tbaa !27
  %53 = trunc i64 %51 to i32
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %32, label %55

; <label>:55:                                     ; preds = %43, %23
  %56 = add nuw nsw i64 %24, 1
  %57 = load i32, i32* %17, align 8, !tbaa !24
  %58 = trunc i64 %56 to i32
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %23, label %60

; <label>:60:                                     ; preds = %55, %14
  %61 = add nuw nsw i64 %15, 1
  %62 = load i32, i32* %7, align 8, !tbaa !22
  %63 = trunc i64 %61 to i32
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %14, label %65

; <label>:65:                                     ; preds = %60, %2
  %66 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 9
  store i32 0, i32* %66, align 8, !tbaa !37
  %67 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 10
  store i32 0, i32* %67, align 4, !tbaa !38
  %68 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 8
  store i32 -1, i32* %68, align 4, !tbaa !18
  %69 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 7
  store i32 0, i32* %69, align 8, !tbaa !6
  tail call void @UpdateRoutingRange(%struct.PncMap* %0, i32 -1) #3
  %70 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 3
  %71 = bitcast %struct.Vector_WaypointIndex* %70 to %struct.Vector_WaypointIndex.4*
  tail call void @clear_WaypointIndex(%struct.Vector_WaypointIndex.4* %71) #3
  %72 = getelementptr inbounds %struct.RoutingResponse, %struct.RoutingResponse* %1, i64 0, i32 0, i32 0
  %73 = load %struct.Vector_LaneWaypoint*, %struct.Vector_LaneWaypoint** %72, align 8, !tbaa !39
  %74 = tail call signext i8 @empty_LaneWaypoint(%struct.Vector_LaneWaypoint* %73) #3
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %130

; <label>:76:                                     ; preds = %65
  %77 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.0*
  %78 = tail call i32 @size_RouteIndex(%struct.Vector_RouteIndex.0* %77) #3
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.Vector_RouteIndex, %struct.Vector_RouteIndex* %4, i64 0, i32 0
  %82 = getelementptr inbounds %struct.Vector_LaneWaypoint, %struct.Vector_LaneWaypoint* %73, i64 0, i32 0
  br label %92

; <label>:83:                                     ; preds = %125, %76
  %84 = bitcast %struct.PncMap* %0 to i8*
  %85 = bitcast %struct.RoutingResponse* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 24, i32 8, i1 false), !tbaa.struct !40
  %86 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 2
  %87 = tail call %struct.LaneWaypoint* (...) @new_LaneWaypoint_1() #3
  %88 = bitcast %struct.LaneWaypoint* %87 to i64*
  %89 = bitcast %struct.LaneWaypoint* %86 to i64*
  %90 = load i64, i64* %88, align 8, !tbaa !42
  store i64 %90, i64* %89, align 8, !tbaa !42
  %91 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11
  store i8 0, i8* %91, align 8, !tbaa !19
  br label %130

; <label>:92:                                     ; preds = %80, %125
  %93 = phi i32 [ 0, %80 ], [ %127, %125 ]
  %94 = phi i32 [ 0, %80 ], [ %126, %125 ]
  %95 = tail call i32 @size_LaneWaypoint(%struct.Vector_LaneWaypoint* %73) #3
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %125

; <label>:97:                                     ; preds = %92
  %98 = zext i32 %93 to i64
  %99 = sext i32 %94 to i64
  br label %100

; <label>:100:                                    ; preds = %97, %110
  %101 = phi i64 [ %99, %97 ], [ %120, %110 ]
  %102 = phi i32 [ %94, %97 ], [ %121, %110 ]
  %103 = load %struct.RouteIndex*, %struct.RouteIndex** %81, align 8, !tbaa !43
  %104 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %103, i64 %98, i32 0
  %105 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %82, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %105, i64 %101
  %107 = tail call signext i8 @WithinLaneSegment(%struct.LaneSegment* %104, %struct.LaneWaypoint* %106) #3
  %108 = icmp eq i8 %107, 0
  %109 = trunc i64 %101 to i32
  br i1 %108, label %125, label %110

; <label>:110:                                    ; preds = %100
  %111 = load %struct.RouteIndex*, %struct.RouteIndex** %81, align 8, !tbaa !43
  %112 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %111, i64 %98, i32 0, i32 1
  %113 = load %struct.Lane*, %struct.Lane** %112, align 8, !tbaa !30
  %114 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %82, align 8, !tbaa !44
  %115 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %114, i64 %101, i32 1
  %116 = load double, double* %115, align 8, !tbaa !46
  %117 = tail call %struct.LaneWaypoint* @new_LaneWaypoint_2(%struct.Lane* %113, double %116) #3
  %118 = bitcast %struct.LaneWaypoint* %117 to double*
  %119 = load double, double* %118, align 8
  tail call void @emplace_back_WaypointIndex(%struct.Vector_WaypointIndex* nonnull %70, double %119, i32 %93) #3
  %120 = add i64 %101, 1
  %121 = add nsw i32 %102, 1
  %122 = tail call i32 @size_LaneWaypoint(%struct.Vector_LaneWaypoint* nonnull %73) #3
  %123 = trunc i64 %120 to i32
  %124 = icmp ugt i32 %122, %123
  br i1 %124, label %100, label %125

; <label>:125:                                    ; preds = %110, %100, %92
  %126 = phi i32 [ %94, %92 ], [ %109, %100 ], [ %121, %110 ]
  %127 = add i32 %93, 1
  %128 = tail call i32 @size_RouteIndex(%struct.Vector_RouteIndex.0* %77) #3
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %92, label %83

; <label>:130:                                    ; preds = %32, %83, %65
  %131 = phi i8 [ 1, %83 ], [ 0, %65 ], [ 0, %32 ]
  ret i8 %131
}

declare void @clear_String(%struct.Set_String*) local_unnamed_addr #1

declare void @clear_RouteIndex(%struct.Vector_RouteIndex.1*) local_unnamed_addr #1

declare void @insert_String(%struct.Set_String*) local_unnamed_addr #1

declare void @emplace_back_RouteIndex(%struct.Vector_RouteIndex.2*) local_unnamed_addr #1

declare %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3*) local_unnamed_addr #1

declare %struct.Lane* @ToLaneSegment(%struct.LaneSegment*) local_unnamed_addr #1

declare void @clear_WaypointIndex(%struct.Vector_WaypointIndex.4*) local_unnamed_addr #1

declare signext i8 @empty_LaneWaypoint(%struct.Vector_LaneWaypoint*) local_unnamed_addr #1

declare i32 @size_LaneWaypoint(%struct.Vector_LaneWaypoint*) local_unnamed_addr #1

declare signext i8 @WithinLaneSegment(%struct.LaneSegment*, %struct.LaneWaypoint*) local_unnamed_addr #1

declare void @emplace_back_WaypointIndex(%struct.Vector_WaypointIndex*, double, i32) local_unnamed_addr #1

declare %struct.LaneWaypoint* @new_LaneWaypoint_2(%struct.Lane*, double) local_unnamed_addr #1

declare %struct.LaneWaypoint* @new_LaneWaypoint_1(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 80}
!7 = !{!"PncMap", !8, i64 0, !11, i64 24, !12, i64 24, !15, i64 32, !16, i64 56, !17, i64 80, !17, i64 80, !3, i64 80, !3, i64 84, !3, i64 88, !3, i64 92, !4, i64 96}
!8 = !{!"RoutingResponse", !9, i64 0, !10, i64 8, !3, i64 16}
!9 = !{!"RoutingRequest", !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"VehicleState"}
!12 = !{!"LaneWaypoint", !13, i64 0, !14, i64 0}
!13 = !{!"String"}
!14 = !{!"double", !4, i64 0}
!15 = !{!"Vector_WaypointIndex", !10, i64 0, !10, i64 8, !3, i64 16}
!16 = !{!"Vector_RouteIndex", !10, i64 0, !10, i64 8, !3, i64 16}
!17 = !{!"Set_String"}
!18 = !{!7, !3, i64 84}
!19 = !{!7, !4, i64 96}
!20 = !{!21, !3, i64 8}
!21 = !{!"WaypointIndex", !12, i64 0, !3, i64 8}
!22 = !{!8, !3, i64 16}
!23 = !{!8, !10, i64 8}
!24 = !{!25, !3, i64 8}
!25 = !{!"RoadSegment", !13, i64 0, !10, i64 0, !3, i64 8}
!26 = !{!25, !10, i64 0}
!27 = !{!28, !3, i64 8}
!28 = !{!"Passage", !10, i64 0, !3, i64 8}
!29 = !{!28, !10, i64 0}
!30 = !{!31, !10, i64 0}
!31 = !{!"RouteIndex", !32, i64 0, !33, i64 8}
!32 = !{!"LaneSegment", !13, i64 0, !10, i64 0}
!33 = !{!"Index", !3, i64 0, !3, i64 4, !3, i64 8}
!34 = !{!31, !3, i64 8}
!35 = !{!31, !3, i64 12}
!36 = !{!31, !3, i64 16}
!37 = !{!7, !3, i64 88}
!38 = !{!7, !3, i64 92}
!39 = !{!8, !10, i64 0}
!40 = !{i64 0, i64 8, !41, i64 8, i64 8, !41, i64 16, i64 4, !2}
!41 = !{!10, !10, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!7, !10, i64 56}
!44 = !{!45, !10, i64 0}
!45 = !{!"Vector_LaneWaypoint", !10, i64 0, !10, i64 8, !3, i64 16}
!46 = !{!12, !14, i64 0}
