; ModuleID = 'example/demo.c'
source_filename = "example/demo.c"
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
define signext i8 @UpdateVehicleState(%struct.PncMap*, %struct.VehicleState*) local_unnamed_addr #0 !dbg !7 {
  tail call void @llvm.dbg.value(metadata %struct.PncMap* %0, i64 0, metadata !97, metadata !101), !dbg !102
  tail call void @llvm.dbg.value(metadata %struct.VehicleState* %1, i64 0, metadata !98, metadata !101), !dbg !103
  %3 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 0, !dbg !104
  %4 = tail call signext i8 @ValidateRouting(%struct.RoutingResponse* %3) #4, !dbg !106
  %5 = icmp eq i8 %4, 0, !dbg !106
  br i1 %5, label %58, label %6, !dbg !107

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 1, !dbg !108
  %8 = tail call signext i8 @has_x(%struct.VehicleState* %7) #4, !dbg !110
  %9 = icmp eq i8 %8, 0, !dbg !110
  br i1 %9, label %17, label %10, !dbg !111

; <label>:10:                                     ; preds = %6
  %11 = tail call double @DistanceXY(%struct.VehicleState* %7, %struct.VehicleState* %1) #4, !dbg !112
  %12 = load i32, i32* @FLAGS_replan_lateral_distance_threshold, align 4, !dbg !113, !tbaa !114
  %13 = load i32, i32* @FLAGS_replan_longitudinal_distance_threshold, align 4, !dbg !118, !tbaa !114
  %14 = add nsw i32 %13, %12, !dbg !119
  %15 = sitofp i32 %14 to double, !dbg !113
  %16 = fcmp ogt double %11, %15, !dbg !120
  br i1 %16, label %17, label %21, !dbg !121

; <label>:17:                                     ; preds = %6, %10
  %18 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 7, !dbg !122
  store i32 0, i32* %18, align 8, !dbg !124, !tbaa !125
  %19 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 8, !dbg !137
  store i32 -1, i32* %19, align 4, !dbg !138, !tbaa !139
  %20 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11, !dbg !140
  store i8 0, i8* %20, align 8, !dbg !141, !tbaa !142
  br label %21, !dbg !143

; <label>:21:                                     ; preds = %17, %10
  %22 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 2, !dbg !144
  %23 = tail call signext i8 @GetNearestPointFromRouting(%struct.VehicleState* %1, %struct.LaneWaypoint* %22) #4, !dbg !146
  %24 = icmp eq i8 %23, 0, !dbg !146
  br i1 %24, label %58, label %25, !dbg !147

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @GetWaypointIndex(%struct.LaneWaypoint* %22) #4, !dbg !148
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !99, metadata !101), !dbg !149
  %27 = icmp slt i32 %26, 0, !dbg !150
  br i1 %27, label %58, label %28, !dbg !152

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 4, !dbg !153
  %30 = bitcast %struct.Vector_RouteIndex* %29 to %struct.Vector_RouteIndex.0*, !dbg !154
  %31 = tail call i32 @size_RouteIndex(%struct.Vector_RouteIndex.0* %30) #4, !dbg !155
  %32 = icmp slt i32 %26, %31, !dbg !156
  br i1 %32, label %33, label %58, !dbg !157

; <label>:33:                                     ; preds = %28
  tail call void @UpdateNextRoutingWaypointIndex(%struct.PncMap* %0, i32 %26) #4, !dbg !158
  %34 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 8, !dbg !159
  store i32 %26, i32* %34, align 4, !dbg !160, !tbaa !139
  tail call void @UpdateRoutingRange(%struct.PncMap* %0, i32 %26) #4, !dbg !161
  %35 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 3, !dbg !162
  %36 = tail call signext i8 @empty_WaypointIndex(%struct.Vector_WaypointIndex* %35) #4, !dbg !164
  %37 = icmp eq i8 %36, 0, !dbg !164
  br i1 %37, label %38, label %58, !dbg !165

; <label>:38:                                     ; preds = %33
  %39 = tail call %struct.WaypointIndex* @back_WaypointIndex(%struct.Vector_WaypointIndex* %35) #4, !dbg !166
  %40 = getelementptr inbounds %struct.WaypointIndex, %struct.WaypointIndex* %39, i64 0, i32 0, !dbg !167
  %41 = tail call i32 @GetWaypointIndex(%struct.LaneWaypoint* %40) #4, !dbg !168
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !100, metadata !101), !dbg !169
  %42 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 7, !dbg !170
  %43 = load i32, i32* %42, align 8, !dbg !170, !tbaa !125
  %44 = tail call i32 @size_WaypointIndex(%struct.Vector_WaypointIndex* %35) #4, !dbg !172
  %45 = add i32 %44, -1, !dbg !173
  %46 = icmp eq i32 %43, %45, !dbg !174
  br i1 %46, label %56, label %47, !dbg !175

; <label>:47:                                     ; preds = %38
  %48 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11, !dbg !176
  %49 = load i8, i8* %48, align 8, !dbg !176, !tbaa !142
  %50 = icmp eq i8 %49, 0, !dbg !177
  br i1 %50, label %51, label %58, !dbg !178

; <label>:51:                                     ; preds = %47
  %52 = tail call %struct.WaypointIndex* @back_WaypointIndex(%struct.Vector_WaypointIndex* nonnull %35) #4, !dbg !179
  %53 = getelementptr inbounds %struct.WaypointIndex, %struct.WaypointIndex* %52, i64 0, i32 1, !dbg !180
  %54 = load i32, i32* %53, align 8, !dbg !180, !tbaa !181
  %55 = icmp eq i32 %41, %54, !dbg !183
  br i1 %55, label %56, label %58, !dbg !184

; <label>:56:                                     ; preds = %51, %38
  %57 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11, !dbg !185
  store i8 1, i8* %57, align 8, !dbg !187, !tbaa !142
  br label %58, !dbg !188

; <label>:58:                                     ; preds = %28, %25, %33, %47, %56, %51, %21, %2
  %59 = phi i8 [ 0, %2 ], [ 0, %21 ], [ 0, %28 ], [ 0, %25 ], [ 0, %33 ], [ 1, %47 ], [ 1, %56 ], [ 1, %51 ]
  ret i8 %59, !dbg !189
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
define signext i8 @UpdateRoutingResponse(%struct.PncMap*, %struct.RoutingResponse* nocapture readonly) local_unnamed_addr #0 !dbg !190 {
  tail call void @llvm.dbg.value(metadata %struct.PncMap* %0, i64 0, metadata !196, metadata !101), !dbg !218
  tail call void @llvm.dbg.value(metadata %struct.RoutingResponse* %1, i64 0, metadata !197, metadata !101), !dbg !219
  %3 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 5, !dbg !220
  tail call void @clear_String(%struct.Set_String* %3) #4, !dbg !221
  %4 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 4, !dbg !222
  %5 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.1*, !dbg !223
  tail call void @clear_RouteIndex(%struct.Vector_RouteIndex.1* %5) #4, !dbg !224
  %6 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 6, !dbg !225
  tail call void @clear_String(%struct.Set_String* %6) #4, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !198, metadata !101), !dbg !227
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !198, metadata !101), !dbg !227
  %7 = getelementptr inbounds %struct.RoutingResponse, %struct.RoutingResponse* %1, i64 0, i32 2, !dbg !228
  %8 = load i32, i32* %7, align 8, !dbg !228, !tbaa !229
  %9 = icmp eq i32 %8, 0, !dbg !230
  br i1 %9, label %65, label %10, !dbg !231

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.RoutingResponse, %struct.RoutingResponse* %1, i64 0, i32 1
  %12 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.2*
  %13 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.3*
  br label %14, !dbg !231

; <label>:14:                                     ; preds = %10, %60
  %15 = phi i64 [ 0, %10 ], [ %61, %60 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !198, metadata !101), !dbg !227
  %16 = load %struct.RoadSegment*, %struct.RoadSegment** %11, align 8, !dbg !232, !tbaa !233
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !205, metadata !101), !dbg !234
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !205, metadata !101), !dbg !234
  %17 = getelementptr inbounds %struct.RoadSegment, %struct.RoadSegment* %16, i64 %15, i32 2, !dbg !235
  %18 = load i32, i32* %17, align 8, !dbg !235, !tbaa !236
  %19 = icmp eq i32 %18, 0, !dbg !238
  br i1 %19, label %60, label %20, !dbg !239

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds %struct.RoadSegment, %struct.RoadSegment* %16, i64 %15, i32 1
  %22 = trunc i64 %15 to i32
  br label %23, !dbg !239

; <label>:23:                                     ; preds = %20, %55
  %24 = phi i64 [ 0, %20 ], [ %56, %55 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !205, metadata !101), !dbg !234
  %25 = load %struct.Passage*, %struct.Passage** %21, align 8, !dbg !240, !tbaa !241
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !212, metadata !101), !dbg !242
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !212, metadata !101), !dbg !242
  %26 = getelementptr inbounds %struct.Passage, %struct.Passage* %25, i64 %24, i32 1, !dbg !243
  %27 = load i32, i32* %26, align 8, !dbg !243, !tbaa !245
  %28 = icmp eq i32 %27, 0, !dbg !247
  br i1 %28, label %55, label %29, !dbg !248

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.Passage, %struct.Passage* %25, i64 %24, i32 0
  %31 = trunc i64 %24 to i32
  br label %32, !dbg !248

; <label>:32:                                     ; preds = %29, %43
  %33 = phi i64 [ 0, %29 ], [ %51, %43 ]
  tail call void @llvm.dbg.value(metadata i32 undef, i64 0, metadata !212, metadata !101), !dbg !242
  tail call void @insert_String(%struct.Set_String* %6) #4, !dbg !249
  tail call void @emplace_back_RouteIndex(%struct.Vector_RouteIndex.2* %12) #4, !dbg !251
  %34 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #4, !dbg !252
  %35 = load %struct.LaneSegment*, %struct.LaneSegment** %30, align 8, !dbg !253, !tbaa !254
  %36 = getelementptr inbounds %struct.LaneSegment, %struct.LaneSegment* %35, i64 %33, !dbg !255
  %37 = tail call %struct.Lane* @ToLaneSegment(%struct.LaneSegment* %36) #4, !dbg !256
  %38 = bitcast %struct.RouteIndex* %34 to %struct.Lane**, !dbg !256
  store %struct.Lane* %37, %struct.Lane** %38, align 8, !dbg !256
  %39 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #4, !dbg !257
  %40 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %39, i64 0, i32 0, i32 1, !dbg !259
  %41 = load %struct.Lane*, %struct.Lane** %40, align 8, !dbg !259, !tbaa !260
  %42 = icmp eq %struct.Lane* %41, null, !dbg !264
  br i1 %42, label %130, label %43, !dbg !265

; <label>:43:                                     ; preds = %32
  %44 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #4, !dbg !266
  %45 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %44, i64 0, i32 1, i32 0, !dbg !267
  store i32 %22, i32* %45, align 8, !dbg !268, !tbaa !269
  %46 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #4, !dbg !270
  %47 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %46, i64 0, i32 1, i32 1, !dbg !271
  store i32 %31, i32* %47, align 4, !dbg !272, !tbaa !273
  %48 = tail call %struct.RouteIndex* @back_RouteIndex(%struct.Vector_RouteIndex.3* %13) #4, !dbg !274
  %49 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %48, i64 0, i32 1, i32 2, !dbg !275
  %50 = trunc i64 %33 to i32, !dbg !276
  store i32 %50, i32* %49, align 8, !dbg !276, !tbaa !277
  %51 = add nuw nsw i64 %33, 1, !dbg !278
  %52 = load i32, i32* %26, align 8, !dbg !243, !tbaa !245
  %53 = trunc i64 %51 to i32, !dbg !247
  %54 = icmp ugt i32 %52, %53, !dbg !247
  br i1 %54, label %32, label %55, !dbg !248, !llvm.loop !279

; <label>:55:                                     ; preds = %43, %23
  %56 = add nuw nsw i64 %24, 1, !dbg !281
  %57 = load i32, i32* %17, align 8, !dbg !235, !tbaa !236
  %58 = trunc i64 %56 to i32, !dbg !238
  %59 = icmp ugt i32 %57, %58, !dbg !238
  br i1 %59, label %23, label %60, !dbg !239, !llvm.loop !282

; <label>:60:                                     ; preds = %55, %14
  %61 = add nuw nsw i64 %15, 1, !dbg !284
  %62 = load i32, i32* %7, align 8, !dbg !228, !tbaa !229
  %63 = trunc i64 %61 to i32, !dbg !230
  %64 = icmp ugt i32 %62, %63, !dbg !230
  br i1 %64, label %14, label %65, !dbg !231, !llvm.loop !285

; <label>:65:                                     ; preds = %60, %2
  %66 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 9, !dbg !287
  store i32 0, i32* %66, align 8, !dbg !288, !tbaa !289
  %67 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 10, !dbg !290
  store i32 0, i32* %67, align 4, !dbg !291, !tbaa !292
  %68 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 8, !dbg !293
  store i32 -1, i32* %68, align 4, !dbg !294, !tbaa !139
  %69 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 7, !dbg !295
  store i32 0, i32* %69, align 8, !dbg !296, !tbaa !125
  tail call void @UpdateRoutingRange(%struct.PncMap* %0, i32 -1) #4, !dbg !297
  %70 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 3, !dbg !298
  %71 = bitcast %struct.Vector_WaypointIndex* %70 to %struct.Vector_WaypointIndex.4*, !dbg !299
  tail call void @clear_WaypointIndex(%struct.Vector_WaypointIndex.4* %71) #4, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !101), !dbg !301
  %72 = getelementptr inbounds %struct.RoutingResponse, %struct.RoutingResponse* %1, i64 0, i32 0, i32 0, !dbg !302
  %73 = load %struct.Vector_LaneWaypoint*, %struct.Vector_LaneWaypoint** %72, align 8, !dbg !302, !tbaa !303
  tail call void @llvm.dbg.value(metadata %struct.Vector_LaneWaypoint* %73, i64 0, metadata !215, metadata !101), !dbg !304
  %74 = tail call signext i8 @empty_LaneWaypoint(%struct.Vector_LaneWaypoint* %73) #4, !dbg !305
  %75 = icmp eq i8 %74, 0, !dbg !305
  br i1 %75, label %76, label %130, !dbg !307

; <label>:76:                                     ; preds = %65
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !216, metadata !101), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !216, metadata !101), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !214, metadata !101), !dbg !301
  %77 = bitcast %struct.Vector_RouteIndex* %4 to %struct.Vector_RouteIndex.0*, !dbg !309
  %78 = tail call i32 @size_RouteIndex(%struct.Vector_RouteIndex.0* %77) #4, !dbg !311
  %79 = icmp eq i32 %78, 0, !dbg !312
  br i1 %79, label %83, label %80, !dbg !313

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.Vector_RouteIndex, %struct.Vector_RouteIndex* %4, i64 0, i32 0
  %82 = getelementptr inbounds %struct.Vector_LaneWaypoint, %struct.Vector_LaneWaypoint* %73, i64 0, i32 0
  br label %92, !dbg !313

; <label>:83:                                     ; preds = %125, %76
  %84 = bitcast %struct.PncMap* %0 to i8*, !dbg !314
  %85 = bitcast %struct.RoutingResponse* %1 to i8*, !dbg !314
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 24, i32 8, i1 false), !dbg !314, !tbaa.struct !315
  %86 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 2, !dbg !317
  %87 = tail call %struct.LaneWaypoint* (...) @new_LaneWaypoint_1() #4, !dbg !318
  %88 = bitcast %struct.LaneWaypoint* %87 to i64*, !dbg !319
  %89 = bitcast %struct.LaneWaypoint* %86 to i64*, !dbg !319
  %90 = load i64, i64* %88, align 8, !dbg !319, !tbaa !320
  store i64 %90, i64* %89, align 8, !dbg !319, !tbaa !320
  %91 = getelementptr inbounds %struct.PncMap, %struct.PncMap* %0, i64 0, i32 11, !dbg !321
  store i8 0, i8* %91, align 8, !dbg !322, !tbaa !142
  br label %130, !dbg !323

; <label>:92:                                     ; preds = %80, %125
  %93 = phi i32 [ 0, %80 ], [ %127, %125 ]
  %94 = phi i32 [ 0, %80 ], [ %126, %125 ]
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !214, metadata !101), !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %93, i64 0, metadata !216, metadata !101), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !214, metadata !101), !dbg !301
  %95 = tail call i32 @size_LaneWaypoint(%struct.Vector_LaneWaypoint* %73) #4, !dbg !324
  %96 = icmp ult i32 %94, %95, !dbg !326
  br i1 %96, label %97, label %125, !dbg !327

; <label>:97:                                     ; preds = %92
  %98 = zext i32 %93 to i64
  %99 = sext i32 %94 to i64, !dbg !327
  br label %100, !dbg !327

; <label>:100:                                    ; preds = %97, %110
  %101 = phi i64 [ %99, %97 ], [ %120, %110 ]
  %102 = phi i32 [ %94, %97 ], [ %121, %110 ]
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !214, metadata !101), !dbg !301
  %103 = load %struct.RouteIndex*, %struct.RouteIndex** %81, align 8, !dbg !328, !tbaa !329
  %104 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %103, i64 %98, i32 0, !dbg !330
  %105 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %82, align 8, !dbg !331, !tbaa !332
  %106 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %105, i64 %101, !dbg !334
  %107 = tail call signext i8 @WithinLaneSegment(%struct.LaneSegment* %104, %struct.LaneWaypoint* %106) #4, !dbg !335
  %108 = icmp eq i8 %107, 0, !dbg !327
  %109 = trunc i64 %101 to i32, !dbg !336
  br i1 %108, label %125, label %110, !dbg !336

; <label>:110:                                    ; preds = %100
  %111 = load %struct.RouteIndex*, %struct.RouteIndex** %81, align 8, !dbg !337, !tbaa !329
  %112 = getelementptr inbounds %struct.RouteIndex, %struct.RouteIndex* %111, i64 %98, i32 0, i32 1, !dbg !339
  %113 = load %struct.Lane*, %struct.Lane** %112, align 8, !dbg !339, !tbaa !260
  %114 = load %struct.LaneWaypoint*, %struct.LaneWaypoint** %82, align 8, !dbg !340, !tbaa !332
  %115 = getelementptr inbounds %struct.LaneWaypoint, %struct.LaneWaypoint* %114, i64 %101, i32 1, !dbg !341
  %116 = load double, double* %115, align 8, !dbg !341, !tbaa !342
  %117 = tail call %struct.LaneWaypoint* @new_LaneWaypoint_2(%struct.Lane* %113, double %116) #4, !dbg !343
  %118 = bitcast %struct.LaneWaypoint* %117 to double*, !dbg !344
  %119 = load double, double* %118, align 8, !dbg !344
  tail call void @emplace_back_WaypointIndex(%struct.Vector_WaypointIndex* nonnull %70, double %119, i32 %93) #4, !dbg !344
  %120 = add i64 %101, 1, !dbg !345
  %121 = add nsw i32 %102, 1, !dbg !345
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !214, metadata !101), !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %121, i64 0, metadata !214, metadata !101), !dbg !301
  %122 = tail call i32 @size_LaneWaypoint(%struct.Vector_LaneWaypoint* nonnull %73) #4, !dbg !324
  %123 = trunc i64 %120 to i32, !dbg !326
  %124 = icmp ugt i32 %122, %123, !dbg !326
  br i1 %124, label %100, label %125, !dbg !327, !llvm.loop !346

; <label>:125:                                    ; preds = %110, %100, %92
  %126 = phi i32 [ %94, %92 ], [ %109, %100 ], [ %121, %110 ]
  %127 = add i32 %93, 1, !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !216, metadata !101), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %127, i64 0, metadata !216, metadata !101), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !214, metadata !101), !dbg !301
  %128 = tail call i32 @size_RouteIndex(%struct.Vector_RouteIndex.0* %77) #4, !dbg !311
  %129 = icmp ult i32 %127, %128, !dbg !312
  br i1 %129, label %92, label %83, !dbg !313, !llvm.loop !349

; <label>:130:                                    ; preds = %32, %83, %65
  %131 = phi i8 [ 1, %83 ], [ 0, %65 ], [ 0, %32 ]
  ret i8 %131, !dbg !351
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

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "example/demo.c", directory: "/home/parallels/llvm_proof")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 5.0.0-3~16.04.1 (tags/RELEASE_500/final)"}
!7 = distinct !DISubprogram(name: "UpdateVehicleState", scope: !1, file: !1, line: 117, type: !8, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !96)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !94}
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PncMap", file: !1, line: 92, size: 832, elements: !13)
!13 = !{!14, !55, !57, !58, !70, !86, !88, !89, !90, !91, !92, !93}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "routing_", scope: !12, file: !1, line: 93, baseType: !15, size: 192)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RoutingResponse", file: !1, line: 86, size: 192, elements: !16)
!16 = !{!17, !35, !54}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "route_request", scope: !15, file: !1, line: 87, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RoutingRequest", file: !1, line: 82, size: 64, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "waypoint", scope: !18, file: !1, line: 83, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_LaneWaypoint", file: !1, line: 26, size: 192, elements: !23)
!23 = !{!24, !32, !33}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !22, file: !1, line: 27, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneWaypoint", file: !1, line: 14, size: 64, elements: !27)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !26, file: !1, line: 15, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "String", file: !1, line: 4, elements: !2)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !26, file: !1, line: 16, baseType: !31, size: 64)
!31 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !22, file: !1, line: 28, baseType: !25, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !22, file: !1, line: 29, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "road", scope: !15, file: !1, line: 88, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RoadSegment", file: !1, line: 76, size: 128, elements: !38)
!38 = !{!39, !40, !53}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !37, file: !1, line: 77, baseType: !29)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "passage", scope: !37, file: !1, line: 78, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Passage", file: !1, line: 71, size: 128, elements: !43)
!43 = !{!44, !52}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !42, file: !1, line: 72, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LaneSegment", file: !1, line: 45, size: 64, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !46, file: !1, line: 46, baseType: !29)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "lane", scope: !46, file: !1, line: 47, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Lane", file: !1, line: 6, elements: !2)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !42, file: !1, line: 73, baseType: !34, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !37, file: !1, line: 79, baseType: !34, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !1, line: 89, baseType: !34, size: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "adc_state_", scope: !12, file: !1, line: 94, baseType: !56, offset: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VehicleState", file: !1, line: 8, elements: !2)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "adc_waypoint_", scope: !12, file: !1, line: 95, baseType: !26, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "routing_waypoint_index_", scope: !12, file: !1, line: 96, baseType: !59, size: 192, offset: 256)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_WaypointIndex", file: !1, line: 35, size: 192, elements: !60)
!60 = !{!61, !68, !69}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !59, file: !1, line: 36, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "WaypointIndex", file: !1, line: 21, size: 128, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "waypoint", scope: !63, file: !1, line: 22, baseType: !26, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !63, file: !1, line: 23, baseType: !67, size: 32, offset: 64)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !59, file: !1, line: 37, baseType: !62, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !59, file: !1, line: 38, baseType: !34, size: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "route_indices_", scope: !12, file: !1, line: 97, baseType: !71, size: 192, offset: 448)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vector_RouteIndex", file: !1, line: 65, size: 192, elements: !72)
!72 = !{!73, !84, !85}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !71, file: !1, line: 66, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RouteIndex", file: !1, line: 56, size: 192, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !75, file: !1, line: 57, baseType: !46, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !75, file: !1, line: 58, baseType: !79, size: 96, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Index", file: !1, line: 50, size: 96, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "road_index", scope: !79, file: !1, line: 51, baseType: !67, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "passage_index", scope: !79, file: !1, line: 52, baseType: !67, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "lane_index", scope: !79, file: !1, line: 53, baseType: !67, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !71, file: !1, line: 67, baseType: !74, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !71, file: !1, line: 68, baseType: !34, size: 32, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "range_lane_ids_", scope: !12, file: !1, line: 98, baseType: !87, offset: 640)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Set_String", file: !1, line: 10, elements: !2)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "all_lane_ids_", scope: !12, file: !1, line: 99, baseType: !87, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next_routing_waypoint_index_", scope: !12, file: !1, line: 100, baseType: !34, size: 32, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "adc_route_index_", scope: !12, file: !1, line: 101, baseType: !67, size: 32, offset: 672)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "range_start_", scope: !12, file: !1, line: 102, baseType: !67, size: 32, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "range_end_", scope: !12, file: !1, line: 103, baseType: !67, size: 32, offset: 736)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "stop_for_destination_", scope: !12, file: !1, line: 104, baseType: !10, size: 8, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!96 = !{!97, !98, !99, !100}
!97 = !DILocalVariable(name: "this", arg: 1, scope: !7, file: !1, line: 117, type: !11)
!98 = !DILocalVariable(name: "vehicle_state", arg: 2, scope: !7, file: !1, line: 117, type: !94)
!99 = !DILocalVariable(name: "route_index", scope: !7, file: !1, line: 135, type: !67)
!100 = !DILocalVariable(name: "last_index", scope: !7, file: !1, line: 149, type: !67)
!101 = !DIExpression()
!102 = !DILocation(line: 117, column: 40, scope: !7)
!103 = !DILocation(line: 117, column: 73, scope: !7)
!104 = !DILocation(line: 118, column: 33, scope: !105)
!105 = distinct !DILexicalBlock(scope: !7, file: !1, line: 118, column: 9)
!106 = !DILocation(line: 118, column: 10, scope: !105)
!107 = !DILocation(line: 118, column: 9, scope: !7)
!108 = !DILocation(line: 121, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !7, file: !1, line: 121, column: 9)
!110 = !DILocation(line: 121, column: 10, scope: !109)
!111 = !DILocation(line: 121, column: 35, scope: !109)
!112 = !DILocation(line: 122, column: 9, scope: !109)
!113 = !DILocation(line: 123, column: 9, scope: !109)
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !DILocation(line: 124, column: 9, scope: !109)
!119 = !DILocation(line: 123, column: 49, scope: !109)
!120 = !DILocation(line: 122, column: 54, scope: !109)
!121 = !DILocation(line: 121, column: 9, scope: !7)
!122 = !DILocation(line: 126, column: 15, scope: !123)
!123 = distinct !DILexicalBlock(scope: !109, file: !1, line: 124, column: 55)
!124 = !DILocation(line: 126, column: 44, scope: !123)
!125 = !{!126, !115, i64 80}
!126 = !{!"PncMap", !127, i64 0, !130, i64 24, !131, i64 24, !134, i64 32, !135, i64 56, !136, i64 80, !136, i64 80, !115, i64 80, !115, i64 84, !115, i64 88, !115, i64 92, !116, i64 96}
!127 = !{!"RoutingResponse", !128, i64 0, !129, i64 8, !115, i64 16}
!128 = !{!"RoutingRequest", !129, i64 0}
!129 = !{!"any pointer", !116, i64 0}
!130 = !{!"VehicleState"}
!131 = !{!"LaneWaypoint", !132, i64 0, !133, i64 0}
!132 = !{!"String"}
!133 = !{!"double", !116, i64 0}
!134 = !{!"Vector_WaypointIndex", !129, i64 0, !129, i64 8, !115, i64 16}
!135 = !{!"Vector_RouteIndex", !129, i64 0, !129, i64 8, !115, i64 16}
!136 = !{!"Set_String"}
!137 = !DILocation(line: 127, column: 15, scope: !123)
!138 = !DILocation(line: 127, column: 32, scope: !123)
!139 = !{!126, !115, i64 84}
!140 = !DILocation(line: 128, column: 15, scope: !123)
!141 = !DILocation(line: 128, column: 37, scope: !123)
!142 = !{!126, !116, i64 96}
!143 = !DILocation(line: 129, column: 5, scope: !123)
!144 = !DILocation(line: 132, column: 59, scope: !145)
!145 = distinct !DILexicalBlock(scope: !7, file: !1, line: 132, column: 9)
!146 = !DILocation(line: 132, column: 10, scope: !145)
!147 = !DILocation(line: 132, column: 9, scope: !7)
!148 = !DILocation(line: 135, column: 23, scope: !7)
!149 = !DILocation(line: 135, column: 9, scope: !7)
!150 = !DILocation(line: 136, column: 21, scope: !151)
!151 = distinct !DILexicalBlock(scope: !7, file: !1, line: 136, column: 9)
!152 = !DILocation(line: 136, column: 25, scope: !151)
!153 = !DILocation(line: 137, column: 47, scope: !151)
!154 = !DILocation(line: 137, column: 40, scope: !151)
!155 = !DILocation(line: 137, column: 24, scope: !151)
!156 = !DILocation(line: 137, column: 21, scope: !151)
!157 = !DILocation(line: 136, column: 9, scope: !7)
!158 = !DILocation(line: 142, column: 5, scope: !7)
!159 = !DILocation(line: 143, column: 11, scope: !7)
!160 = !DILocation(line: 143, column: 28, scope: !7)
!161 = !DILocation(line: 144, column: 5, scope: !7)
!162 = !DILocation(line: 145, column: 36, scope: !163)
!163 = distinct !DILexicalBlock(scope: !7, file: !1, line: 145, column: 9)
!164 = !DILocation(line: 145, column: 9, scope: !163)
!165 = !DILocation(line: 145, column: 9, scope: !7)
!166 = !DILocation(line: 149, column: 40, scope: !7)
!167 = !DILocation(line: 149, column: 92, scope: !7)
!168 = !DILocation(line: 149, column: 22, scope: !7)
!169 = !DILocation(line: 149, column: 9, scope: !7)
!170 = !DILocation(line: 150, column: 15, scope: !171)
!171 = distinct !DILexicalBlock(scope: !7, file: !1, line: 150, column: 9)
!172 = !DILocation(line: 150, column: 47, scope: !171)
!173 = !DILocation(line: 150, column: 98, scope: !171)
!174 = !DILocation(line: 150, column: 44, scope: !171)
!175 = !DILocation(line: 150, column: 102, scope: !171)
!176 = !DILocation(line: 151, column: 17, scope: !171)
!177 = !DILocation(line: 151, column: 11, scope: !171)
!178 = !DILocation(line: 151, column: 39, scope: !171)
!179 = !DILocation(line: 152, column: 24, scope: !171)
!180 = !DILocation(line: 152, column: 76, scope: !171)
!181 = !{!182, !115, i64 8}
!182 = !{!"WaypointIndex", !131, i64 0, !115, i64 8}
!183 = !DILocation(line: 152, column: 21, scope: !171)
!184 = !DILocation(line: 150, column: 9, scope: !7)
!185 = !DILocation(line: 153, column: 15, scope: !186)
!186 = distinct !DILexicalBlock(scope: !171, file: !1, line: 152, column: 84)
!187 = !DILocation(line: 153, column: 37, scope: !186)
!188 = !DILocation(line: 154, column: 5, scope: !186)
!189 = !DILocation(line: 156, column: 1, scope: !7)
!190 = distinct !DISubprogram(name: "UpdateRoutingResponse", scope: !1, file: !1, line: 158, type: !191, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !195)
!191 = !DISubroutineType(types: !192)
!192 = !{!10, !11, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!195 = !{!196, !197, !198, !200, !205, !207, !212, !214, !215, !216}
!196 = !DILocalVariable(name: "this", arg: 1, scope: !190, file: !1, line: 158, type: !11)
!197 = !DILocalVariable(name: "routing", arg: 2, scope: !190, file: !1, line: 158, type: !193)
!198 = !DILocalVariable(name: "road_index", scope: !199, file: !1, line: 162, type: !67)
!199 = distinct !DILexicalBlock(scope: !190, file: !1, line: 162, column: 5)
!200 = !DILocalVariable(name: "road_segment", scope: !201, file: !1, line: 163, type: !203)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 162, column: 72)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 162, column: 5)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!205 = !DILocalVariable(name: "passage_index", scope: !206, file: !1, line: 164, type: !67)
!206 = distinct !DILexicalBlock(scope: !201, file: !1, line: 164, column: 9)
!207 = !DILocalVariable(name: "passage", scope: !208, file: !1, line: 166, type: !210)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 165, column: 31)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 164, column: 9)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!212 = !DILocalVariable(name: "lane_index", scope: !213, file: !1, line: 167, type: !67)
!213 = distinct !DILexicalBlock(scope: !208, file: !1, line: 167, column: 13)
!214 = !DILocalVariable(name: "i", scope: !190, file: !1, line: 189, type: !67)
!215 = !DILocalVariable(name: "request_waypoints", scope: !190, file: !1, line: 190, type: !21)
!216 = !DILocalVariable(name: "j", scope: !217, file: !1, line: 194, type: !34)
!217 = distinct !DILexicalBlock(scope: !190, file: !1, line: 194, column: 5)
!218 = !DILocation(line: 158, column: 43, scope: !190)
!219 = !DILocation(line: 158, column: 79, scope: !190)
!220 = !DILocation(line: 159, column: 25, scope: !190)
!221 = !DILocation(line: 159, column: 5, scope: !190)
!222 = !DILocation(line: 160, column: 29, scope: !190)
!223 = !DILocation(line: 160, column: 22, scope: !190)
!224 = !DILocation(line: 160, column: 5, scope: !190)
!225 = !DILocation(line: 161, column: 25, scope: !190)
!226 = !DILocation(line: 161, column: 5, scope: !190)
!227 = !DILocation(line: 162, column: 14, scope: !199)
!228 = !DILocation(line: 162, column: 52, scope: !202)
!229 = !{!127, !115, i64 16}
!230 = !DILocation(line: 162, column: 41, scope: !202)
!231 = !DILocation(line: 162, column: 5, scope: !199)
!232 = !DILocation(line: 163, column: 60, scope: !201)
!233 = !{!127, !129, i64 8}
!234 = !DILocation(line: 164, column: 18, scope: !206)
!235 = !DILocation(line: 164, column: 67, scope: !209)
!236 = !{!237, !115, i64 8}
!237 = !{!"RoadSegment", !132, i64 0, !129, i64 0, !115, i64 8}
!238 = !DILocation(line: 164, column: 51, scope: !209)
!239 = !DILocation(line: 164, column: 9, scope: !206)
!240 = !DILocation(line: 166, column: 60, scope: !208)
!241 = !{!237, !129, i64 0}
!242 = !DILocation(line: 167, column: 22, scope: !213)
!243 = !DILocation(line: 167, column: 60, scope: !244)
!244 = distinct !DILexicalBlock(scope: !213, file: !1, line: 167, column: 13)
!245 = !{!246, !115, i64 8}
!246 = !{!"Passage", !129, i64 0, !115, i64 8}
!247 = !DILocation(line: 167, column: 49, scope: !244)
!248 = !DILocation(line: 167, column: 13, scope: !213)
!249 = !DILocation(line: 168, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !244, file: !1, line: 167, column: 80)
!251 = !DILocation(line: 169, column: 17, scope: !250)
!252 = !DILocation(line: 170, column: 17, scope: !250)
!253 = !DILocation(line: 171, column: 49, scope: !250)
!254 = !{!246, !129, i64 0}
!255 = !DILocation(line: 171, column: 40, scope: !250)
!256 = !DILocation(line: 171, column: 25, scope: !250)
!257 = !DILocation(line: 172, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !1, line: 172, column: 21)
!259 = !DILocation(line: 172, column: 69, scope: !258)
!260 = !{!261, !129, i64 0}
!261 = !{!"RouteIndex", !262, i64 0, !263, i64 8}
!262 = !{!"LaneSegment", !132, i64 0, !129, i64 0}
!263 = !{!"Index", !115, i64 0, !115, i64 4, !115, i64 8}
!264 = !DILocation(line: 172, column: 74, scope: !258)
!265 = !DILocation(line: 172, column: 21, scope: !250)
!266 = !DILocation(line: 175, column: 17, scope: !250)
!267 = !DILocation(line: 175, column: 63, scope: !250)
!268 = !DILocation(line: 175, column: 74, scope: !250)
!269 = !{!261, !115, i64 8}
!270 = !DILocation(line: 176, column: 17, scope: !250)
!271 = !DILocation(line: 176, column: 63, scope: !250)
!272 = !DILocation(line: 176, column: 77, scope: !250)
!273 = !{!261, !115, i64 12}
!274 = !DILocation(line: 177, column: 17, scope: !250)
!275 = !DILocation(line: 177, column: 63, scope: !250)
!276 = !DILocation(line: 177, column: 74, scope: !250)
!277 = !{!261, !115, i64 16}
!278 = !DILocation(line: 167, column: 66, scope: !244)
!279 = distinct !{!279, !248, !280}
!280 = !DILocation(line: 178, column: 13, scope: !213)
!281 = !DILocation(line: 165, column: 14, scope: !209)
!282 = distinct !{!282, !239, !283}
!283 = !DILocation(line: 179, column: 9, scope: !206)
!284 = !DILocation(line: 162, column: 58, scope: !202)
!285 = distinct !{!285, !231, !286}
!286 = !DILocation(line: 180, column: 5, scope: !199)
!287 = !DILocation(line: 182, column: 11, scope: !190)
!288 = !DILocation(line: 182, column: 24, scope: !190)
!289 = !{!126, !115, i64 88}
!290 = !DILocation(line: 183, column: 11, scope: !190)
!291 = !DILocation(line: 183, column: 22, scope: !190)
!292 = !{!126, !115, i64 92}
!293 = !DILocation(line: 184, column: 11, scope: !190)
!294 = !DILocation(line: 184, column: 28, scope: !190)
!295 = !DILocation(line: 185, column: 11, scope: !190)
!296 = !DILocation(line: 185, column: 40, scope: !190)
!297 = !DILocation(line: 186, column: 5, scope: !190)
!298 = !DILocation(line: 188, column: 32, scope: !190)
!299 = !DILocation(line: 188, column: 25, scope: !190)
!300 = !DILocation(line: 188, column: 5, scope: !190)
!301 = !DILocation(line: 189, column: 9, scope: !190)
!302 = !DILocation(line: 190, column: 76, scope: !190)
!303 = !{!127, !129, i64 0}
!304 = !DILocation(line: 190, column: 33, scope: !190)
!305 = !DILocation(line: 191, column: 9, scope: !306)
!306 = distinct !DILexicalBlock(scope: !190, file: !1, line: 191, column: 9)
!307 = !DILocation(line: 191, column: 9, scope: !190)
!308 = !DILocation(line: 194, column: 19, scope: !217)
!309 = !DILocation(line: 194, column: 46, scope: !310)
!310 = distinct !DILexicalBlock(scope: !217, file: !1, line: 194, column: 5)
!311 = !DILocation(line: 194, column: 30, scope: !310)
!312 = !DILocation(line: 194, column: 28, scope: !310)
!313 = !DILocation(line: 194, column: 5, scope: !217)
!314 = !DILocation(line: 203, column: 22, scope: !190)
!315 = !{i64 0, i64 8, !316, i64 8, i64 8, !316, i64 16, i64 4, !114}
!316 = !{!129, !129, i64 0}
!317 = !DILocation(line: 204, column: 11, scope: !190)
!318 = !DILocation(line: 204, column: 28, scope: !190)
!319 = !DILocation(line: 204, column: 27, scope: !190)
!320 = !{!133, !133, i64 0}
!321 = !DILocation(line: 205, column: 11, scope: !190)
!322 = !DILocation(line: 205, column: 33, scope: !190)
!323 = !DILocation(line: 206, column: 5, scope: !190)
!324 = !DILocation(line: 195, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !310, file: !1, line: 194, column: 75)
!326 = !DILocation(line: 195, column: 18, scope: !325)
!327 = !DILocation(line: 195, column: 57, scope: !325)
!328 = !DILocation(line: 196, column: 56, scope: !325)
!329 = !{!126, !129, i64 56}
!330 = !DILocation(line: 196, column: 65, scope: !325)
!331 = !DILocation(line: 197, column: 54, scope: !325)
!332 = !{!333, !129, i64 0}
!333 = !{!"Vector_LaneWaypoint", !129, i64 0, !129, i64 8, !115, i64 16}
!334 = !DILocation(line: 197, column: 35, scope: !325)
!335 = !DILocation(line: 196, column: 16, scope: !325)
!336 = !DILocation(line: 195, column: 9, scope: !325)
!337 = !DILocation(line: 199, column: 67, scope: !338)
!338 = distinct !DILexicalBlock(scope: !325, file: !1, line: 197, column: 65)
!339 = !DILocation(line: 199, column: 84, scope: !338)
!340 = !DILocation(line: 199, column: 109, scope: !338)
!341 = !DILocation(line: 199, column: 118, scope: !338)
!342 = !{!131, !133, i64 0}
!343 = !DILocation(line: 199, column: 27, scope: !338)
!344 = !DILocation(line: 198, column: 13, scope: !338)
!345 = !DILocation(line: 200, column: 13, scope: !338)
!346 = distinct !{!346, !336, !347}
!347 = !DILocation(line: 201, column: 9, scope: !325)
!348 = !DILocation(line: 194, column: 70, scope: !310)
!349 = distinct !{!349, !313, !350}
!350 = !DILocation(line: 202, column: 5, scope: !217)
!351 = !DILocation(line: 207, column: 1, scope: !190)
