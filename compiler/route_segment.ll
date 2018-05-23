; ModuleID = 'route_segments.cc'
source_filename = "route_segments.cc"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%"class.apollo::hdmap::IdDefaultTypeInternal" = type opaque
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"class.std::__1::__libcpp_compressed_pair_imp" }
%"class.std::__1::__libcpp_compressed_pair_imp" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%"class.apollo::hdmap::RouteSegments" = type <{ %"class.std::__1::vector", %"struct.apollo::hdmap::LaneWaypoint", i8, i8, [2 x i8], i32, i32, [4 x i8], %"class.std::__1::basic_string", i8, [7 x i8] }>
%"class.std::__1::vector" = type { %"class.std::__1::__vector_base" }
%"class.std::__1::__vector_base" = type { %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*, %"class.std::__1::__compressed_pair.55" }
%"struct.apollo::hdmap::LaneSegment" = type { %"class.std::__1::shared_ptr", double, double }
%"class.std::__1::shared_ptr" = type { %"class.apollo::hdmap::LaneInfo"*, %"class.std::__1::__shared_weak_count"* }
%"class.apollo::hdmap::LaneInfo" = type { %"class.apollo::hdmap::Lane"*, %"class.std::__1::vector.10", %"class.std::__1::vector.10", %"class.std::__1::vector.16", %"class.std::__1::vector.22", %"class.std::__1::vector.16", %"class.std::__1::vector.28", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", %"class.std::__1::vector.34", double, %"class.std::__1::vector.41", %"class.std::__1::vector.41", %"class.std::__1::vector.41", %"class.std::__1::vector.41", %"class.std::__1::vector.47", %"class.std::__1::unique_ptr", %"class.apollo::hdmap::Id", %"class.apollo::hdmap::Id" }
%"class.apollo::hdmap::Lane" = type <{ %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField", %"class.google::protobuf::RepeatedPtrField", %"class.google::protobuf::RepeatedPtrField", %"class.google::protobuf::RepeatedPtrField", %"class.google::protobuf::RepeatedPtrField", %"class.google::protobuf::RepeatedPtrField", %"class.google::protobuf::RepeatedPtrField", %"class.google::protobuf::RepeatedPtrField.7", %"class.google::protobuf::RepeatedPtrField.7", %"class.google::protobuf::RepeatedPtrField.7", %"class.google::protobuf::RepeatedPtrField.7", %"class.apollo::hdmap::Id"*, %"class.apollo::hdmap::Curve"*, %"class.apollo::hdmap::LaneBoundary"*, %"class.apollo::hdmap::LaneBoundary"*, %"class.apollo::hdmap::Id"*, double, double, i32, i32, i32, [4 x i8] }>
%"class.google::protobuf::Message" = type { %"class.google::protobuf::MessageLite" }
%"class.google::protobuf::MessageLite" = type { i32 (...)** }
%"class.google::protobuf::internal::InternalMetadataWithArena" = type { %"class.google::protobuf::internal::InternalMetadataWithArenaBase" }
%"class.google::protobuf::internal::InternalMetadataWithArenaBase" = type { i8* }
%"class.google::protobuf::internal::HasBits" = type { [1 x i32] }
%"class.google::protobuf::internal::CachedSize" = type { %"struct.std::__1::atomic" }
%"struct.std::__1::atomic" = type { %"struct.std::__1::__atomic_base" }
%"struct.std::__1::__atomic_base" = type { %"struct.std::__1::__atomic_base.1" }
%"struct.std::__1::__atomic_base.1" = type { i32 }
%"class.google::protobuf::RepeatedPtrField" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.google::protobuf::internal::RepeatedPtrFieldBase" = type { %"class.google::protobuf::Arena"*, i32, i32, %"struct.google::protobuf::internal::RepeatedPtrFieldBase::Rep"* }
%"class.google::protobuf::Arena" = type { %"class.google::protobuf::internal::ArenaImpl", void (%"class.std::type_info"*, i64, i8*)*, void (%"class.google::protobuf::Arena"*, i8*, i64)*, void (%"class.google::protobuf::Arena"*, i8*, i64)*, i8* }
%"class.google::protobuf::internal::ArenaImpl" = type { %"struct.std::__1::atomic.2", %"struct.std::__1::atomic.2", %"struct.std::__1::atomic.4", %"class.google::protobuf::internal::ArenaImpl::Block"*, i64, %"struct.google::protobuf::internal::ArenaImpl::Options" }
%"struct.std::__1::atomic.2" = type { %"struct.std::__1::__atomic_base.3" }
%"struct.std::__1::__atomic_base.3" = type { %"class.google::protobuf::internal::ArenaImpl::SerialArena"* }
%"class.google::protobuf::internal::ArenaImpl::SerialArena" = type { %"class.google::protobuf::internal::ArenaImpl"*, i8*, %"class.google::protobuf::internal::ArenaImpl::Block"*, %"struct.google::protobuf::internal::ArenaImpl::CleanupChunk"*, %"class.google::protobuf::internal::ArenaImpl::SerialArena"*, i8*, i8*, %"struct.google::protobuf::internal::ArenaImpl::CleanupNode"*, %"struct.google::protobuf::internal::ArenaImpl::CleanupNode"* }
%"struct.google::protobuf::internal::ArenaImpl::CleanupChunk" = type { i64, %"struct.google::protobuf::internal::ArenaImpl::CleanupChunk"*, [1 x %"struct.google::protobuf::internal::ArenaImpl::CleanupNode"] }
%"struct.google::protobuf::internal::ArenaImpl::CleanupNode" = type { i8*, void (i8*)* }
%"struct.std::__1::atomic.4" = type { %"struct.std::__1::__atomic_base.5" }
%"struct.std::__1::__atomic_base.5" = type { %"struct.std::__1::__atomic_base.6" }
%"struct.std::__1::__atomic_base.6" = type { i64 }
%"class.google::protobuf::internal::ArenaImpl::Block" = type { %"class.google::protobuf::internal::ArenaImpl::Block"*, i64, i64 }
%"struct.google::protobuf::internal::ArenaImpl::Options" = type { i64, i64, i8*, i64, i8* (i64)*, void (i8*, i64)* }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"struct.google::protobuf::internal::RepeatedPtrFieldBase::Rep" = type { i32, [1 x i8*] }
%"class.google::protobuf::RepeatedPtrField.7" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.apollo::hdmap::Curve" = type { %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.8" }
%"class.google::protobuf::RepeatedPtrField.8" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.apollo::hdmap::LaneBoundary" = type <{ %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"class.google::protobuf::RepeatedPtrField.9", %"class.apollo::hdmap::Curve"*, double, i8, [7 x i8] }>
%"class.google::protobuf::RepeatedPtrField.9" = type { %"class.google::protobuf::internal::RepeatedPtrFieldBase" }
%"class.std::__1::vector.10" = type { %"class.std::__1::__vector_base.11" }
%"class.std::__1::__vector_base.11" = type { %"class.apollo::common::math::Vec2d"*, %"class.apollo::common::math::Vec2d"*, %"class.std::__1::__compressed_pair.12" }
%"class.apollo::common::math::Vec2d" = type { double, double }
%"class.std::__1::__compressed_pair.12" = type { %"class.std::__1::__libcpp_compressed_pair_imp.13" }
%"class.std::__1::__libcpp_compressed_pair_imp.13" = type { %"class.apollo::common::math::Vec2d"* }
%"class.std::__1::vector.22" = type { %"class.std::__1::__vector_base.23" }
%"class.std::__1::__vector_base.23" = type { %"class.apollo::common::math::LineSegment2d"*, %"class.apollo::common::math::LineSegment2d"*, %"class.std::__1::__compressed_pair.24" }
%"class.apollo::common::math::LineSegment2d" = type { %"class.apollo::common::math::Vec2d", %"class.apollo::common::math::Vec2d", %"class.apollo::common::math::Vec2d", double, double }
%"class.std::__1::__compressed_pair.24" = type { %"class.std::__1::__libcpp_compressed_pair_imp.25" }
%"class.std::__1::__libcpp_compressed_pair_imp.25" = type { %"class.apollo::common::math::LineSegment2d"* }
%"class.std::__1::vector.16" = type { %"class.std::__1::__vector_base.17" }
%"class.std::__1::__vector_base.17" = type { double*, double*, %"class.std::__1::__compressed_pair.18" }
%"class.std::__1::__compressed_pair.18" = type { %"class.std::__1::__libcpp_compressed_pair_imp.19" }
%"class.std::__1::__libcpp_compressed_pair_imp.19" = type { double* }
%"class.std::__1::vector.28" = type { %"class.std::__1::__vector_base.29" }
%"class.std::__1::__vector_base.29" = type { %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"*, %"class.std::__1::__compressed_pair.30" }
%"class.std::__1::__compressed_pair.30" = type { %"class.std::__1::__libcpp_compressed_pair_imp.31" }
%"class.std::__1::__libcpp_compressed_pair_imp.31" = type { %"class.std::__1::basic_string"* }
%"class.std::__1::vector.34" = type { %"class.std::__1::__vector_base.35" }
%"class.std::__1::__vector_base.35" = type { %"class.std::__1::shared_ptr.36"*, %"class.std::__1::shared_ptr.36"*, %"class.std::__1::__compressed_pair.37" }
%"class.std::__1::shared_ptr.36" = type opaque
%"class.std::__1::__compressed_pair.37" = type { %"class.std::__1::__libcpp_compressed_pair_imp.38" }
%"class.std::__1::__libcpp_compressed_pair_imp.38" = type { %"class.std::__1::shared_ptr.36"* }
%"class.std::__1::vector.41" = type { %"class.std::__1::__vector_base.42" }
%"class.std::__1::__vector_base.42" = type { %"struct.std::__1::pair"*, %"struct.std::__1::pair"*, %"class.std::__1::__compressed_pair.43" }
%"struct.std::__1::pair" = type { double, double }
%"class.std::__1::__compressed_pair.43" = type { %"class.std::__1::__libcpp_compressed_pair_imp.44" }
%"class.std::__1::__libcpp_compressed_pair_imp.44" = type { %"struct.std::__1::pair"* }
%"class.std::__1::vector.47" = type { %"class.std::__1::__vector_base.48" }
%"class.std::__1::__vector_base.48" = type { %"class.apollo::hdmap::ObjectWithAABox"*, %"class.apollo::hdmap::ObjectWithAABox"*, %"class.std::__1::__compressed_pair.49" }
%"class.apollo::hdmap::ObjectWithAABox" = type opaque
%"class.std::__1::__compressed_pair.49" = type { %"class.std::__1::__libcpp_compressed_pair_imp.50" }
%"class.std::__1::__libcpp_compressed_pair_imp.50" = type { %"class.apollo::hdmap::ObjectWithAABox"* }
%"class.std::__1::unique_ptr" = type { %"class.std::__1::__compressed_pair.53" }
%"class.std::__1::__compressed_pair.53" = type { %"class.std::__1::__libcpp_compressed_pair_imp.54" }
%"class.std::__1::__libcpp_compressed_pair_imp.54" = type { %"class.apollo::common::math::AABoxKDTree2d"* }
%"class.apollo::common::math::AABoxKDTree2d" = type opaque
%"class.apollo::hdmap::Id" = type { %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr" }
%"struct.google::protobuf::internal::ArenaStringPtr" = type { %"class.std::__1::basic_string"* }
%"class.std::__1::__shared_weak_count" = type { %"class.std::__1::__shared_count", i64 }
%"class.std::__1::__shared_count" = type { i32 (...)**, i64 }
%"class.std::__1::__compressed_pair.55" = type { %"class.std::__1::__libcpp_compressed_pair_imp.56" }
%"class.std::__1::__libcpp_compressed_pair_imp.56" = type { %"struct.apollo::hdmap::LaneSegment"* }
%"struct.apollo::hdmap::LaneWaypoint" = type { %"class.std::__1::shared_ptr", double, double }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }
%"class.apollo::routing::LaneWaypoint" = type { %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr", %"class.apollo::common::PointENU"*, double }
%"class.apollo::common::PointENU" = type { %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", double, double, double }
%"class.apollo::routing::LaneSegment" = type { %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", %"struct.google::protobuf::internal::ArenaStringPtr", double, double }
%"struct.std::__1::__split_buffer" = type { %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*, %"class.std::__1::__compressed_pair.61" }
%"class.std::__1::__compressed_pair.61" = type { %"class.std::__1::__libcpp_compressed_pair_imp.62" }
%"class.std::__1::__libcpp_compressed_pair_imp.62" = type { %"struct.apollo::hdmap::LaneSegment"*, %"class.std::__1::allocator.57"* }
%"class.std::__1::allocator.57" = type { i8 }
%"class.std::__1::__vector_base_common" = type { i8 }
%"class.apollo::common::SLPoint" = type { %"class.google::protobuf::Message", %"class.google::protobuf::internal::InternalMetadataWithArena", %"class.google::protobuf::internal::HasBits", %"class.google::protobuf::internal::CachedSize", double, double }
%"class.google::LogMessage" = type { %"struct.google::LogMessage::LogMessageData"*, %"struct.google::LogMessage::LogMessageData"* }
%"struct.google::LogMessage::LogMessageData" = type opaque
%"class.std::__1::basic_ostream" = type { i32 (...)**, %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", %"class.std::__1::basic_ostream"*, i32 }>
%"class.std::__1::ios_base" = type { i32 (...)**, i32, i64, i64, i32, i32, i8*, i8*, void (i32, %"class.std::__1::ios_base"*, i32)**, i32*, i64, i64, i64*, i64, i64, i8**, i64, i64 }
%"class.google::LogMessageVoidify" = type { i8 }
%"class.google::LogMessageFatal" = type { %"class.google::LogMessage" }
%"struct.google::CheckOpString" = type { %"class.std::__1::basic_string"* }
%"class.std::__1::__basic_string_common" = type { i8 }
%"class.std::length_error" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { i32 (...)** }
%"class.std::__1::__libcpp_refstring" = type { i8* }
%"class.std::__1::locale" = type { %"class.std::__1::locale::__imp"* }
%"class.std::__1::locale::__imp" = type opaque
%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry" = type { i8, %"class.std::__1::basic_ostream"* }
%"class.std::__1::basic_streambuf" = type { i32 (...)**, %"class.std::__1::locale", i8*, i8*, i8*, i8*, i8*, i8* }
%"class.std::__1::locale::facet" = type { %"class.std::__1::__shared_count" }
%"class.std::__1::ctype" = type <{ %"class.std::__1::locale::facet", i32*, i8, [7 x i8] }>

@.str = private unnamed_addr constant [18 x i8] c"route_segments.cc\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to project \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" to segment\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to get projection from point \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" on lane \00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"No projection from waypoint: \00", align 1
@_ZZNK6apollo5hdmap13RouteSegments12CanDriveFromERKNS0_12LaneWaypointEE8vlocal__ = internal global i32* @_ZN6google21kLogSiteUninitializedE, align 8
@_ZN6google21kLogSiteUninitializedE = external global i32, align 4
@_ZN3fLI7FLAGS_vE = external global i32, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"[DEBUG] \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Angle diff too large:\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"waypoint is too far to reach: \00", align 1
@_ZN6apollo5hdmap21_Id_default_instance_E = external global %"class.apollo::hdmap::IdDefaultTypeInternal", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"/Users/lixupeng/apollo/modules/map/pnc_map/path.h\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"'lane' Must be non NULL\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size\00", align 1
@_ZTISt12length_error = external constant i8*
@_ZTVSt12length_error = available_externally unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD0Ev to i8*), i8* bitcast (i8* (%"class.std::logic_error"*)* @_ZNKSt11logic_error4whatEv to i8*)] }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: norecurse nounwind readnone ssp uwtable
define dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap13RouteSegments2IdEv(%"class.apollo::hdmap::RouteSegments"* readnone) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 8
  ret %"class.std::__1::basic_string"* %2
}

; Function Attrs: ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments5SetIdERKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(%"class.apollo::hdmap::RouteSegments"*, %"class.std::__1::basic_string"* dereferenceable(24)) local_unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 8
  %4 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(%"class.std::__1::basic_string"* %3, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %1)
  ret void
}

declare dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(%"class.std::__1::basic_string"*, %"class.std::__1::basic_string"* dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: norecurse nounwind ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments10SetCanExitEb(%"class.apollo::hdmap::RouteSegments"* nocapture, i1 zeroext) local_unnamed_addr #3 align 2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 2
  store i8 %3, i8* %4, align 8, !tbaa !2
  ret void
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments7CanExitEv(%"class.apollo::hdmap::RouteSegments"* nocapture readonly) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 2
  %3 = load i8, i8* %2, align 8, !tbaa !2, !range !14
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments18StopForDestinationEv(%"class.apollo::hdmap::RouteSegments"* nocapture readonly) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 9
  %3 = load i8, i8* %2, align 8, !tbaa !15, !range !14
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments21SetStopForDestinationEb(%"class.apollo::hdmap::RouteSegments"* nocapture, i1 zeroext) local_unnamed_addr #3 align 2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 9
  store i8 %3, i8* %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS0_11LaneSegmentERKNS0_12LaneWaypointE(%"struct.apollo::hdmap::LaneSegment"* nocapture readonly dereferenceable(32), %"struct.apollo::hdmap::LaneWaypoint"* nocapture readonly dereferenceable(32)) local_unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 0, i32 0
  %4 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %3, align 8, !tbaa !16
  %5 = icmp eq %"class.apollo::hdmap::LaneInfo"* %4, null
  br i1 %5, label %75, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 0, i32 0
  %8 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %7, align 8, !tbaa !16
  %9 = tail call dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap8LaneInfo2idEv(%"class.apollo::hdmap::LaneInfo"* %8)
  %10 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap2Id2idEv(%"class.apollo::hdmap::Id"* nonnull %9)
  %11 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %3, align 8, !tbaa !16
  %12 = tail call dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap8LaneInfo2idEv(%"class.apollo::hdmap::LaneInfo"* %11)
  %13 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap2Id2idEv(%"class.apollo::hdmap::Id"* nonnull %12)
  %14 = bitcast %"class.std::__1::basic_string"* %10 to i8*
  %15 = load i8, i8* %14, align 8, !tbaa !17
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = zext i8 %15 to i64
  %21 = lshr i64 %20, 1
  %22 = select i1 %17, i64 %21, i64 %19
  %23 = bitcast %"class.std::__1::basic_string"* %13 to i8*
  %24 = load i8, i8* %23, align 8, !tbaa !17
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = zext i8 %24 to i64
  %30 = lshr i64 %29, 1
  %31 = select i1 %26, i64 %30, i64 %28
  %32 = icmp eq i64 %22, %31
  br i1 %32, label %33, label %75

; <label>:33:                                     ; preds = %6
  %34 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %13, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast %"class.std::__1::basic_string"* %13 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %37 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %36, i64 0, i32 1, i64 0
  %38 = select i1 %26, i8* %37, i8* %35
  br i1 %17, label %39, label %56

; <label>:39:                                     ; preds = %33
  %40 = icmp eq i64 %22, 0
  br i1 %40, label %62, label %41

; <label>:41:                                     ; preds = %39
  %42 = bitcast %"class.std::__1::basic_string"* %10 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %43 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %42, i64 0, i32 1, i64 0
  br label %44

; <label>:44:                                     ; preds = %41, %51
  %45 = phi i8* [ %54, %51 ], [ %38, %41 ]
  %46 = phi i8* [ %53, %51 ], [ %43, %41 ]
  %47 = phi i64 [ %52, %51 ], [ %21, %41 ]
  %48 = load i8, i8* %46, align 1, !tbaa !17
  %49 = load i8, i8* %45, align 1, !tbaa !17
  %50 = icmp eq i8 %48, %49
  br i1 %50, label %51, label %74

; <label>:51:                                     ; preds = %44
  %52 = add i64 %47, -1
  %53 = getelementptr inbounds i8, i8* %46, i64 1
  %54 = getelementptr inbounds i8, i8* %45, i64 1
  %55 = icmp eq i64 %52, 0
  br i1 %55, label %61, label %44

; <label>:56:                                     ; preds = %33
  %57 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = tail call i32 @_ZNSt3__111char_traitsIcE7compareEPKcS3_m(i8* %58, i8* %38, i64 %22) #20
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %75

; <label>:61:                                     ; preds = %51
  br label %62

; <label>:62:                                     ; preds = %61, %39, %56
  %63 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 1
  %64 = load double, double* %63, align 8, !tbaa !18
  %65 = fadd double %64, -2.000000e-01
  %66 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 1
  %67 = load double, double* %66, align 8, !tbaa !20
  %68 = fcmp ugt double %65, %67
  br i1 %68, label %75, label %69

; <label>:69:                                     ; preds = %62
  %70 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 2
  %71 = load double, double* %70, align 8, !tbaa !21
  %72 = fadd double %71, 2.000000e-01
  %73 = fcmp oge double %72, %67
  br label %75

; <label>:74:                                     ; preds = %44
  br label %75

; <label>:75:                                     ; preds = %74, %2, %6, %62, %69, %56
  %76 = phi i1 [ false, %62 ], [ false, %56 ], [ false, %2 ], [ %73, %69 ], [ false, %6 ], [ false, %74 ]
  ret i1 %76
}

; Function Attrs: norecurse ssp uwtable
define linkonce_odr dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap8LaneInfo2idEv(%"class.apollo::hdmap::LaneInfo"*) local_unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::LaneInfo", %"class.apollo::hdmap::LaneInfo"* %0, i64 0, i32 0
  %3 = load %"class.apollo::hdmap::Lane"*, %"class.apollo::hdmap::Lane"** %2, align 8, !tbaa !17
  %4 = tail call dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap4Lane2idEv(%"class.apollo::hdmap::Lane"* %3)
  ret %"class.apollo::hdmap::Id"* %4
}

; Function Attrs: inlinehint norecurse ssp uwtable
define linkonce_odr dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap2Id2idEv(%"class.apollo::hdmap::Id"*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::Id", %"class.apollo::hdmap::Id"* %0, i64 0, i32 4
  %3 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6google8protobuf8internal14ArenaStringPtr10GetNoArenaEv(%"struct.google::protobuf::internal::ArenaStringPtr"* %2)
  ret %"class.std::__1::basic_string"* %3
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS0_11LaneSegmentERKNS_7routing12LaneWaypointE(%"struct.apollo::hdmap::LaneSegment"* nocapture readonly dereferenceable(32), %"class.apollo::routing::LaneWaypoint"* dereferenceable(48)) local_unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 0, i32 0
  %4 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %3, align 8, !tbaa !16
  %5 = icmp eq %"class.apollo::hdmap::LaneInfo"* %4, null
  br i1 %5, label %71, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap8LaneInfo2idEv(%"class.apollo::hdmap::LaneInfo"* nonnull %4)
  %8 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap2Id2idEv(%"class.apollo::hdmap::Id"* nonnull %7)
  %9 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo7routing12LaneWaypoint2idEv(%"class.apollo::routing::LaneWaypoint"* nonnull %1)
  %10 = bitcast %"class.std::__1::basic_string"* %8 to i8*
  %11 = load i8, i8* %10, align 8, !tbaa !17
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = zext i8 %11 to i64
  %17 = lshr i64 %16, 1
  %18 = select i1 %13, i64 %17, i64 %15
  %19 = bitcast %"class.std::__1::basic_string"* %9 to i8*
  %20 = load i8, i8* %19, align 8, !tbaa !17
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = zext i8 %20 to i64
  %26 = lshr i64 %25, 1
  %27 = select i1 %22, i64 %26, i64 %24
  %28 = icmp eq i64 %18, %27
  br i1 %28, label %29, label %71

; <label>:29:                                     ; preds = %6
  %30 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast %"class.std::__1::basic_string"* %9 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %33 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %32, i64 0, i32 1, i64 0
  %34 = select i1 %22, i8* %33, i8* %31
  br i1 %13, label %35, label %52

; <label>:35:                                     ; preds = %29
  %36 = icmp eq i64 %18, 0
  br i1 %36, label %58, label %37

; <label>:37:                                     ; preds = %35
  %38 = bitcast %"class.std::__1::basic_string"* %8 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %39 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %38, i64 0, i32 1, i64 0
  br label %40

; <label>:40:                                     ; preds = %37, %47
  %41 = phi i8* [ %50, %47 ], [ %34, %37 ]
  %42 = phi i8* [ %49, %47 ], [ %39, %37 ]
  %43 = phi i64 [ %48, %47 ], [ %17, %37 ]
  %44 = load i8, i8* %42, align 1, !tbaa !17
  %45 = load i8, i8* %41, align 1, !tbaa !17
  %46 = icmp eq i8 %44, %45
  br i1 %46, label %47, label %70

; <label>:47:                                     ; preds = %40
  %48 = add i64 %43, -1
  %49 = getelementptr inbounds i8, i8* %42, i64 1
  %50 = getelementptr inbounds i8, i8* %41, i64 1
  %51 = icmp eq i64 %48, 0
  br i1 %51, label %57, label %40

; <label>:52:                                     ; preds = %29
  %53 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = tail call i32 @_ZNSt3__111char_traitsIcE7compareEPKcS3_m(i8* %54, i8* %34, i64 %18) #20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %71

; <label>:57:                                     ; preds = %47
  br label %58

; <label>:58:                                     ; preds = %57, %35, %52
  %59 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 1
  %60 = load double, double* %59, align 8, !tbaa !18
  %61 = fadd double %60, -2.000000e-01
  %62 = tail call double @_ZNK6apollo7routing12LaneWaypoint1sEv(%"class.apollo::routing::LaneWaypoint"* nonnull %1)
  %63 = fcmp ugt double %61, %62
  br i1 %63, label %71, label %64

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 2
  %66 = load double, double* %65, align 8, !tbaa !21
  %67 = fadd double %66, 2.000000e-01
  %68 = tail call double @_ZNK6apollo7routing12LaneWaypoint1sEv(%"class.apollo::routing::LaneWaypoint"* nonnull %1)
  %69 = fcmp oge double %67, %68
  br label %71

; <label>:70:                                     ; preds = %40
  br label %71

; <label>:71:                                     ; preds = %70, %2, %6, %58, %64, %52
  %72 = phi i1 [ false, %58 ], [ false, %52 ], [ false, %2 ], [ %69, %64 ], [ false, %6 ], [ false, %70 ]
  ret i1 %72
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo7routing12LaneWaypoint2idEv(%"class.apollo::routing::LaneWaypoint"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::routing::LaneWaypoint", %"class.apollo::routing::LaneWaypoint"* %0, i64 0, i32 4
  %3 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6google8protobuf8internal14ArenaStringPtr10GetNoArenaEv(%"struct.google::protobuf::internal::ArenaStringPtr"* %2)
  ret %"class.std::__1::basic_string"* %3
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo7routing12LaneWaypoint1sEv(%"class.apollo::routing::LaneWaypoint"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::routing::LaneWaypoint", %"class.apollo::routing::LaneWaypoint"* %0, i64 0, i32 6
  %3 = load double, double* %2, align 8, !tbaa !22
  ret double %3
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS_7routing11LaneSegmentERKNS0_12LaneWaypointE(%"class.apollo::routing::LaneSegment"* dereferenceable(48), %"struct.apollo::hdmap::LaneWaypoint"* nocapture readonly dereferenceable(32)) local_unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 0, i32 0
  %4 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %3, align 8, !tbaa !16
  %5 = icmp eq %"class.apollo::hdmap::LaneInfo"* %4, null
  br i1 %5, label %71, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo7routing11LaneSegment2idEv(%"class.apollo::routing::LaneSegment"* nonnull %0)
  %8 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %3, align 8, !tbaa !16
  %9 = tail call dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap8LaneInfo2idEv(%"class.apollo::hdmap::LaneInfo"* %8)
  %10 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap2Id2idEv(%"class.apollo::hdmap::Id"* nonnull %9)
  %11 = bitcast %"class.std::__1::basic_string"* %7 to i8*
  %12 = load i8, i8* %11, align 8, !tbaa !17
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = zext i8 %12 to i64
  %18 = lshr i64 %17, 1
  %19 = select i1 %14, i64 %18, i64 %16
  %20 = bitcast %"class.std::__1::basic_string"* %10 to i8*
  %21 = load i8, i8* %20, align 8, !tbaa !17
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = zext i8 %21 to i64
  %27 = lshr i64 %26, 1
  %28 = select i1 %23, i64 %27, i64 %25
  %29 = icmp eq i64 %19, %28
  br i1 %29, label %30, label %71

; <label>:30:                                     ; preds = %6
  %31 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast %"class.std::__1::basic_string"* %10 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %34 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %33, i64 0, i32 1, i64 0
  %35 = select i1 %23, i8* %34, i8* %32
  br i1 %14, label %36, label %53

; <label>:36:                                     ; preds = %30
  %37 = icmp eq i64 %19, 0
  br i1 %37, label %59, label %38

; <label>:38:                                     ; preds = %36
  %39 = bitcast %"class.std::__1::basic_string"* %7 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %40 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %39, i64 0, i32 1, i64 0
  br label %41

; <label>:41:                                     ; preds = %38, %48
  %42 = phi i8* [ %51, %48 ], [ %35, %38 ]
  %43 = phi i8* [ %50, %48 ], [ %40, %38 ]
  %44 = phi i64 [ %49, %48 ], [ %18, %38 ]
  %45 = load i8, i8* %43, align 1, !tbaa !17
  %46 = load i8, i8* %42, align 1, !tbaa !17
  %47 = icmp eq i8 %45, %46
  br i1 %47, label %48, label %70

; <label>:48:                                     ; preds = %41
  %49 = add i64 %44, -1
  %50 = getelementptr inbounds i8, i8* %43, i64 1
  %51 = getelementptr inbounds i8, i8* %42, i64 1
  %52 = icmp eq i64 %49, 0
  br i1 %52, label %58, label %41

; <label>:53:                                     ; preds = %30
  %54 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = tail call i32 @_ZNSt3__111char_traitsIcE7compareEPKcS3_m(i8* %55, i8* %35, i64 %19) #20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %71

; <label>:58:                                     ; preds = %48
  br label %59

; <label>:59:                                     ; preds = %58, %36, %53
  %60 = tail call double @_ZNK6apollo7routing11LaneSegment7start_sEv(%"class.apollo::routing::LaneSegment"* nonnull %0)
  %61 = fadd double %60, -2.000000e-01
  %62 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 1
  %63 = load double, double* %62, align 8, !tbaa !20
  %64 = fcmp ugt double %61, %63
  br i1 %64, label %71, label %65

; <label>:65:                                     ; preds = %59
  %66 = tail call double @_ZNK6apollo7routing11LaneSegment5end_sEv(%"class.apollo::routing::LaneSegment"* nonnull %0)
  %67 = fadd double %66, 2.000000e-01
  %68 = load double, double* %62, align 8, !tbaa !20
  %69 = fcmp oge double %67, %68
  br label %71

; <label>:70:                                     ; preds = %41
  br label %71

; <label>:71:                                     ; preds = %70, %2, %6, %59, %65, %53
  %72 = phi i1 [ false, %59 ], [ false, %53 ], [ false, %2 ], [ %69, %65 ], [ false, %6 ], [ false, %70 ]
  ret i1 %72
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo7routing11LaneSegment2idEv(%"class.apollo::routing::LaneSegment"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::routing::LaneSegment", %"class.apollo::routing::LaneSegment"* %0, i64 0, i32 4
  %3 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6google8protobuf8internal14ArenaStringPtr10GetNoArenaEv(%"struct.google::protobuf::internal::ArenaStringPtr"* %2)
  ret %"class.std::__1::basic_string"* %3
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo7routing11LaneSegment7start_sEv(%"class.apollo::routing::LaneSegment"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::routing::LaneSegment", %"class.apollo::routing::LaneSegment"* %0, i64 0, i32 5
  %3 = load double, double* %2, align 8, !tbaa !29
  ret double %3
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo7routing11LaneSegment5end_sEv(%"class.apollo::routing::LaneSegment"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::routing::LaneSegment", %"class.apollo::routing::LaneSegment"* %0, i64 0, i32 6
  %3 = load double, double* %2, align 8, !tbaa !31
  ret double %3
}

; Function Attrs: nounwind ssp uwtable
define zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS_7routing11LaneSegmentERKNS2_12LaneWaypointE(%"class.apollo::routing::LaneSegment"* dereferenceable(48), %"class.apollo::routing::LaneWaypoint"* dereferenceable(48)) local_unnamed_addr #8 align 2 {
  %3 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo7routing11LaneSegment2idEv(%"class.apollo::routing::LaneSegment"* nonnull %0)
  %4 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo7routing12LaneWaypoint2idEv(%"class.apollo::routing::LaneWaypoint"* nonnull %1)
  %5 = bitcast %"class.std::__1::basic_string"* %3 to i8*
  %6 = load i8, i8* %5, align 8, !tbaa !17
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = zext i8 %6 to i64
  %12 = lshr i64 %11, 1
  %13 = select i1 %8, i64 %12, i64 %10
  %14 = bitcast %"class.std::__1::basic_string"* %4 to i8*
  %15 = load i8, i8* %14, align 8, !tbaa !17
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = zext i8 %15 to i64
  %21 = lshr i64 %20, 1
  %22 = select i1 %17, i64 %21, i64 %19
  %23 = icmp eq i64 %13, %22
  br i1 %23, label %24, label %64

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast %"class.std::__1::basic_string"* %4 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %28 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %27, i64 0, i32 1, i64 0
  %29 = select i1 %17, i8* %28, i8* %26
  br i1 %8, label %30, label %47

; <label>:30:                                     ; preds = %24
  %31 = icmp eq i64 %13, 0
  br i1 %31, label %53, label %32

; <label>:32:                                     ; preds = %30
  %33 = bitcast %"class.std::__1::basic_string"* %3 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %34 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %33, i64 0, i32 1, i64 0
  br label %35

; <label>:35:                                     ; preds = %32, %42
  %36 = phi i8* [ %45, %42 ], [ %29, %32 ]
  %37 = phi i8* [ %44, %42 ], [ %34, %32 ]
  %38 = phi i64 [ %43, %42 ], [ %12, %32 ]
  %39 = load i8, i8* %37, align 1, !tbaa !17
  %40 = load i8, i8* %36, align 1, !tbaa !17
  %41 = icmp eq i8 %39, %40
  br i1 %41, label %42, label %63

; <label>:42:                                     ; preds = %35
  %43 = add i64 %38, -1
  %44 = getelementptr inbounds i8, i8* %37, i64 1
  %45 = getelementptr inbounds i8, i8* %36, i64 1
  %46 = icmp eq i64 %43, 0
  br i1 %46, label %52, label %35

; <label>:47:                                     ; preds = %24
  %48 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = tail call i32 @_ZNSt3__111char_traitsIcE7compareEPKcS3_m(i8* %49, i8* %29, i64 %13) #20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %64

; <label>:52:                                     ; preds = %42
  br label %53

; <label>:53:                                     ; preds = %52, %30, %47
  %54 = tail call double @_ZNK6apollo7routing11LaneSegment7start_sEv(%"class.apollo::routing::LaneSegment"* nonnull %0)
  %55 = fadd double %54, -2.000000e-01
  %56 = tail call double @_ZNK6apollo7routing12LaneWaypoint1sEv(%"class.apollo::routing::LaneWaypoint"* nonnull %1)
  %57 = fcmp ugt double %55, %56
  br i1 %57, label %64, label %58

; <label>:58:                                     ; preds = %53
  %59 = tail call double @_ZNK6apollo7routing11LaneSegment5end_sEv(%"class.apollo::routing::LaneSegment"* nonnull %0)
  %60 = fadd double %59, 2.000000e-01
  %61 = tail call double @_ZNK6apollo7routing12LaneWaypoint1sEv(%"class.apollo::routing::LaneWaypoint"* nonnull %1)
  %62 = fcmp oge double %60, %61
  br label %64

; <label>:63:                                     ; preds = %35
  br label %64

; <label>:64:                                     ; preds = %63, %2, %53, %58, %47
  %65 = phi i1 [ false, %53 ], [ false, %47 ], [ %62, %58 ], [ false, %2 ], [ false, %63 ]
  ret i1 %65
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZN6apollo5hdmap13RouteSegments6StitchERKS1_(%"class.apollo::hdmap::RouteSegments"*, %"class.apollo::hdmap::RouteSegments"* nocapture readonly dereferenceable(104)) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %4 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %5 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %6 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %3 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %6) #20
  call void @_ZNK6apollo5hdmap13RouteSegments13FirstWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* nonnull sret %3, %"class.apollo::hdmap::RouteSegments"* %0)
  %7 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %4 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %7) #20
  invoke void @_ZNK6apollo5hdmap13RouteSegments13FirstWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* nonnull sret %4, %"class.apollo::hdmap::RouteSegments"* nonnull %1)
          to label %8 unwind label %29

; <label>:8:                                      ; preds = %2
  %9 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* %0, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %4)
          to label %10 unwind label %33

; <label>:10:                                     ; preds = %8
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %4) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %7) #20
  %11 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nonnull %1, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %3)
          to label %12 unwind label %40

; <label>:12:                                     ; preds = %10
  %13 = zext i1 %9 to i8
  br i1 %11, label %14, label %81

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 0
  %16 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %15, align 8, !tbaa !32
  %17 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 1
  %18 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %17, align 8, !tbaa !35
  %19 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %16, %18
  br i1 %19, label %50, label %20

; <label>:20:                                     ; preds = %14
  br label %21

; <label>:21:                                     ; preds = %20, %25
  %22 = phi %"struct.apollo::hdmap::LaneSegment"* [ %26, %25 ], [ %16, %20 ]
  %23 = invoke zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS0_11LaneSegmentERKNS0_12LaneWaypointE(%"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %22, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %3)
          to label %24 unwind label %44

; <label>:24:                                     ; preds = %21
  br i1 %23, label %48, label %25

; <label>:25:                                     ; preds = %24
  %26 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %22, i64 1
  %27 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %17, align 8, !tbaa !35
  %28 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %26, %27
  br i1 %28, label %48, label %21

; <label>:29:                                     ; preds = %2
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = extractvalue { i8*, i32 } %30, 0
  %32 = extractvalue { i8*, i32 } %30, 1
  br label %37

; <label>:33:                                     ; preds = %8
  %34 = landingpad { i8*, i32 }
          cleanup
  %35 = extractvalue { i8*, i32 } %34, 0
  %36 = extractvalue { i8*, i32 } %34, 1
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %4) #20
  br label %37

; <label>:37:                                     ; preds = %33, %29
  %38 = phi i32 [ %36, %33 ], [ %32, %29 ]
  %39 = phi i8* [ %35, %33 ], [ %31, %29 ]
  call void @llvm.lifetime.end(i64 32, i8* nonnull %7) #20
  br label %151

; <label>:40:                                     ; preds = %10
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  %43 = extractvalue { i8*, i32 } %41, 1
  br label %151

; <label>:44:                                     ; preds = %21
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  br label %151

; <label>:48:                                     ; preds = %25, %24
  %49 = phi %"struct.apollo::hdmap::LaneSegment"* [ %26, %25 ], [ %22, %24 ]
  br label %50

; <label>:50:                                     ; preds = %48, %14
  %51 = phi %"struct.apollo::hdmap::LaneSegment"* [ %16, %14 ], [ %49, %48 ]
  %52 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0
  %53 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 0
  %54 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %53, align 8, !tbaa !32
  %55 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %54, i64 0, i32 1
  %56 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %51, i64 0, i32 1
  %57 = load double, double* %56, align 8, !tbaa !36
  %58 = load double, double* %55, align 8, !tbaa !36
  %59 = fcmp olt double %57, %58
  %60 = select i1 %59, double* %56, double* %55
  %61 = bitcast double* %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !36
  %63 = bitcast double* %55 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !18
  %64 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %53, align 8, !tbaa !32
  %65 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %64, i64 0, i32 2
  %66 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %51, i64 0, i32 2
  %67 = load double, double* %65, align 8, !tbaa !36
  %68 = load double, double* %66, align 8, !tbaa !36
  %69 = fcmp olt double %67, %68
  %70 = select i1 %69, double* %66, double* %65
  %71 = bitcast double* %70 to i64*
  %72 = load i64, i64* %71, align 8, !tbaa !36
  %73 = bitcast double* %65 to i64*
  store i64 %72, i64* %73, align 8, !tbaa !21
  %74 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %53, align 8, !tbaa !32
  %75 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %15, align 8, !tbaa !32
  %76 = invoke %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE6insertINS_11__wrap_iterIPKS3_EEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISD_E9referenceEEE5valueENS8_IPS3_EEE4typeESB_SD_SD_(%"class.std::__1::vector"* %52, %"struct.apollo::hdmap::LaneSegment"* %74, %"struct.apollo::hdmap::LaneSegment"* %75, %"struct.apollo::hdmap::LaneSegment"* %51)
          to label %81 unwind label %77

; <label>:77:                                     ; preds = %50
  %78 = landingpad { i8*, i32 }
          cleanup
  %79 = extractvalue { i8*, i32 } %78, 0
  %80 = extractvalue { i8*, i32 } %78, 1
  br label %151

; <label>:81:                                     ; preds = %50, %12
  %82 = phi i8 [ %13, %12 ], [ 1, %50 ]
  %83 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %5 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %83) #20
  invoke void @_ZNK6apollo5hdmap13RouteSegments12LastWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* nonnull sret %5, %"class.apollo::hdmap::RouteSegments"* %0)
          to label %84 unwind label %99

; <label>:84:                                     ; preds = %81
  %85 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nonnull %1, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %5)
          to label %86 unwind label %103

; <label>:86:                                     ; preds = %84
  br i1 %85, label %87, label %141

; <label>:87:                                     ; preds = %86
  %88 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 1
  %89 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %88, align 8, !tbaa !35
  %90 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 0
  br label %91

; <label>:91:                                     ; preds = %98, %87
  %92 = phi %"struct.apollo::hdmap::LaneSegment"* [ %89, %87 ], [ %96, %98 ]
  %93 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %90, align 8, !tbaa !32
  %94 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %92, %93
  br i1 %94, label %111, label %95

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %92, i64 -1
  %97 = invoke zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS0_11LaneSegmentERKNS0_12LaneWaypointE(%"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %96, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %5)
          to label %98 unwind label %107

; <label>:98:                                     ; preds = %95
  br i1 %97, label %111, label %91

; <label>:99:                                     ; preds = %81
  %100 = landingpad { i8*, i32 }
          cleanup
  %101 = extractvalue { i8*, i32 } %100, 0
  %102 = extractvalue { i8*, i32 } %100, 1
  br label %148

; <label>:103:                                    ; preds = %84
  %104 = landingpad { i8*, i32 }
          cleanup
  %105 = extractvalue { i8*, i32 } %104, 0
  %106 = extractvalue { i8*, i32 } %104, 1
  br label %145

; <label>:107:                                    ; preds = %95
  %108 = landingpad { i8*, i32 }
          cleanup
  %109 = extractvalue { i8*, i32 } %108, 0
  %110 = extractvalue { i8*, i32 } %108, 1
  br label %145

; <label>:111:                                    ; preds = %91, %98
  %112 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0
  %113 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 1
  %114 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %113, align 8, !tbaa !35
  %115 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %114, i64 -1, i32 1
  %116 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %92, i64 -1, i32 1
  %117 = load double, double* %116, align 8, !tbaa !36
  %118 = load double, double* %115, align 8, !tbaa !36
  %119 = fcmp olt double %117, %118
  %120 = select i1 %119, double* %116, double* %115
  %121 = bitcast double* %120 to i64*
  %122 = load i64, i64* %121, align 8, !tbaa !36
  %123 = bitcast double* %115 to i64*
  store i64 %122, i64* %123, align 8, !tbaa !18
  %124 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %113, align 8, !tbaa !35
  %125 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %124, i64 -1, i32 2
  %126 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %92, i64 -1, i32 2
  %127 = load double, double* %125, align 8, !tbaa !36
  %128 = load double, double* %126, align 8, !tbaa !36
  %129 = fcmp olt double %127, %128
  %130 = select i1 %129, double* %126, double* %125
  %131 = bitcast double* %130 to i64*
  %132 = load i64, i64* %131, align 8, !tbaa !36
  %133 = bitcast double* %125 to i64*
  store i64 %132, i64* %133, align 8, !tbaa !21
  %134 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %113, align 8, !tbaa !35
  %135 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %88, align 8, !tbaa !35
  %136 = invoke %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE6insertINS_11__wrap_iterIPKS3_EEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISD_E9referenceEEE5valueENS8_IPS3_EEE4typeESB_SD_SD_(%"class.std::__1::vector"* %112, %"struct.apollo::hdmap::LaneSegment"* %134, %"struct.apollo::hdmap::LaneSegment"* %92, %"struct.apollo::hdmap::LaneSegment"* %135)
          to label %141 unwind label %137

; <label>:137:                                    ; preds = %111
  %138 = landingpad { i8*, i32 }
          cleanup
  %139 = extractvalue { i8*, i32 } %138, 0
  %140 = extractvalue { i8*, i32 } %138, 1
  br label %145

; <label>:141:                                    ; preds = %111, %86
  %142 = phi i8 [ %82, %86 ], [ 1, %111 ]
  %143 = and i8 %142, 1
  %144 = icmp ne i8 %143, 0
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %83) #20
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %6) #20
  ret i1 %144

; <label>:145:                                    ; preds = %107, %137, %103
  %146 = phi i32 [ %106, %103 ], [ %140, %137 ], [ %110, %107 ]
  %147 = phi i8* [ %105, %103 ], [ %139, %137 ], [ %109, %107 ]
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %5) #20
  br label %148

; <label>:148:                                    ; preds = %145, %99
  %149 = phi i32 [ %146, %145 ], [ %102, %99 ]
  %150 = phi i8* [ %147, %145 ], [ %101, %99 ]
  call void @llvm.lifetime.end(i64 32, i8* nonnull %83) #20
  br label %151

; <label>:151:                                    ; preds = %44, %77, %148, %40, %37
  %152 = phi i32 [ %149, %148 ], [ %43, %40 ], [ %38, %37 ], [ %80, %77 ], [ %47, %44 ]
  %153 = phi i8* [ %150, %148 ], [ %42, %40 ], [ %39, %37 ], [ %79, %77 ], [ %46, %44 ]
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %6) #20
  %154 = insertvalue { i8*, i32 } undef, i8* %153, 0
  %155 = insertvalue { i8*, i32 } %154, i32 %152, 1
  resume { i8*, i32 } %155
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: ssp uwtable
define void @_ZNK6apollo5hdmap13RouteSegments13FirstWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* noalias sret, %"class.apollo::hdmap::RouteSegments"* nocapture readonly) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::shared_ptr", align 8
  %4 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 0
  %5 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !32
  %6 = bitcast %"struct.apollo::hdmap::LaneSegment"* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !16
  %8 = bitcast %"class.std::__1::shared_ptr"* %3 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %3, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %5, i64 0, i32 0, i32 1
  %11 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %10, align 8, !tbaa !37
  store %"class.std::__1::__shared_weak_count"* %11, %"class.std::__1::__shared_weak_count"** %9, align 8, !tbaa !37
  %12 = icmp eq %"class.std::__1::__shared_weak_count"* %11, null
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %2
  tail call void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %11) #20
  br label %14

; <label>:14:                                     ; preds = %2, %13
  %15 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !32
  %16 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %15, i64 0, i32 1
  %17 = load double, double* %16, align 8, !tbaa !18
  invoke void @_ZN6apollo5hdmap12LaneWaypointC1ENSt3__110shared_ptrIKNS0_8LaneInfoEEEdd(%"struct.apollo::hdmap::LaneWaypoint"* %0, %"class.std::__1::shared_ptr"* nonnull %3, double %17, double 0.000000e+00)
          to label %18 unwind label %19

; <label>:18:                                     ; preds = %14
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %3) #20
  ret void

; <label>:19:                                     ; preds = %14
  %20 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %3) #20
  resume { i8*, i32 } %20
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nocapture readonly, %"struct.apollo::hdmap::LaneWaypoint"* nocapture readonly dereferenceable(32)) local_unnamed_addr #1 align 2 {
  %3 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 0
  %4 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 1
  %6 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !35
  %7 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %4, %6
  br i1 %7, label %18, label %8

; <label>:8:                                      ; preds = %2
  br label %12

; <label>:9:                                      ; preds = %12
  %10 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !35
  %11 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %15, %10
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %8, %9
  %13 = phi %"struct.apollo::hdmap::LaneSegment"* [ %15, %9 ], [ %4, %8 ]
  %14 = tail call zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS0_11LaneSegmentERKNS0_12LaneWaypointE(%"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %13, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %1)
  %15 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %13, i64 1
  br i1 %14, label %16, label %9

; <label>:16:                                     ; preds = %9, %12
  %17 = phi i1 [ false, %9 ], [ true, %12 ]
  br label %18

; <label>:18:                                     ; preds = %16, %2
  %19 = phi i1 [ false, %2 ], [ %17, %16 ]
  ret i1 %19
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"*) unnamed_addr #10 align 2 {
  tail call void @_ZN6apollo5hdmap12LaneWaypointD2Ev(%"struct.apollo::hdmap::LaneWaypoint"* %0) #20
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: ssp uwtable
define linkonce_odr %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE6insertINS_11__wrap_iterIPKS3_EEEENS_9enable_ifIXaasr21__is_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsISD_E9referenceEEE5valueENS8_IPS3_EEE4typeESB_SD_SD_(%"class.std::__1::vector"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"struct.std::__1::__split_buffer", align 8
  %6 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %1 to i64
  %7 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %2 to i64
  %8 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %3 to i64
  %9 = sub i64 %8, %7
  %10 = ashr exact i64 %9, 5
  %11 = icmp sgt i64 %9, 0
  br i1 %11, label %12, label %83

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 2, i32 0, i32 0
  %14 = bitcast %"struct.apollo::hdmap::LaneSegment"** %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 1
  %17 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %16, align 8, !tbaa !35
  %18 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %17 to i64
  %19 = sub i64 %15, %18
  %20 = ashr exact i64 %19, 5
  %21 = icmp sgt i64 %10, %20
  br i1 %21, label %44, label %22

; <label>:22:                                     ; preds = %12
  %23 = bitcast %"struct.apollo::hdmap::LaneSegment"** %16 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !35
  %25 = sub i64 %24, %6
  %26 = ashr exact i64 %25, 5
  %27 = icmp sgt i64 %10, %26
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %2, i64 %26
  %30 = sub nsw i64 %10, %26
  tail call void @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPKS3_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESD_SD_m(%"class.std::__1::vector"* nonnull %0, %"struct.apollo::hdmap::LaneSegment"* %29, %"struct.apollo::hdmap::LaneSegment"* %3, i64 %30)
  %31 = icmp sgt i64 %25, 0
  br i1 %31, label %32, label %83

; <label>:32:                                     ; preds = %22, %28
  %33 = phi %"struct.apollo::hdmap::LaneSegment"* [ %29, %28 ], [ %3, %22 ]
  %34 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 %10
  tail call void @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_(%"class.std::__1::vector"* nonnull %0, %"struct.apollo::hdmap::LaneSegment"* %1, %"struct.apollo::hdmap::LaneSegment"* %17, %"struct.apollo::hdmap::LaneSegment"* %34)
  %35 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %33, %2
  br i1 %35, label %83, label %36

; <label>:36:                                     ; preds = %32
  br label %37

; <label>:37:                                     ; preds = %36, %37
  %38 = phi %"struct.apollo::hdmap::LaneSegment"* [ %42, %37 ], [ %1, %36 ]
  %39 = phi %"struct.apollo::hdmap::LaneSegment"* [ %41, %37 ], [ %2, %36 ]
  %40 = tail call dereferenceable(32) %"struct.apollo::hdmap::LaneSegment"* @_ZN6apollo5hdmap11LaneSegmentaSERKS1_(%"struct.apollo::hdmap::LaneSegment"* %38, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %39) #20
  %41 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %39, i64 1
  %42 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %38, i64 1
  %43 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %41, %33
  br i1 %43, label %82, label %37

; <label>:44:                                     ; preds = %12
  %45 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 2
  %46 = bitcast %"class.std::__1::__compressed_pair.55"* %45 to %"class.std::__1::allocator.57"*
  %47 = bitcast %"struct.std::__1::__split_buffer"* %5 to i8*
  call void @llvm.lifetime.start(i64 40, i8* nonnull %47) #20
  %48 = bitcast %"struct.apollo::hdmap::LaneSegment"** %16 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !35
  %50 = bitcast %"class.std::__1::vector"* %0 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !32
  %52 = sub i64 %49, %51
  %53 = ashr exact i64 %52, 5
  %54 = add nsw i64 %53, %10
  %55 = tail call i64 @_ZNKSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE8max_sizeEv(%"class.std::__1::vector"* nonnull %0) #20
  %56 = icmp ult i64 %55, %54
  br i1 %56, label %57, label %59

; <label>:57:                                     ; preds = %44
  %58 = bitcast %"class.std::__1::vector"* %0 to %"class.std::__1::__vector_base_common"*
  tail call void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"* %58) #21
  unreachable

; <label>:59:                                     ; preds = %44
  %60 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 2, i32 0, i32 0
  %61 = bitcast %"struct.apollo::hdmap::LaneSegment"** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !38
  %63 = load i64, i64* %50, align 8, !tbaa !32
  %64 = sub i64 %62, %63
  %65 = ashr exact i64 %64, 5
  %66 = lshr i64 %55, 1
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %59
  %69 = ashr exact i64 %64, 4
  %70 = icmp ult i64 %69, %54
  %71 = select i1 %70, i64 %54, i64 %69
  br label %72

; <label>:72:                                     ; preds = %59, %68
  %73 = phi i64 [ %71, %68 ], [ %55, %59 ]
  %74 = load i64, i64* %50, align 8, !tbaa !32
  %75 = sub i64 %6, %74
  %76 = ashr exact i64 %75, 5
  call void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEEC1EmmS6_(%"struct.std::__1::__split_buffer"* nonnull %5, i64 %73, i64 %76, %"class.std::__1::allocator.57"* nonnull dereferenceable(1) %46)
  invoke void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPKS3_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESE_SE_(%"struct.std::__1::__split_buffer"* nonnull %5, %"struct.apollo::hdmap::LaneSegment"* %2, %"struct.apollo::hdmap::LaneSegment"* %3)
          to label %77 unwind label %80

; <label>:77:                                     ; preds = %72
  %78 = invoke %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_(%"class.std::__1::vector"* nonnull %0, %"struct.std::__1::__split_buffer"* nonnull dereferenceable(40) %5, %"struct.apollo::hdmap::LaneSegment"* %1)
          to label %79 unwind label %80

; <label>:79:                                     ; preds = %77
  call void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEED1Ev(%"struct.std::__1::__split_buffer"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 40, i8* nonnull %47) #20
  br label %83

; <label>:80:                                     ; preds = %77, %72
  %81 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEED1Ev(%"struct.std::__1::__split_buffer"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 40, i8* nonnull %47) #20
  resume { i8*, i32 } %81

; <label>:82:                                     ; preds = %37
  br label %83

; <label>:83:                                     ; preds = %82, %28, %32, %79, %4
  %84 = phi %"struct.apollo::hdmap::LaneSegment"* [ %78, %79 ], [ %1, %4 ], [ %1, %32 ], [ %1, %28 ], [ %1, %82 ]
  ret %"struct.apollo::hdmap::LaneSegment"* %84
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: ssp uwtable
define void @_ZNK6apollo5hdmap13RouteSegments12LastWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* noalias sret, %"class.apollo::hdmap::RouteSegments"* nocapture readonly) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::shared_ptr", align 8
  %4 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 1
  %5 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %5, i64 -1, i32 0
  %7 = bitcast %"class.std::__1::shared_ptr"* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !16
  %9 = bitcast %"class.std::__1::shared_ptr"* %3 to i64*
  store i64 %8, i64* %9, align 8, !tbaa !16
  %10 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %3, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %5, i64 -1, i32 0, i32 1
  %12 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %11, align 8, !tbaa !37
  store %"class.std::__1::__shared_weak_count"* %12, %"class.std::__1::__shared_weak_count"** %10, align 8, !tbaa !37
  %13 = icmp eq %"class.std::__1::__shared_weak_count"* %12, null
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %2
  tail call void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %12) #20
  br label %15

; <label>:15:                                     ; preds = %2, %14
  %16 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !35
  %17 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %16, i64 -1, i32 2
  %18 = load double, double* %17, align 8, !tbaa !21
  invoke void @_ZN6apollo5hdmap12LaneWaypointC1ENSt3__110shared_ptrIKNS0_8LaneInfoEEEdd(%"struct.apollo::hdmap::LaneWaypoint"* %0, %"class.std::__1::shared_ptr"* nonnull %3, double %18, double 0.000000e+00)
          to label %19 unwind label %20

; <label>:19:                                     ; preds = %15
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %3) #20
  ret void

; <label>:20:                                     ; preds = %15
  %21 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %3) #20
  resume { i8*, i32 } %21
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define dereferenceable(32) %"struct.apollo::hdmap::LaneWaypoint"* @_ZNK6apollo5hdmap13RouteSegments16RouteEndWaypointEv(%"class.apollo::hdmap::RouteSegments"* readnone) local_unnamed_addr #0 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 1
  ret %"struct.apollo::hdmap::LaneWaypoint"* %2
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments11IsOnSegmentEv(%"class.apollo::hdmap::RouteSegments"* nocapture readonly) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 3
  %3 = load i8, i8* %2, align 1, !tbaa !39, !range !14
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments14SetIsOnSegmentEb(%"class.apollo::hdmap::RouteSegments"* nocapture, i1 zeroext) local_unnamed_addr #3 align 2 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 3
  store i8 %3, i8* %4, align 1, !tbaa !39
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments19SetRouteEndWaypointERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"*, %"struct.apollo::hdmap::LaneWaypoint"* dereferenceable(32)) local_unnamed_addr #8 align 2 {
  %3 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 1
  %4 = tail call dereferenceable(32) %"struct.apollo::hdmap::LaneWaypoint"* @_ZN6apollo5hdmap12LaneWaypointaSERKS1_(%"struct.apollo::hdmap::LaneWaypoint"* %3, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %1) #20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr dereferenceable(32) %"struct.apollo::hdmap::LaneWaypoint"* @_ZN6apollo5hdmap12LaneWaypointaSERKS1_(%"struct.apollo::hdmap::LaneWaypoint"*, %"struct.apollo::hdmap::LaneWaypoint"* dereferenceable(32)) local_unnamed_addr #10 align 2 {
  %3 = alloca %"class.std::__1::shared_ptr", align 8
  %4 = bitcast %"class.std::__1::shared_ptr"* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %4) #20
  %5 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !16
  %7 = bitcast %"class.std::__1::shared_ptr"* %3 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %3, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 0, i32 1
  %10 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %9, align 8, !tbaa !37
  store %"class.std::__1::__shared_weak_count"* %10, %"class.std::__1::__shared_weak_count"** %8, align 8, !tbaa !37
  %11 = icmp eq %"class.std::__1::__shared_weak_count"* %10, null
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %2
  tail call void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %10) #20
  br label %13

; <label>:13:                                     ; preds = %2, %12
  %14 = load i64, i64* %7, align 8, !tbaa !38
  %15 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %0 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !38
  store i64 %16, i64* %7, align 8, !tbaa !38
  store i64 %14, i64* %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %0, i64 0, i32 0, i32 1
  %18 = bitcast %"class.std::__1::__shared_weak_count"** %8 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !38
  %20 = bitcast %"class.std::__1::__shared_weak_count"** %17 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !38
  store i64 %21, i64* %18, align 8, !tbaa !38
  store i64 %19, i64* %20, align 8, !tbaa !38
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %4) #20
  %22 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %0, i64 0, i32 1
  %23 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 1
  %24 = bitcast double* %22 to i8*
  %25 = bitcast double* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  ret %"struct.apollo::hdmap::LaneWaypoint"* %0
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap12LaneWaypointC1ENSt3__110shared_ptrIKNS0_8LaneInfoEEEdd(%"struct.apollo::hdmap::LaneWaypoint"*, %"class.std::__1::shared_ptr"*, double, double) unnamed_addr #1 align 2 {
  tail call void @_ZN6apollo5hdmap12LaneWaypointC2ENSt3__110shared_ptrIKNS0_8LaneInfoEEEdd(%"struct.apollo::hdmap::LaneWaypoint"* %0, %"class.std::__1::shared_ptr"* %1, double %2, double %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"*) unnamed_addr #8 align 2 {
  tail call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED2Ev(%"class.std::__1::shared_ptr"* %0) #20
  ret void
}

; Function Attrs: ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments13SetPropertiesERKS1_(%"class.apollo::hdmap::RouteSegments"*, %"class.apollo::hdmap::RouteSegments"* dereferenceable(104)) local_unnamed_addr #1 align 2 {
  %3 = tail call dereferenceable(32) %"struct.apollo::hdmap::LaneWaypoint"* @_ZNK6apollo5hdmap13RouteSegments16RouteEndWaypointEv(%"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %4 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 1
  %5 = tail call dereferenceable(32) %"struct.apollo::hdmap::LaneWaypoint"* @_ZN6apollo5hdmap12LaneWaypointaSERKS1_(%"struct.apollo::hdmap::LaneWaypoint"* %4, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %3) #20
  %6 = tail call zeroext i1 @_ZNK6apollo5hdmap13RouteSegments7CanExitEv(%"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %7 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 2
  %8 = zext i1 %6 to i8
  store i8 %8, i8* %7, align 8, !tbaa !2
  %9 = tail call zeroext i1 @_ZNK6apollo5hdmap13RouteSegments11IsOnSegmentEv(%"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %10 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 3
  %11 = zext i1 %9 to i8
  store i8 %11, i8* %10, align 1, !tbaa !39
  %12 = tail call i32 @_ZNK6apollo5hdmap13RouteSegments10NextActionEv(%"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %13 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 5
  store i32 %12, i32* %13, align 4, !tbaa !40
  %14 = tail call i32 @_ZNK6apollo5hdmap13RouteSegments14PreviousActionEv(%"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %15 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 6
  store i32 %14, i32* %15, align 8, !tbaa !41
  %16 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap13RouteSegments2IdEv(%"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %17 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 8
  %18 = tail call dereferenceable(24) %"class.std::__1::basic_string"* @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_(%"class.std::__1::basic_string"* %17, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %16)
  %19 = tail call zeroext i1 @_ZNK6apollo5hdmap13RouteSegments18StopForDestinationEv(%"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %20 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 9
  %21 = zext i1 %19 to i8
  store i8 %21, i8* %20, align 8, !tbaa !15
  ret void
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @_ZNK6apollo5hdmap13RouteSegments10NextActionEv(%"class.apollo::hdmap::RouteSegments"* nocapture readonly) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 5
  %3 = load i32, i32* %2, align 4, !tbaa !40
  ret i32 %3
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @_ZNK6apollo5hdmap13RouteSegments14PreviousActionEv(%"class.apollo::hdmap::RouteSegments"* nocapture readonly) local_unnamed_addr #4 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 6
  %3 = load i32, i32* %2, align 8, !tbaa !41
  ret i32 %3
}

; Function Attrs: nounwind ssp uwtable
define double @_ZN6apollo5hdmap13RouteSegments6LengthERKS1_(%"class.apollo::hdmap::RouteSegments"* nocapture readonly dereferenceable(104)) local_unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 0
  %3 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %2, align 8, !tbaa !32
  %4 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 1
  %5 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !35
  %6 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %3, %5
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %1
  br label %11

; <label>:8:                                      ; preds = %11
  br label %9

; <label>:9:                                      ; preds = %8, %1
  %10 = phi double [ 0.000000e+00, %1 ], [ %15, %8 ]
  ret double %10

; <label>:11:                                     ; preds = %7, %11
  %12 = phi double [ %15, %11 ], [ 0.000000e+00, %7 ]
  %13 = phi %"struct.apollo::hdmap::LaneSegment"* [ %16, %11 ], [ %3, %7 ]
  %14 = tail call double @_ZNK6apollo5hdmap11LaneSegment6LengthEv(%"struct.apollo::hdmap::LaneSegment"* nonnull %13)
  %15 = fadd double %12, %14
  %16 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %13, i64 1
  %17 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %16, %5
  br i1 %17, label %8, label %11
}

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo5hdmap11LaneSegment6LengthEv(%"struct.apollo::hdmap::LaneSegment"*) local_unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 2
  %3 = load double, double* %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 1
  %5 = load double, double* %4, align 8, !tbaa !18
  %6 = fsub double %3, %5
  ret double %6
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments13GetProjectionERKNS_6common8PointENUEPNS2_7SLPointEPNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nocapture readonly, %"class.apollo::common::PointENU"* dereferenceable(48), %"class.apollo::common::SLPoint"*, %"struct.apollo::hdmap::LaneWaypoint"* nocapture) local_unnamed_addr #1 align 2 {
  %5 = alloca %"class.apollo::common::math::Vec2d", align 8
  %6 = bitcast %"class.apollo::common::math::Vec2d"* %5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #20
  %7 = tail call double @_ZNK6apollo6common8PointENU1xEv(%"class.apollo::common::PointENU"* nonnull %1)
  %8 = tail call double @_ZNK6apollo6common8PointENU1yEv(%"class.apollo::common::PointENU"* nonnull %1)
  call void @_ZN6apollo6common4math5Vec2dC1Edd(%"class.apollo::common::math::Vec2d"* nonnull %5, double %7, double %8) #20
  %9 = call zeroext i1 @_ZNK6apollo5hdmap13RouteSegments13GetProjectionERKNS_6common4math5Vec2dEPNS2_7SLPointEPNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* %0, %"class.apollo::common::math::Vec2d"* nonnull dereferenceable(16) %5, %"class.apollo::common::SLPoint"* %2, %"struct.apollo::hdmap::LaneWaypoint"* %3)
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #20
  ret i1 %9
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments13GetProjectionERKNS_6common4math5Vec2dEPNS2_7SLPointEPNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nocapture readonly, %"class.apollo::common::math::Vec2d"* dereferenceable(16), %"class.apollo::common::SLPoint"*, %"struct.apollo::hdmap::LaneWaypoint"* nocapture) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.std::__1::shared_ptr", align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %"class.google::LogMessage", align 8
  %9 = alloca %"class.std::__1::basic_string", align 8
  %10 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 0
  %11 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %10, align 8, !tbaa !32
  %12 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 1
  %13 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %12, align 8, !tbaa !35
  %14 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %11, %13
  br i1 %14, label %136, label %15

; <label>:15:                                     ; preds = %4
  %16 = bitcast double* %6 to i8*
  %17 = bitcast double* %7 to i8*
  %18 = bitcast double* %6 to i64*
  %19 = bitcast %"class.std::__1::shared_ptr"* %5 to i8*
  %20 = bitcast %"class.std::__1::shared_ptr"* %5 to i64*
  %21 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %5, i64 0, i32 1
  %22 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %3 to i64*
  %23 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %3, i64 0, i32 0, i32 1
  %24 = bitcast %"class.std::__1::__shared_weak_count"** %21 to i64*
  %25 = bitcast %"class.std::__1::__shared_weak_count"** %23 to i64*
  %26 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %3, i64 0, i32 1
  %27 = bitcast double* %26 to i64*
  %28 = bitcast %"class.google::LogMessage"* %8 to i8*
  %29 = bitcast %"class.std::__1::basic_string"* %9 to i8*
  br label %30

; <label>:30:                                     ; preds = %15, %124
  %31 = phi i8 [ 0, %15 ], [ %121, %124 ]
  %32 = phi double [ 0.000000e+00, %15 ], [ %130, %124 ]
  %33 = phi double [ 0x7FF0000000000000, %15 ], [ %120, %124 ]
  %34 = phi %"struct.apollo::hdmap::LaneSegment"* [ %11, %15 ], [ %131, %124 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %16) #20
  store double 0.000000e+00, double* %6, align 8, !tbaa !36
  call void @llvm.lifetime.start(i64 8, i8* nonnull %17) #20
  store double 0.000000e+00, double* %7, align 8, !tbaa !36
  %35 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %34, i64 0, i32 0, i32 0
  %36 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %35, align 8, !tbaa !16
  %37 = call zeroext i1 @_ZNK6apollo5hdmap8LaneInfo13GetProjectionERKNS_6common4math5Vec2dEPdS7_(%"class.apollo::hdmap::LaneInfo"* %36, %"class.apollo::common::math::Vec2d"* nonnull dereferenceable(16) %1, double* nonnull %6, double* nonnull %7)
  br i1 %37, label %75, label %38

; <label>:38:                                     ; preds = %30
  call void @llvm.lifetime.start(i64 16, i8* nonnull %28) #20
  call void @_ZN6google10LogMessageC1EPKcii(%"class.google::LogMessage"* nonnull %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 235, i32 2)
  %39 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN6google10LogMessage6streamEv(%"class.google::LogMessage"* nonnull %8)
          to label %40 unwind label %55

; <label>:40:                                     ; preds = %38
  %41 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
          to label %42 unwind label %55

; <label>:42:                                     ; preds = %40
  call void @llvm.lifetime.start(i64 24, i8* nonnull %29) #20
  invoke void @_ZNK6apollo6common4math5Vec2d11DebugStringEv(%"class.std::__1::basic_string"* nonnull sret %9, %"class.apollo::common::math::Vec2d"* nonnull %1)
          to label %43 unwind label %59

; <label>:43:                                     ; preds = %42
  %44 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %41, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %9)
          to label %45 unwind label %63

; <label>:45:                                     ; preds = %43
  %46 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
          to label %47 unwind label %63

; <label>:47:                                     ; preds = %45
  %48 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %35, align 8, !tbaa !16
  %49 = invoke dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap8LaneInfo2idEv(%"class.apollo::hdmap::LaneInfo"* %48)
          to label %50 unwind label %63

; <label>:50:                                     ; preds = %47
  %51 = invoke dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6apollo5hdmap2Id2idEv(%"class.apollo::hdmap::Id"* nonnull %49)
          to label %52 unwind label %63

; <label>:52:                                     ; preds = %50
  %53 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %46, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %51)
          to label %54 unwind label %63

; <label>:54:                                     ; preds = %52
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %9) #20
  call void @llvm.lifetime.end(i64 24, i8* nonnull %29) #20
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %8) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %28) #20
  br label %119

; <label>:55:                                     ; preds = %40, %38
  %56 = landingpad { i8*, i32 }
          cleanup
  %57 = extractvalue { i8*, i32 } %56, 0
  %58 = extractvalue { i8*, i32 } %56, 1
  br label %70

; <label>:59:                                     ; preds = %42
  %60 = landingpad { i8*, i32 }
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  %62 = extractvalue { i8*, i32 } %60, 1
  br label %67

; <label>:63:                                     ; preds = %52, %50, %47, %45, %43
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = extractvalue { i8*, i32 } %64, 0
  %66 = extractvalue { i8*, i32 } %64, 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %9) #20
  br label %67

; <label>:67:                                     ; preds = %63, %59
  %68 = phi i8* [ %65, %63 ], [ %61, %59 ]
  %69 = phi i32 [ %66, %63 ], [ %62, %59 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %29) #20
  br label %70

; <label>:70:                                     ; preds = %67, %55
  %71 = phi i8* [ %68, %67 ], [ %57, %55 ]
  %72 = phi i32 [ %69, %67 ], [ %58, %55 ]
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %8) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %28) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %17) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #20
  %73 = insertvalue { i8*, i32 } undef, i8* %71, 0
  %74 = insertvalue { i8*, i32 } %73, i32 %72, 1
  resume { i8*, i32 } %74

; <label>:75:                                     ; preds = %30
  %76 = load double, double* %6, align 8, !tbaa !36
  %77 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %34, i64 0, i32 1
  %78 = load double, double* %77, align 8, !tbaa !18
  %79 = fadd double %78, -2.000000e-01
  %80 = fcmp olt double %76, %79
  br i1 %80, label %119, label %81

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %34, i64 0, i32 2
  %83 = load double, double* %82, align 8, !tbaa !21
  %84 = fadd double %83, 2.000000e-01
  %85 = fcmp ogt double %76, %84
  br i1 %85, label %119, label %86

; <label>:86:                                     ; preds = %81
  %87 = load double, double* %7, align 8, !tbaa !36
  %88 = call double @fabs(double %87) #22
  %89 = fcmp olt double %88, %33
  br i1 %89, label %90, label %119

; <label>:90:                                     ; preds = %86
  %91 = fcmp olt double %78, %76
  %92 = select i1 %91, double* %6, double* %77
  %93 = bitcast double* %92 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !36
  store i64 %94, i64* %18, align 8, !tbaa !36
  %95 = bitcast i64 %94 to double
  %96 = load double, double* %82, align 8, !tbaa !36
  %97 = fcmp olt double %95, %96
  %98 = select i1 %97, double* %6, double* %82
  %99 = bitcast double* %98 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !36
  store i64 %100, i64* %18, align 8, !tbaa !36
  %101 = load double, double* %7, align 8, !tbaa !36
  %102 = call double @fabs(double %101) #22
  call void @_ZN6apollo6common7SLPoint5set_lEd(%"class.apollo::common::SLPoint"* %2, double %101)
  %103 = load double, double* %6, align 8, !tbaa !36
  %104 = load double, double* %77, align 8, !tbaa !18
  %105 = fsub double %103, %104
  %106 = fadd double %32, %105
  call void @_ZN6apollo6common7SLPoint5set_sEd(%"class.apollo::common::SLPoint"* %2, double %106)
  call void @llvm.lifetime.start(i64 16, i8* nonnull %19) #20
  %107 = bitcast %"struct.apollo::hdmap::LaneSegment"* %34 to i64*
  %108 = load i64, i64* %107, align 8, !tbaa !16
  store i64 %108, i64* %20, align 8, !tbaa !16
  %109 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %34, i64 0, i32 0, i32 1
  %110 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %109, align 8, !tbaa !37
  store %"class.std::__1::__shared_weak_count"* %110, %"class.std::__1::__shared_weak_count"** %21, align 8, !tbaa !37
  %111 = icmp eq %"class.std::__1::__shared_weak_count"* %110, null
  br i1 %111, label %113, label %112

; <label>:112:                                    ; preds = %90
  call void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %110) #20
  br label %113

; <label>:113:                                    ; preds = %90, %112
  %114 = load i64, i64* %20, align 8, !tbaa !38
  %115 = load i64, i64* %22, align 8, !tbaa !38
  store i64 %115, i64* %20, align 8, !tbaa !38
  store i64 %114, i64* %22, align 8, !tbaa !38
  %116 = load i64, i64* %24, align 8, !tbaa !38
  %117 = load i64, i64* %25, align 8, !tbaa !38
  store i64 %117, i64* %24, align 8, !tbaa !38
  store i64 %116, i64* %25, align 8, !tbaa !38
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %19) #20
  %118 = load i64, i64* %18, align 8, !tbaa !36
  store i64 %118, i64* %27, align 8, !tbaa !20
  br label %119

; <label>:119:                                    ; preds = %86, %113, %75, %81, %54
  %120 = phi double [ %33, %54 ], [ %33, %81 ], [ %33, %75 ], [ %102, %113 ], [ %33, %86 ]
  %121 = phi i8 [ %31, %54 ], [ %31, %81 ], [ %31, %75 ], [ 1, %113 ], [ %31, %86 ]
  %122 = phi i32 [ 1, %54 ], [ 4, %81 ], [ 4, %75 ], [ 0, %113 ], [ 0, %86 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %17) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #20
  %123 = trunc i32 %122 to i3
  switch i3 %123, label %134 [
    i3 0, label %124
    i3 -4, label %124
  ]

; <label>:124:                                    ; preds = %119, %119
  %125 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %34, i64 0, i32 2
  %126 = load double, double* %125, align 8, !tbaa !21
  %127 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %34, i64 0, i32 1
  %128 = load double, double* %127, align 8, !tbaa !18
  %129 = fsub double %126, %128
  %130 = fadd double %32, %129
  %131 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %34, i64 1
  %132 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %12, align 8, !tbaa !35
  %133 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %131, %132
  br i1 %133, label %134, label %30

; <label>:134:                                    ; preds = %124, %119
  %135 = phi i32 [ %122, %119 ], [ 2, %124 ]
  br label %136

; <label>:136:                                    ; preds = %134, %4
  %137 = phi i8 [ 0, %4 ], [ %121, %134 ]
  %138 = phi i32 [ 2, %4 ], [ %135, %134 ]
  %139 = icmp eq i32 %138, 2
  %140 = and i8 %137, 1
  %141 = icmp ne i8 %140, 0
  %142 = and i1 %139, %141
  ret i1 %142
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo6common8PointENU1xEv(%"class.apollo::common::PointENU"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::common::PointENU", %"class.apollo::common::PointENU"* %0, i64 0, i32 5
  %3 = load double, double* %2, align 8, !tbaa !42
  ret double %3
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo6common8PointENU1yEv(%"class.apollo::common::PointENU"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::common::PointENU", %"class.apollo::common::PointENU"* %0, i64 0, i32 6
  %3 = load double, double* %2, align 8, !tbaa !44
  ret double %3
}

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo6common4math5Vec2dC1Edd(%"class.apollo::common::math::Vec2d"*, double, double) unnamed_addr #3 align 2 {
  tail call void @_ZN6apollo6common4math5Vec2dC2Edd(%"class.apollo::common::math::Vec2d"* %0, double %1, double %2) #20
  ret void
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments18IsConnectedSegmentERKS1_(%"class.apollo::hdmap::RouteSegments"* nocapture readonly, %"class.apollo::hdmap::RouteSegments"* nocapture readonly dereferenceable(104)) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %4 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %5 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %6 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %7 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 0
  %8 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 1
  %10 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %9, align 8, !tbaa !35
  %11 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %8, %10
  br i1 %11, label %50, label %12

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 0
  %14 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %13, align 8, !tbaa !32
  %15 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %1, i64 0, i32 0, i32 0, i32 1
  %16 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %15, align 8, !tbaa !35
  %17 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %14, %16
  br i1 %17, label %50, label %18

; <label>:18:                                     ; preds = %12
  %19 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %3 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %19) #20
  call void @_ZNK6apollo5hdmap13RouteSegments13FirstWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* nonnull sret %3, %"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %20 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nonnull %0, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %3)
          to label %21 unwind label %22

; <label>:21:                                     ; preds = %18
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %19) #20
  br i1 %20, label %50, label %26

; <label>:22:                                     ; preds = %18
  %23 = landingpad { i8*, i32 }
          cleanup
  %24 = extractvalue { i8*, i32 } %23, 0
  %25 = extractvalue { i8*, i32 } %23, 1
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %19) #20
  br label %52

; <label>:26:                                     ; preds = %21
  %27 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %4 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %27) #20
  call void @_ZNK6apollo5hdmap13RouteSegments12LastWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* nonnull sret %4, %"class.apollo::hdmap::RouteSegments"* nonnull %1)
  %28 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nonnull %0, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %4)
          to label %29 unwind label %30

; <label>:29:                                     ; preds = %26
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %4) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %27) #20
  br i1 %28, label %50, label %34

; <label>:30:                                     ; preds = %26
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %4) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %27) #20
  br label %52

; <label>:34:                                     ; preds = %29
  %35 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %5 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %35) #20
  call void @_ZNK6apollo5hdmap13RouteSegments13FirstWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* nonnull sret %5, %"class.apollo::hdmap::RouteSegments"* nonnull %0)
  %36 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nonnull %1, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %5)
          to label %37 unwind label %38

; <label>:37:                                     ; preds = %34
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %35) #20
  br i1 %36, label %50, label %42

; <label>:38:                                     ; preds = %34
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  %41 = extractvalue { i8*, i32 } %39, 1
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %35) #20
  br label %52

; <label>:42:                                     ; preds = %37
  %43 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %43) #20
  call void @_ZNK6apollo5hdmap13RouteSegments12LastWaypointEv(%"struct.apollo::hdmap::LaneWaypoint"* nonnull sret %6, %"class.apollo::hdmap::RouteSegments"* nonnull %0)
  %44 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nonnull %1, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %6)
          to label %45 unwind label %46

; <label>:45:                                     ; preds = %42
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %6) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %43) #20
  br label %50

; <label>:46:                                     ; preds = %42
  %47 = landingpad { i8*, i32 }
          cleanup
  %48 = extractvalue { i8*, i32 } %47, 0
  %49 = extractvalue { i8*, i32 } %47, 1
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %6) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %43) #20
  br label %52

; <label>:50:                                     ; preds = %45, %37, %29, %21, %2, %12
  %51 = phi i1 [ false, %12 ], [ false, %2 ], [ true, %21 ], [ true, %29 ], [ true, %37 ], [ %44, %45 ]
  ret i1 %51

; <label>:52:                                     ; preds = %46, %38, %30, %22
  %53 = phi i8* [ %48, %46 ], [ %40, %38 ], [ %32, %30 ], [ %24, %22 ]
  %54 = phi i32 [ %49, %46 ], [ %41, %38 ], [ %33, %30 ], [ %25, %22 ]
  %55 = insertvalue { i8*, i32 } undef, i8* %53, 0
  %56 = insertvalue { i8*, i32 } %55, i32 %54, 1
  resume { i8*, i32 } %56
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZN6apollo5hdmap13RouteSegments6ShrinkERKNS_6common4math5Vec2dEdd(%"class.apollo::hdmap::RouteSegments"*, %"class.apollo::common::math::Vec2d"* dereferenceable(16), double, double) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.apollo::common::SLPoint", align 8
  %6 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %7 = alloca %"class.google::LogMessage", align 8
  %8 = alloca %"class.std::__1::basic_string", align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = bitcast %"class.apollo::common::SLPoint"* %5 to i8*
  call void @llvm.lifetime.start(i64 40, i8* nonnull %11) #20
  call void @_ZN6apollo6common7SLPointC1Ev(%"class.apollo::common::SLPoint"* nonnull %5)
  %12 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %12) #20
  call void @_ZN6apollo5hdmap12LaneWaypointC1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %6) #20
  %13 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments13GetProjectionERKNS_6common4math5Vec2dEPNS2_7SLPointEPNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* %0, %"class.apollo::common::math::Vec2d"* nonnull dereferenceable(16) %1, %"class.apollo::common::SLPoint"* nonnull %5, %"struct.apollo::hdmap::LaneWaypoint"* nonnull %6)
          to label %14 unwind label %28

; <label>:14:                                     ; preds = %4
  br i1 %13, label %57, label %15

; <label>:15:                                     ; preds = %14
  %16 = bitcast %"class.google::LogMessage"* %7 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %16) #20
  invoke void @_ZN6google10LogMessageC1EPKcii(%"class.google::LogMessage"* nonnull %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 176, i32 2)
          to label %17 unwind label %32

; <label>:17:                                     ; preds = %15
  %18 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN6google10LogMessage6streamEv(%"class.google::LogMessage"* nonnull %7)
          to label %19 unwind label %36

; <label>:19:                                     ; preds = %17
  %20 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
          to label %21 unwind label %36

; <label>:21:                                     ; preds = %19
  %22 = bitcast %"class.std::__1::basic_string"* %8 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %22) #20
  invoke void @_ZNK6apollo6common4math5Vec2d11DebugStringEv(%"class.std::__1::basic_string"* nonnull sret %8, %"class.apollo::common::math::Vec2d"* nonnull %1)
          to label %23 unwind label %40

; <label>:23:                                     ; preds = %21
  %24 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %20, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %8)
          to label %25 unwind label %44

; <label>:25:                                     ; preds = %23
  %26 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
          to label %27 unwind label %44

; <label>:27:                                     ; preds = %25
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %8) #20
  call void @llvm.lifetime.end(i64 24, i8* nonnull %22) #20
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %7) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %16) #20
  br label %205

; <label>:28:                                     ; preds = %4
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  %31 = extractvalue { i8*, i32 } %29, 1
  br label %207

; <label>:32:                                     ; preds = %15
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  %35 = extractvalue { i8*, i32 } %33, 1
  br label %54

; <label>:36:                                     ; preds = %19, %17
  %37 = landingpad { i8*, i32 }
          cleanup
  %38 = extractvalue { i8*, i32 } %37, 0
  %39 = extractvalue { i8*, i32 } %37, 1
  br label %51

; <label>:40:                                     ; preds = %21
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  %43 = extractvalue { i8*, i32 } %41, 1
  br label %48

; <label>:44:                                     ; preds = %25, %23
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %8) #20
  br label %48

; <label>:48:                                     ; preds = %44, %40
  %49 = phi i32 [ %47, %44 ], [ %43, %40 ]
  %50 = phi i8* [ %46, %44 ], [ %42, %40 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %22) #20
  br label %51

; <label>:51:                                     ; preds = %48, %36
  %52 = phi i32 [ %49, %48 ], [ %39, %36 ]
  %53 = phi i8* [ %50, %48 ], [ %38, %36 ]
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %7) #20
  br label %54

; <label>:54:                                     ; preds = %51, %32
  %55 = phi i32 [ %52, %51 ], [ %35, %32 ]
  %56 = phi i8* [ %53, %51 ], [ %34, %32 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %16) #20
  br label %207

; <label>:57:                                     ; preds = %14
  %58 = call double @_ZNK6apollo6common7SLPoint1sEv(%"class.apollo::common::SLPoint"* nonnull %5)
  %59 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0
  %60 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 0
  %61 = bitcast %"class.apollo::hdmap::RouteSegments"* %0 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !32
  %63 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 1
  %64 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %65 = inttoptr i64 %62 to %"struct.apollo::hdmap::LaneSegment"*
  %66 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %65, %64
  br i1 %66, label %87, label %67

; <label>:67:                                     ; preds = %57
  %68 = fsub double %58, %2
  br label %69

; <label>:69:                                     ; preds = %67, %76
  %70 = phi %"struct.apollo::hdmap::LaneSegment"* [ %65, %67 ], [ %79, %76 ]
  %71 = phi double [ 0.000000e+00, %67 ], [ %78, %76 ]
  %72 = phi i64 [ %62, %67 ], [ %80, %76 ]
  %73 = call double @_ZNK6apollo5hdmap11LaneSegment6LengthEv(%"struct.apollo::hdmap::LaneSegment"* %70)
  %74 = fadd double %71, %73
  %75 = fcmp olt double %74, %68
  br i1 %75, label %76, label %83

; <label>:76:                                     ; preds = %69
  %77 = call double @_ZNK6apollo5hdmap11LaneSegment6LengthEv(%"struct.apollo::hdmap::LaneSegment"* %70)
  %78 = fadd double %71, %77
  %79 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %70, i64 1
  %80 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %79 to i64
  %81 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %82 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %79, %81
  br i1 %82, label %83, label %69

; <label>:83:                                     ; preds = %76, %69
  %84 = phi i64 [ %80, %76 ], [ %72, %69 ]
  %85 = phi double [ %78, %76 ], [ %71, %69 ]
  %86 = phi %"struct.apollo::hdmap::LaneSegment"* [ %79, %76 ], [ %70, %69 ]
  br label %87

; <label>:87:                                     ; preds = %83, %57
  %88 = phi i64 [ %62, %57 ], [ %84, %83 ]
  %89 = phi double [ 0.000000e+00, %57 ], [ %85, %83 ]
  %90 = phi %"struct.apollo::hdmap::LaneSegment"* [ %65, %57 ], [ %86, %83 ]
  %91 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %92 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %90, %91
  br i1 %92, label %205, label %93

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %90, i64 0, i32 1
  %95 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %95)
  %96 = fsub double %58, %2
  %97 = fsub double %96, %89
  %98 = load double, double* %94, align 8, !tbaa !36
  %99 = fadd double %97, %98
  store double %99, double* %9, align 8
  %100 = fcmp olt double %98, %99
  %101 = select i1 %100, double* %9, double* %94
  %102 = bitcast double* %101 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !36
  %104 = bitcast double* %94 to i64*
  store i64 %103, i64* %104, align 8, !tbaa !18
  call void @llvm.lifetime.end(i64 8, i8* nonnull %95)
  %105 = call double @_ZNK6apollo5hdmap11LaneSegment6LengthEv(%"struct.apollo::hdmap::LaneSegment"* %90)
  %106 = fcmp olt double %105, 2.000000e-01
  %107 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %90, i64 1
  %108 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %107 to i64
  %109 = select i1 %106, i64 %108, i64 %88
  %110 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %60, align 8, !tbaa !32
  %111 = inttoptr i64 %109 to %"struct.apollo::hdmap::LaneSegment"*
  %112 = invoke %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_(%"class.std::__1::vector"* nonnull %59, %"struct.apollo::hdmap::LaneSegment"* %110, %"struct.apollo::hdmap::LaneSegment"* %111)
          to label %113 unwind label %127

; <label>:113:                                    ; preds = %93
  %114 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 0, i32 0, i32 0
  %115 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %114, align 8, !tbaa !32
  %116 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %117 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %115, %116
  br i1 %117, label %137, label %118

; <label>:118:                                    ; preds = %113
  br label %119

; <label>:119:                                    ; preds = %118, %123
  %120 = phi %"struct.apollo::hdmap::LaneSegment"* [ %124, %123 ], [ %115, %118 ]
  %121 = invoke zeroext i1 @_ZN6apollo5hdmap13RouteSegments17WithinLaneSegmentERKNS0_11LaneSegmentERKNS0_12LaneWaypointE(%"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %120, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %6)
          to label %122 unwind label %131

; <label>:122:                                    ; preds = %119
  br i1 %121, label %135, label %123

; <label>:123:                                    ; preds = %122
  %124 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %120, i64 1
  %125 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %126 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %124, %125
  br i1 %126, label %135, label %119

; <label>:127:                                    ; preds = %93
  %128 = landingpad { i8*, i32 }
          cleanup
  %129 = extractvalue { i8*, i32 } %128, 0
  %130 = extractvalue { i8*, i32 } %128, 1
  br label %207

; <label>:131:                                    ; preds = %119
  %132 = landingpad { i8*, i32 }
          cleanup
  %133 = extractvalue { i8*, i32 } %132, 0
  %134 = extractvalue { i8*, i32 } %132, 1
  br label %207

; <label>:135:                                    ; preds = %123, %122
  %136 = phi %"struct.apollo::hdmap::LaneSegment"* [ %124, %123 ], [ %120, %122 ]
  br label %137

; <label>:137:                                    ; preds = %135, %113
  %138 = phi %"struct.apollo::hdmap::LaneSegment"* [ %115, %113 ], [ %136, %135 ]
  %139 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %140 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %138, %139
  br i1 %140, label %205, label %141

; <label>:141:                                    ; preds = %137
  %142 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %138, i64 0, i32 2
  %143 = load double, double* %142, align 8, !tbaa !21
  %144 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %6, i64 0, i32 1
  %145 = load double, double* %144, align 8, !tbaa !20
  %146 = fsub double %143, %145
  %147 = fcmp ult double %146, %3
  br i1 %147, label %148, label %153

; <label>:148:                                    ; preds = %141
  %149 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %138, i64 1
  %150 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %151 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %149, %150
  br i1 %151, label %179, label %152

; <label>:152:                                    ; preds = %148
  br label %162

; <label>:153:                                    ; preds = %141
  %154 = fadd double %145, %3
  store double %154, double* %142, align 8, !tbaa !21
  %155 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %138, i64 1
  %156 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %157 = invoke %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_(%"class.std::__1::vector"* nonnull %59, %"struct.apollo::hdmap::LaneSegment"* %155, %"struct.apollo::hdmap::LaneSegment"* %156)
          to label %205 unwind label %158

; <label>:158:                                    ; preds = %153
  %159 = landingpad { i8*, i32 }
          cleanup
  %160 = extractvalue { i8*, i32 } %159, 0
  %161 = extractvalue { i8*, i32 } %159, 1
  br label %207

; <label>:162:                                    ; preds = %152, %169
  %163 = phi %"struct.apollo::hdmap::LaneSegment"* [ %172, %169 ], [ %149, %152 ]
  %164 = phi double [ %171, %169 ], [ %146, %152 ]
  %165 = phi %"struct.apollo::hdmap::LaneSegment"* [ %163, %169 ], [ %138, %152 ]
  %166 = call double @_ZNK6apollo5hdmap11LaneSegment6LengthEv(%"struct.apollo::hdmap::LaneSegment"* %163)
  %167 = fadd double %164, %166
  %168 = fcmp olt double %167, %3
  br i1 %168, label %169, label %175

; <label>:169:                                    ; preds = %162
  %170 = call double @_ZNK6apollo5hdmap11LaneSegment6LengthEv(%"struct.apollo::hdmap::LaneSegment"* %163)
  %171 = fadd double %164, %170
  %172 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %163, i64 1
  %173 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %174 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %172, %173
  br i1 %174, label %175, label %162

; <label>:175:                                    ; preds = %169, %162
  %176 = phi %"struct.apollo::hdmap::LaneSegment"* [ %163, %169 ], [ %165, %162 ]
  %177 = phi double [ %171, %169 ], [ %164, %162 ]
  %178 = phi %"struct.apollo::hdmap::LaneSegment"* [ %172, %169 ], [ %163, %162 ]
  br label %179

; <label>:179:                                    ; preds = %175, %148
  %180 = phi %"struct.apollo::hdmap::LaneSegment"* [ %138, %148 ], [ %176, %175 ]
  %181 = phi double [ %146, %148 ], [ %177, %175 ]
  %182 = phi %"struct.apollo::hdmap::LaneSegment"* [ %149, %148 ], [ %178, %175 ]
  %183 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %184 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %182, %183
  br i1 %184, label %205, label %185

; <label>:185:                                    ; preds = %179
  %186 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %180, i64 1, i32 2
  %187 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %187)
  %188 = fsub double %3, %181
  %189 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %180, i64 1, i32 1
  %190 = load double, double* %189, align 8, !tbaa !18
  %191 = fadd double %188, %190
  store double %191, double* %10, align 8
  %192 = load double, double* %186, align 8, !tbaa !36
  %193 = fcmp olt double %191, %192
  %194 = select i1 %193, double* %10, double* %186
  %195 = bitcast double* %194 to i64*
  %196 = load i64, i64* %195, align 8, !tbaa !36
  %197 = bitcast double* %186 to i64*
  store i64 %196, i64* %197, align 8, !tbaa !21
  call void @llvm.lifetime.end(i64 8, i8* nonnull %187)
  %198 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %180, i64 2
  %199 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %63, align 8, !tbaa !35
  %200 = invoke %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_(%"class.std::__1::vector"* nonnull %59, %"struct.apollo::hdmap::LaneSegment"* %198, %"struct.apollo::hdmap::LaneSegment"* %199)
          to label %205 unwind label %201

; <label>:201:                                    ; preds = %185
  %202 = landingpad { i8*, i32 }
          cleanup
  %203 = extractvalue { i8*, i32 } %202, 0
  %204 = extractvalue { i8*, i32 } %202, 1
  br label %207

; <label>:205:                                    ; preds = %87, %137, %179, %153, %185, %27
  %206 = phi i1 [ false, %27 ], [ true, %185 ], [ true, %153 ], [ true, %179 ], [ true, %137 ], [ true, %87 ]
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %6) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %12) #20
  call void @_ZN6apollo6common7SLPointD1Ev(%"class.apollo::common::SLPoint"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 40, i8* nonnull %11) #20
  ret i1 %206

; <label>:207:                                    ; preds = %127, %131, %158, %201, %54, %28
  %208 = phi i32 [ %55, %54 ], [ %31, %28 ], [ %161, %158 ], [ %204, %201 ], [ %134, %131 ], [ %130, %127 ]
  %209 = phi i8* [ %56, %54 ], [ %30, %28 ], [ %160, %158 ], [ %203, %201 ], [ %133, %131 ], [ %129, %127 ]
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %6) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %12) #20
  call void @_ZN6apollo6common7SLPointD1Ev(%"class.apollo::common::SLPoint"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 40, i8* nonnull %11) #20
  %210 = insertvalue { i8*, i32 } undef, i8* %209, 0
  %211 = insertvalue { i8*, i32 } %210, i32 %208, 1
  resume { i8*, i32 } %211
}

declare void @_ZN6apollo6common7SLPointC1Ev(%"class.apollo::common::SLPoint"*) unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap12LaneWaypointC1Ev(%"struct.apollo::hdmap::LaneWaypoint"*) unnamed_addr #8 align 2 {
  tail call void @_ZN6apollo5hdmap12LaneWaypointC2Ev(%"struct.apollo::hdmap::LaneWaypoint"* %0) #20
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* dereferenceable(160), i8*) local_unnamed_addr #1 {
  %3 = tail call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %1) #20
  %4 = tail call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %0, i8* %1, i64 %3)
  ret %"class.std::__1::basic_ostream"* %4
}

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(%"class.std::__1::basic_ostream"* dereferenceable(160), %"class.std::__1::basic_string"* dereferenceable(24)) local_unnamed_addr #1 {
  %3 = bitcast %"class.std::__1::basic_string"* %1 to i8*
  %4 = load i8, i8* %3, align 8, !tbaa !17
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast %"class.std::__1::basic_string"* %1 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %10 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %9, i64 0, i32 1, i64 0
  %11 = select i1 %6, i8* %10, i8* %8
  %12 = load i8, i8* %3, align 8, !tbaa !17
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = zext i8 %12 to i64
  %18 = lshr i64 %17, 1
  %19 = select i1 %14, i64 %18, i64 %16
  %20 = tail call dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %0, i8* %11, i64 %19)
  ret %"class.std::__1::basic_ostream"* %20
}

declare void @_ZN6google10LogMessageC1EPKcii(%"class.google::LogMessage"*, i8*, i32, i32) unnamed_addr #2

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN6google10LogMessage6streamEv(%"class.google::LogMessage"*) local_unnamed_addr #2

declare void @_ZNK6apollo6common4math5Vec2d11DebugStringEv(%"class.std::__1::basic_string"* sret, %"class.apollo::common::math::Vec2d"*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"*) unnamed_addr #10 align 2 {
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"* %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"*) unnamed_addr #11

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo6common7SLPoint1sEv(%"class.apollo::common::SLPoint"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::common::SLPoint", %"class.apollo::common::SLPoint"* %0, i64 0, i32 4
  %3 = load double, double* %2, align 8, !tbaa !45
  ret double %3
}

; Function Attrs: ssp uwtable
define linkonce_odr %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE5eraseENS_11__wrap_iterIPKS3_EESA_(%"class.std::__1::vector"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*) local_unnamed_addr #1 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %1, %2
  br i1 %4, label %29, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 1
  %7 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !35
  %8 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %7, %2
  br i1 %8, label %18, label %9

; <label>:9:                                      ; preds = %5
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi %"struct.apollo::hdmap::LaneSegment"* [ %15, %10 ], [ %1, %9 ]
  %12 = phi %"struct.apollo::hdmap::LaneSegment"* [ %14, %10 ], [ %2, %9 ]
  %13 = tail call dereferenceable(32) %"struct.apollo::hdmap::LaneSegment"* @_ZN6apollo5hdmap11LaneSegmentaSEOS1_(%"struct.apollo::hdmap::LaneSegment"* %11, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %12) #20
  %14 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %12, i64 1
  %15 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %11, i64 1
  %16 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %14, %7
  br i1 %16, label %17, label %10

; <label>:17:                                     ; preds = %10
  br label %18

; <label>:18:                                     ; preds = %17, %5
  %19 = phi %"struct.apollo::hdmap::LaneSegment"* [ %1, %5 ], [ %15, %17 ]
  %20 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !35
  %21 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %20, %19
  br i1 %21, label %29, label %22

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22, %23
  %24 = phi %"struct.apollo::hdmap::LaneSegment"* [ %26, %23 ], [ %20, %22 ]
  %25 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %24, i64 -1
  store %"struct.apollo::hdmap::LaneSegment"* %25, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !35
  tail call void @_ZN6apollo5hdmap11LaneSegmentD1Ev(%"struct.apollo::hdmap::LaneSegment"* %25) #20
  %26 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !35
  %27 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %26, %19
  br i1 %27, label %28, label %23

; <label>:28:                                     ; preds = %23
  br label %29

; <label>:29:                                     ; preds = %28, %3, %18
  ret %"struct.apollo::hdmap::LaneSegment"* %1
}

; Function Attrs: nounwind
declare void @_ZN6apollo6common7SLPointD1Ev(%"class.apollo::common::SLPoint"*) unnamed_addr #11

declare zeroext i1 @_ZNK6apollo5hdmap8LaneInfo13GetProjectionERKNS_6common4math5Vec2dEPdS7_(%"class.apollo::hdmap::LaneInfo"*, %"class.apollo::common::math::Vec2d"* dereferenceable(16), double*, double*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare double @fabs(double) local_unnamed_addr #12

; Function Attrs: inlinehint norecurse ssp uwtable
define linkonce_odr void @_ZN6apollo6common7SLPoint5set_lEd(%"class.apollo::common::SLPoint"*, double) local_unnamed_addr #6 align 2 {
  tail call void @_ZN6apollo6common7SLPoint9set_has_lEv(%"class.apollo::common::SLPoint"* %0)
  %3 = getelementptr inbounds %"class.apollo::common::SLPoint", %"class.apollo::common::SLPoint"* %0, i64 0, i32 5
  store double %1, double* %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: inlinehint norecurse ssp uwtable
define linkonce_odr void @_ZN6apollo6common7SLPoint5set_sEd(%"class.apollo::common::SLPoint"*, double) local_unnamed_addr #6 align 2 {
  tail call void @_ZN6apollo6common7SLPoint9set_has_sEv(%"class.apollo::common::SLPoint"* %0)
  %3 = getelementptr inbounds %"class.apollo::common::SLPoint", %"class.apollo::common::SLPoint"* %0, i64 0, i32 4
  store double %1, double* %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments17SetPreviousActionENS_7routing14ChangeLaneTypeE(%"class.apollo::hdmap::RouteSegments"* nocapture, i32) local_unnamed_addr #3 align 2 {
  %3 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 6
  store i32 %1, i32* %3, align 8, !tbaa !41
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @_ZN6apollo5hdmap13RouteSegments13SetNextActionENS_7routing14ChangeLaneTypeE(%"class.apollo::hdmap::RouteSegments"* nocapture, i32) local_unnamed_addr #3 align 2 {
  %3 = getelementptr inbounds %"class.apollo::hdmap::RouteSegments", %"class.apollo::hdmap::RouteSegments"* %0, i64 0, i32 5
  store i32 %1, i32* %3, align 4, !tbaa !40
  ret void
}

; Function Attrs: ssp uwtable
define zeroext i1 @_ZNK6apollo5hdmap13RouteSegments12CanDriveFromERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* nocapture readonly, %"struct.apollo::hdmap::LaneWaypoint"* dereferenceable(32)) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.apollo::common::PointENU", align 8
  %4 = alloca %"struct.apollo::hdmap::LaneWaypoint", align 8
  %5 = alloca %"class.apollo::common::SLPoint", align 8
  %6 = alloca %"class.google::LogMessage", align 8
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = alloca %"class.google::LogMessageVoidify", align 1
  %9 = alloca %"class.google::LogMessage", align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %"class.apollo::common::PointENU", align 8
  %15 = alloca %"class.google::LogMessage", align 8
  %16 = alloca %"class.google::LogMessage", align 8
  %17 = bitcast %"class.apollo::common::PointENU"* %3 to i8*
  call void @llvm.lifetime.start(i64 48, i8* nonnull %17) #20
  %18 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 0, i32 0
  %19 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %1, i64 0, i32 1
  %21 = load double, double* %20, align 8, !tbaa !20
  call void @_ZNK6apollo5hdmap8LaneInfo14GetSmoothPointEd(%"class.apollo::common::PointENU"* nonnull sret %3, %"class.apollo::hdmap::LaneInfo"* %19, double %21)
  %22 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments19IsWaypointOnSegmentERKNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* %0, %"struct.apollo::hdmap::LaneWaypoint"* nonnull dereferenceable(32) %1)
          to label %23 unwind label %24

; <label>:23:                                     ; preds = %2
  br i1 %22, label %249, label %28

; <label>:24:                                     ; preds = %2
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  br label %251

; <label>:28:                                     ; preds = %23
  %29 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %4 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %29) #20
  call void @_ZN6apollo5hdmap12LaneWaypointC1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %4) #20
  %30 = bitcast %"class.apollo::common::SLPoint"* %5 to i8*
  call void @llvm.lifetime.start(i64 40, i8* nonnull %30) #20
  invoke void @_ZN6apollo6common7SLPointC1Ev(%"class.apollo::common::SLPoint"* nonnull %5)
          to label %31 unwind label %45

; <label>:31:                                     ; preds = %28
  %32 = invoke zeroext i1 @_ZNK6apollo5hdmap13RouteSegments13GetProjectionERKNS_6common8PointENUEPNS2_7SLPointEPNS0_12LaneWaypointE(%"class.apollo::hdmap::RouteSegments"* %0, %"class.apollo::common::PointENU"* nonnull dereferenceable(48) %3, %"class.apollo::common::SLPoint"* nonnull %5, %"struct.apollo::hdmap::LaneWaypoint"* nonnull %4)
          to label %33 unwind label %49

; <label>:33:                                     ; preds = %31
  br i1 %32, label %78, label %34

; <label>:34:                                     ; preds = %33
  %35 = bitcast %"class.google::LogMessage"* %6 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %35) #20
  invoke void @_ZN6google10LogMessageC1EPKcii(%"class.google::LogMessage"* nonnull %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 295, i32 2)
          to label %36 unwind label %53

; <label>:36:                                     ; preds = %34
  %37 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN6google10LogMessage6streamEv(%"class.google::LogMessage"* nonnull %6)
          to label %38 unwind label %57

; <label>:38:                                     ; preds = %36
  %39 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
          to label %40 unwind label %57

; <label>:40:                                     ; preds = %38
  %41 = bitcast %"class.std::__1::basic_string"* %7 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %41) #20
  invoke void @_ZNK6apollo5hdmap12LaneWaypoint11DebugStringEv(%"class.std::__1::basic_string"* nonnull sret %7, %"struct.apollo::hdmap::LaneWaypoint"* nonnull %1)
          to label %42 unwind label %61

; <label>:42:                                     ; preds = %40
  %43 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %39, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %7)
          to label %44 unwind label %65

; <label>:44:                                     ; preds = %42
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %7) #20
  call void @llvm.lifetime.end(i64 24, i8* nonnull %41) #20
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %6) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %35) #20
  br label %241

; <label>:45:                                     ; preds = %28
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  %48 = extractvalue { i8*, i32 } %46, 1
  br label %246

; <label>:49:                                     ; preds = %31
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  %52 = extractvalue { i8*, i32 } %50, 1
  br label %243

; <label>:53:                                     ; preds = %34
  %54 = landingpad { i8*, i32 }
          cleanup
  %55 = extractvalue { i8*, i32 } %54, 0
  %56 = extractvalue { i8*, i32 } %54, 1
  br label %75

; <label>:57:                                     ; preds = %38, %36
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  %60 = extractvalue { i8*, i32 } %58, 1
  br label %72

; <label>:61:                                     ; preds = %40
  %62 = landingpad { i8*, i32 }
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  %64 = extractvalue { i8*, i32 } %62, 1
  br label %69

; <label>:65:                                     ; preds = %42
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  %68 = extractvalue { i8*, i32 } %66, 1
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %7) #20
  br label %69

; <label>:69:                                     ; preds = %65, %61
  %70 = phi i32 [ %68, %65 ], [ %64, %61 ]
  %71 = phi i8* [ %67, %65 ], [ %63, %61 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %41) #20
  br label %72

; <label>:72:                                     ; preds = %69, %57
  %73 = phi i32 [ %70, %69 ], [ %60, %57 ]
  %74 = phi i8* [ %71, %69 ], [ %59, %57 ]
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %6) #20
  br label %75

; <label>:75:                                     ; preds = %72, %53
  %76 = phi i32 [ %73, %72 ], [ %56, %53 ]
  %77 = phi i8* [ %74, %72 ], [ %55, %53 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %35) #20
  br label %243

; <label>:78:                                     ; preds = %33
  %79 = call double @_ZNK6apollo6common7SLPoint1lEv(%"class.apollo::common::SLPoint"* nonnull %5)
  %80 = call double @fabs(double %79) #22
  %81 = fcmp ogt double %80, 2.000000e+01
  br i1 %81, label %241, label %82

; <label>:82:                                     ; preds = %78
  %83 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %18, align 8, !tbaa !16
  %84 = load double, double* %20, align 8, !tbaa !20
  %85 = invoke double @_ZNK6apollo5hdmap8LaneInfo7HeadingEd(%"class.apollo::hdmap::LaneInfo"* %83, double %84)
          to label %86 unwind label %118

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %4, i64 0, i32 0, i32 0
  %88 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %87, align 8, !tbaa !16
  %89 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %4, i64 0, i32 1
  %90 = load double, double* %89, align 8, !tbaa !20
  %91 = invoke double @_ZNK6apollo5hdmap8LaneInfo7HeadingEd(%"class.apollo::hdmap::LaneInfo"* %88, double %90)
          to label %92 unwind label %122

; <label>:92:                                     ; preds = %86
  %93 = invoke double @_ZN6apollo6common4math9AngleDiffEdd(double %85, double %91)
          to label %94 unwind label %126

; <label>:94:                                     ; preds = %92
  %95 = call double @fabs(double %93) #22
  %96 = fcmp ogt double %95, 0x3FF921FB54442D18
  br i1 %96, label %97, label %145

; <label>:97:                                     ; preds = %94
  %98 = load i32*, i32** @_ZZNK6apollo5hdmap13RouteSegments12CanDriveFromERKNS0_12LaneWaypointEE8vlocal__, align 8, !tbaa !38
  %99 = load i32, i32* %98, align 4, !tbaa !48
  %100 = icmp sgt i32 %99, 3
  br i1 %100, label %101, label %241

; <label>:101:                                    ; preds = %97
  %102 = icmp eq i32* %98, @_ZN6google21kLogSiteUninitializedE
  br i1 %102, label %103, label %106

; <label>:103:                                    ; preds = %101
  %104 = invoke zeroext i1 @_ZN6google11InitVLOG3__EPPiS0_PKci(i32** nonnull @_ZZNK6apollo5hdmap13RouteSegments12CanDriveFromERKNS0_12LaneWaypointEE8vlocal__, i32* nonnull @_ZN3fLI7FLAGS_vE, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 4)
          to label %105 unwind label %130

; <label>:105:                                    ; preds = %103
  br i1 %104, label %106, label %241

; <label>:106:                                    ; preds = %101, %105
  invoke void @_ZN6google17LogMessageVoidifyC1Ev(%"class.google::LogMessageVoidify"* nonnull %8)
          to label %107 unwind label %126

; <label>:107:                                    ; preds = %106
  %108 = bitcast %"class.google::LogMessage"* %9 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %108) #20
  invoke void @_ZN6google10LogMessageC1EPKci(%"class.google::LogMessage"* nonnull %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 309)
          to label %109 unwind label %134

; <label>:109:                                    ; preds = %107
  %110 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN6google10LogMessage6streamEv(%"class.google::LogMessage"* nonnull %9)
          to label %111 unwind label %138

; <label>:111:                                    ; preds = %109
  %112 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
          to label %113 unwind label %138

; <label>:113:                                    ; preds = %111
  %114 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
          to label %115 unwind label %138

; <label>:115:                                    ; preds = %113
  %116 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(%"class.std::__1::basic_ostream"* nonnull %114, double %93)
          to label %117 unwind label %138

; <label>:117:                                    ; preds = %115
  call void @_ZN6google17LogMessageVoidifyanERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(%"class.google::LogMessageVoidify"* nonnull %8, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %116)
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %9) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %108) #20
  br label %241

; <label>:118:                                    ; preds = %82
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  %121 = extractvalue { i8*, i32 } %119, 1
  br label %243

; <label>:122:                                    ; preds = %86
  %123 = landingpad { i8*, i32 }
          cleanup
  %124 = extractvalue { i8*, i32 } %123, 0
  %125 = extractvalue { i8*, i32 } %123, 1
  br label %243

; <label>:126:                                    ; preds = %106, %92
  %127 = landingpad { i8*, i32 }
          cleanup
  %128 = extractvalue { i8*, i32 } %127, 0
  %129 = extractvalue { i8*, i32 } %127, 1
  br label %243

; <label>:130:                                    ; preds = %103
  %131 = landingpad { i8*, i32 }
          cleanup
  %132 = extractvalue { i8*, i32 } %131, 0
  %133 = extractvalue { i8*, i32 } %131, 1
  br label %243

; <label>:134:                                    ; preds = %107
  %135 = landingpad { i8*, i32 }
          cleanup
  %136 = extractvalue { i8*, i32 } %135, 0
  %137 = extractvalue { i8*, i32 } %135, 1
  br label %142

; <label>:138:                                    ; preds = %115, %113, %111, %109
  %139 = landingpad { i8*, i32 }
          cleanup
  %140 = extractvalue { i8*, i32 } %139, 0
  %141 = extractvalue { i8*, i32 } %139, 1
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %9) #20
  br label %142

; <label>:142:                                    ; preds = %134, %138
  %143 = phi i32 [ %141, %138 ], [ %137, %134 ]
  %144 = phi i8* [ %140, %138 ], [ %136, %134 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %108) #20
  br label %243

; <label>:145:                                    ; preds = %94
  %146 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %146) #20
  store double 0.000000e+00, double* %10, align 8, !tbaa !36
  %147 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %147) #20
  store double 0.000000e+00, double* %11, align 8, !tbaa !36
  %148 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %18, align 8, !tbaa !16
  %149 = load double, double* %20, align 8, !tbaa !20
  invoke void @_ZNK6apollo5hdmap8LaneInfo8GetWidthEdPdS2_(%"class.apollo::hdmap::LaneInfo"* %148, double %149, double* nonnull %10, double* nonnull %11)
          to label %150 unwind label %178

; <label>:150:                                    ; preds = %145
  %151 = bitcast double* %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %151) #20
  store double 0.000000e+00, double* %12, align 8, !tbaa !36
  %152 = bitcast double* %13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %152) #20
  store double 0.000000e+00, double* %13, align 8, !tbaa !36
  %153 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %87, align 8, !tbaa !16
  %154 = load double, double* %89, align 8, !tbaa !20
  invoke void @_ZNK6apollo5hdmap8LaneInfo8GetWidthEdPdS2_(%"class.apollo::hdmap::LaneInfo"* %153, double %154, double* nonnull %12, double* nonnull %13)
          to label %155 unwind label %182

; <label>:155:                                    ; preds = %150
  %156 = bitcast %"class.apollo::common::PointENU"* %14 to i8*
  call void @llvm.lifetime.start(i64 48, i8* nonnull %156) #20
  %157 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %87, align 8, !tbaa !16
  %158 = load double, double* %89, align 8, !tbaa !20
  invoke void @_ZNK6apollo5hdmap8LaneInfo14GetSmoothPointEd(%"class.apollo::common::PointENU"* nonnull sret %14, %"class.apollo::hdmap::LaneInfo"* %157, double %158)
          to label %159 unwind label %186

; <label>:159:                                    ; preds = %155
  %160 = call double @_ZN6apollo6common4util10DistanceXYINS0_8PointENUES3_EEdRKT_RKT0_(%"class.apollo::common::PointENU"* nonnull dereferenceable(48) %3, %"class.apollo::common::PointENU"* nonnull dereferenceable(48) %14)
  %161 = call double @_ZNK6apollo6common7SLPoint1lEv(%"class.apollo::common::SLPoint"* nonnull %5)
  %162 = fcmp olt double %161, 0.000000e+00
  br i1 %162, label %163, label %201

; <label>:163:                                    ; preds = %159
  %164 = load double, double* %10, align 8, !tbaa !36
  %165 = load double, double* %13, align 8, !tbaa !36
  %166 = fadd double %164, %165
  %167 = fadd double %166, 3.000000e-01
  %168 = fcmp ogt double %160, %167
  br i1 %168, label %169, label %227

; <label>:169:                                    ; preds = %163
  %170 = bitcast %"class.google::LogMessage"* %15 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %170) #20
  invoke void @_ZN6google10LogMessageC1EPKcii(%"class.google::LogMessage"* nonnull %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 329, i32 2)
          to label %171 unwind label %190

; <label>:171:                                    ; preds = %169
  %172 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN6google10LogMessage6streamEv(%"class.google::LogMessage"* nonnull %15)
          to label %173 unwind label %194

; <label>:173:                                    ; preds = %171
  %174 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
          to label %175 unwind label %194

; <label>:175:                                    ; preds = %173
  %176 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(%"class.std::__1::basic_ostream"* nonnull %174, double %160)
          to label %177 unwind label %194

; <label>:177:                                    ; preds = %175
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %15) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %170) #20
  br label %227

; <label>:178:                                    ; preds = %145
  %179 = landingpad { i8*, i32 }
          cleanup
  %180 = extractvalue { i8*, i32 } %179, 0
  %181 = extractvalue { i8*, i32 } %179, 1
  br label %238

; <label>:182:                                    ; preds = %150
  %183 = landingpad { i8*, i32 }
          cleanup
  %184 = extractvalue { i8*, i32 } %183, 0
  %185 = extractvalue { i8*, i32 } %183, 1
  br label %235

; <label>:186:                                    ; preds = %155
  %187 = landingpad { i8*, i32 }
          cleanup
  %188 = extractvalue { i8*, i32 } %187, 0
  %189 = extractvalue { i8*, i32 } %187, 1
  br label %232

; <label>:190:                                    ; preds = %169
  %191 = landingpad { i8*, i32 }
          cleanup
  %192 = extractvalue { i8*, i32 } %191, 0
  %193 = extractvalue { i8*, i32 } %191, 1
  br label %198

; <label>:194:                                    ; preds = %175, %173, %171
  %195 = landingpad { i8*, i32 }
          cleanup
  %196 = extractvalue { i8*, i32 } %195, 0
  %197 = extractvalue { i8*, i32 } %195, 1
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %15) #20
  br label %198

; <label>:198:                                    ; preds = %194, %190
  %199 = phi i32 [ %197, %194 ], [ %193, %190 ]
  %200 = phi i8* [ %196, %194 ], [ %192, %190 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %170) #20
  br label %229

; <label>:201:                                    ; preds = %159
  %202 = load double, double* %11, align 8, !tbaa !36
  %203 = load double, double* %12, align 8, !tbaa !36
  %204 = fadd double %202, %203
  %205 = fadd double %204, 3.000000e-01
  %206 = fcmp ogt double %160, %205
  br i1 %206, label %207, label %227

; <label>:207:                                    ; preds = %201
  %208 = bitcast %"class.google::LogMessage"* %16 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %208) #20
  invoke void @_ZN6google10LogMessageC1EPKcii(%"class.google::LogMessage"* nonnull %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 335, i32 2)
          to label %209 unwind label %216

; <label>:209:                                    ; preds = %207
  %210 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZN6google10LogMessage6streamEv(%"class.google::LogMessage"* nonnull %16)
          to label %211 unwind label %220

; <label>:211:                                    ; preds = %209
  %212 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc(%"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
          to label %213 unwind label %220

; <label>:213:                                    ; preds = %211
  %214 = invoke dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(%"class.std::__1::basic_ostream"* nonnull %212, double %160)
          to label %215 unwind label %220

; <label>:215:                                    ; preds = %213
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %16) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %208) #20
  br label %227

; <label>:216:                                    ; preds = %207
  %217 = landingpad { i8*, i32 }
          cleanup
  %218 = extractvalue { i8*, i32 } %217, 0
  %219 = extractvalue { i8*, i32 } %217, 1
  br label %224

; <label>:220:                                    ; preds = %213, %211, %209
  %221 = landingpad { i8*, i32 }
          cleanup
  %222 = extractvalue { i8*, i32 } %221, 0
  %223 = extractvalue { i8*, i32 } %221, 1
  call void @_ZN6google10LogMessageD1Ev(%"class.google::LogMessage"* nonnull %16) #20
  br label %224

; <label>:224:                                    ; preds = %220, %216
  %225 = phi i32 [ %223, %220 ], [ %219, %216 ]
  %226 = phi i8* [ %222, %220 ], [ %218, %216 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %208) #20
  br label %229

; <label>:227:                                    ; preds = %163, %201, %215, %177
  %228 = phi i1 [ false, %177 ], [ false, %215 ], [ true, %201 ], [ true, %163 ]
  call void @_ZN6apollo6common8PointENUD1Ev(%"class.apollo::common::PointENU"* nonnull %14) #20
  call void @llvm.lifetime.end(i64 48, i8* nonnull %156) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %152) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %151) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %147) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %146) #20
  br label %241

; <label>:229:                                    ; preds = %224, %198
  %230 = phi i32 [ %199, %198 ], [ %225, %224 ]
  %231 = phi i8* [ %200, %198 ], [ %226, %224 ]
  call void @_ZN6apollo6common8PointENUD1Ev(%"class.apollo::common::PointENU"* nonnull %14) #20
  br label %232

; <label>:232:                                    ; preds = %229, %186
  %233 = phi i32 [ %230, %229 ], [ %189, %186 ]
  %234 = phi i8* [ %231, %229 ], [ %188, %186 ]
  call void @llvm.lifetime.end(i64 48, i8* nonnull %156) #20
  br label %235

; <label>:235:                                    ; preds = %232, %182
  %236 = phi i32 [ %233, %232 ], [ %185, %182 ]
  %237 = phi i8* [ %234, %232 ], [ %184, %182 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %152) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %151) #20
  br label %238

; <label>:238:                                    ; preds = %235, %178
  %239 = phi i32 [ %236, %235 ], [ %181, %178 ]
  %240 = phi i8* [ %237, %235 ], [ %180, %178 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %147) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %146) #20
  br label %243

; <label>:241:                                    ; preds = %105, %97, %78, %117, %227, %44
  %242 = phi i1 [ false, %44 ], [ false, %78 ], [ %228, %227 ], [ false, %117 ], [ false, %97 ], [ false, %105 ]
  call void @_ZN6apollo6common7SLPointD1Ev(%"class.apollo::common::SLPoint"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 40, i8* nonnull %30) #20
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %4) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %29) #20
  br label %249

; <label>:243:                                    ; preds = %118, %126, %130, %238, %142, %122, %75, %49
  %244 = phi i32 [ %76, %75 ], [ %52, %49 ], [ %121, %118 ], [ %125, %122 ], [ %143, %142 ], [ %129, %126 ], [ %133, %130 ], [ %239, %238 ]
  %245 = phi i8* [ %77, %75 ], [ %51, %49 ], [ %120, %118 ], [ %124, %122 ], [ %144, %142 ], [ %128, %126 ], [ %132, %130 ], [ %240, %238 ]
  call void @_ZN6apollo6common7SLPointD1Ev(%"class.apollo::common::SLPoint"* nonnull %5) #20
  br label %246

; <label>:246:                                    ; preds = %243, %45
  %247 = phi i32 [ %244, %243 ], [ %48, %45 ]
  %248 = phi i8* [ %245, %243 ], [ %47, %45 ]
  call void @llvm.lifetime.end(i64 40, i8* nonnull %30) #20
  call void @_ZN6apollo5hdmap12LaneWaypointD1Ev(%"struct.apollo::hdmap::LaneWaypoint"* nonnull %4) #20
  call void @llvm.lifetime.end(i64 32, i8* nonnull %29) #20
  br label %251

; <label>:249:                                    ; preds = %23, %241
  %250 = phi i1 [ %242, %241 ], [ true, %23 ]
  call void @_ZN6apollo6common8PointENUD1Ev(%"class.apollo::common::PointENU"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 48, i8* nonnull %17) #20
  ret i1 %250

; <label>:251:                                    ; preds = %246, %24
  %252 = phi i32 [ %247, %246 ], [ %27, %24 ]
  %253 = phi i8* [ %248, %246 ], [ %26, %24 ]
  call void @_ZN6apollo6common8PointENUD1Ev(%"class.apollo::common::PointENU"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 48, i8* nonnull %17) #20
  %254 = insertvalue { i8*, i32 } undef, i8* %253, 0
  %255 = insertvalue { i8*, i32 } %254, i32 %252, 1
  resume { i8*, i32 } %255
}

declare void @_ZNK6apollo5hdmap8LaneInfo14GetSmoothPointEd(%"class.apollo::common::PointENU"* sret, %"class.apollo::hdmap::LaneInfo"*, double) local_unnamed_addr #2

declare void @_ZNK6apollo5hdmap12LaneWaypoint11DebugStringEv(%"class.std::__1::basic_string"* sret, %"struct.apollo::hdmap::LaneWaypoint"*) local_unnamed_addr #2

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr double @_ZNK6apollo6common7SLPoint1lEv(%"class.apollo::common::SLPoint"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::common::SLPoint", %"class.apollo::common::SLPoint"* %0, i64 0, i32 5
  %3 = load double, double* %2, align 8, !tbaa !47
  ret double %3
}

declare double @_ZNK6apollo5hdmap8LaneInfo7HeadingEd(%"class.apollo::hdmap::LaneInfo"*, double) local_unnamed_addr #2

declare double @_ZN6apollo6common4math9AngleDiffEdd(double, double) local_unnamed_addr #2

declare zeroext i1 @_ZN6google11InitVLOG3__EPPiS0_PKci(i32**, i32*, i8*, i32) local_unnamed_addr #2

; Function Attrs: norecurse ssp uwtable
define linkonce_odr void @_ZN6google17LogMessageVoidifyC1Ev(%"class.google::LogMessageVoidify"*) unnamed_addr #5 align 2 {
  tail call void @_ZN6google17LogMessageVoidifyC2Ev(%"class.google::LogMessageVoidify"* %0)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN6google17LogMessageVoidifyanERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE(%"class.google::LogMessageVoidify"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) local_unnamed_addr #3 align 2 {
  ret void
}

declare void @_ZN6google10LogMessageC1EPKci(%"class.google::LogMessage"*, i8*, i32) unnamed_addr #2

declare dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd(%"class.std::__1::basic_ostream"*, double) local_unnamed_addr #2

declare void @_ZNK6apollo5hdmap8LaneInfo8GetWidthEdPdS2_(%"class.apollo::hdmap::LaneInfo"*, double, double*, double*) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr double @_ZN6apollo6common4util10DistanceXYINS0_8PointENUES3_EEdRKT_RKT0_(%"class.apollo::common::PointENU"* dereferenceable(48), %"class.apollo::common::PointENU"* dereferenceable(48)) local_unnamed_addr #8 {
  %3 = tail call double @_ZNK6apollo6common8PointENU1xEv(%"class.apollo::common::PointENU"* nonnull %0)
  %4 = tail call double @_ZNK6apollo6common8PointENU1xEv(%"class.apollo::common::PointENU"* nonnull %1)
  %5 = fsub double %3, %4
  %6 = tail call double @_ZNK6apollo6common8PointENU1yEv(%"class.apollo::common::PointENU"* nonnull %0)
  %7 = tail call double @_ZNK6apollo6common8PointENU1yEv(%"class.apollo::common::PointENU"* nonnull %1)
  %8 = fsub double %6, %7
  %9 = tail call double @hypot(double %5, double %8) #22
  ret double %9
}

; Function Attrs: nounwind
declare void @_ZN6apollo6common8PointENUD1Ev(%"class.apollo::common::PointENU"*) unnamed_addr #11

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr dereferenceable(32) %"class.apollo::hdmap::Id"* @_ZNK6apollo5hdmap4Lane2idEv(%"class.apollo::hdmap::Lane"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::hdmap::Lane", %"class.apollo::hdmap::Lane"* %0, i64 0, i32 15
  %3 = load %"class.apollo::hdmap::Id"*, %"class.apollo::hdmap::Id"** %2, align 8, !tbaa !50
  %4 = icmp ne %"class.apollo::hdmap::Id"* %3, null
  %5 = select i1 %4, %"class.apollo::hdmap::Id"* %3, %"class.apollo::hdmap::Id"* bitcast (%"class.apollo::hdmap::IdDefaultTypeInternal"* @_ZN6apollo5hdmap21_Id_default_instance_E to %"class.apollo::hdmap::Id"*)
  ret %"class.apollo::hdmap::Id"* %5
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr dereferenceable(24) %"class.std::__1::basic_string"* @_ZNK6google8protobuf8internal14ArenaStringPtr10GetNoArenaEv(%"struct.google::protobuf::internal::ArenaStringPtr"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"struct.google::protobuf::internal::ArenaStringPtr", %"struct.google::protobuf::internal::ArenaStringPtr"* %0, i64 0, i32 0
  %3 = load %"class.std::__1::basic_string"*, %"class.std::__1::basic_string"** %2, align 8, !tbaa !54
  ret %"class.std::__1::basic_string"* %3
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap12LaneWaypointD2Ev(%"struct.apollo::hdmap::LaneWaypoint"*) unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %0, i64 0, i32 0
  tail call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* %2) #20
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap12LaneWaypointC2ENSt3__110shared_ptrIKNS0_8LaneInfoEEEdd(%"struct.apollo::hdmap::LaneWaypoint"*, %"class.std::__1::shared_ptr"*, double, double) unnamed_addr #1 align 2 {
  %5 = tail call dereferenceable(16) %"class.std::__1::shared_ptr"* @_ZN6google12CheckNotNullIRNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEEEEET_PKciSB_OS9_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), %"class.std::__1::shared_ptr"* dereferenceable(16) %1)
  %6 = bitcast %"class.std::__1::shared_ptr"* %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !16
  %8 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %0 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %0, i64 0, i32 0, i32 1
  %10 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %5, i64 0, i32 1
  %11 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %10, align 8, !tbaa !37
  store %"class.std::__1::__shared_weak_count"* %11, %"class.std::__1::__shared_weak_count"** %9, align 8, !tbaa !37
  %12 = icmp eq %"class.std::__1::__shared_weak_count"* %11, null
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %4
  tail call void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %11) #20
  br label %14

; <label>:14:                                     ; preds = %4, %13
  %15 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %0, i64 0, i32 1
  store double %2, double* %15, align 8, !tbaa !20
  %16 = getelementptr inbounds %"struct.apollo::hdmap::LaneWaypoint", %"struct.apollo::hdmap::LaneWaypoint"* %0, i64 0, i32 2
  store double %3, double* %16, align 8, !tbaa !55
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(16) %"class.std::__1::shared_ptr"* @_ZN6google12CheckNotNullIRNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEEEEET_PKciSB_OS9_(i8*, i32, i8*, %"class.std::__1::shared_ptr"* dereferenceable(16)) local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %5 = alloca %"class.google::LogMessageFatal", align 8
  %6 = alloca %"struct.google::CheckOpString", align 8
  %7 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %3, i64 0, i32 0
  %8 = load %"class.apollo::hdmap::LaneInfo"*, %"class.apollo::hdmap::LaneInfo"** %7, align 8, !tbaa !16
  %9 = icmp eq %"class.apollo::hdmap::LaneInfo"* %8, null
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %4
  %11 = bitcast %"struct.google::CheckOpString"* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #20
  %12 = tail call i8* @_Znwm(i64 24) #23
  %13 = bitcast i8* %12 to %"class.std::__1::basic_string"*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %12, i8 0, i64 24, i32 8, i1 false) #20
  %14 = tail call i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8* %2) #20
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"* nonnull %13, i8* %2, i64 %14)
          to label %15 unwind label %16

; <label>:15:                                     ; preds = %10
  call void @_ZN6google13CheckOpStringC1EPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(%"struct.google::CheckOpString"* nonnull %6, %"class.std::__1::basic_string"* nonnull %13)
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(%"class.google::LogMessageFatal"* nonnull %5, i8* %0, i32 %1, %"struct.google::CheckOpString"* nonnull dereferenceable(8) %6)
  call void @_ZN6google15LogMessageFatalD1Ev(%"class.google::LogMessageFatal"* nonnull %5) #24
  unreachable

; <label>:16:                                     ; preds = %10
  %17 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* nonnull %12) #25
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #20
  resume { i8*, i32 } %17

; <label>:18:                                     ; preds = %4
  ret %"class.std::__1::shared_ptr"* %3
}

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #14

; Function Attrs: norecurse ssp uwtable
define linkonce_odr void @_ZN6google13CheckOpStringC1EPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(%"struct.google::CheckOpString"*, %"class.std::__1::basic_string"*) unnamed_addr #5 align 2 {
  tail call void @_ZN6google13CheckOpStringC2EPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(%"struct.google::CheckOpString"* %0, %"class.std::__1::basic_string"* %1)
  ret void
}

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(%"class.google::LogMessageFatal"*, i8*, i32, %"struct.google::CheckOpString"* dereferenceable(8)) unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(%"class.google::LogMessageFatal"*) unnamed_addr #15

; Function Attrs: inlinehint ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(%"class.std::__1::basic_string"*, i8*, i64) local_unnamed_addr #16 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = icmp ugt i64 %2, -17
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = bitcast %"class.std::__1::basic_string"* %0 to %"class.std::__1::__basic_string_common"*
  tail call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %7) #21
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = icmp ult i64 %2, 23
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %8
  %11 = trunc i64 %2 to i8
  %12 = shl i8 %11, 1
  %13 = bitcast %"class.std::__1::basic_string"* %0 to i8*
  store i8 %12, i8* %13, align 8, !tbaa !17
  %14 = bitcast %"class.std::__1::basic_string"* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %15 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %14, i64 0, i32 1, i64 0
  br label %24

; <label>:16:                                     ; preds = %8
  %17 = add i64 %2, 16
  %18 = and i64 %17, -16
  %19 = tail call i8* @_Znwm(i64 %18) #23
  %20 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %19, i8** %20, align 8, !tbaa !56
  %21 = or i64 %18, 1
  %22 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %21, i64* %22, align 8, !tbaa !59
  %23 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %2, i64* %23, align 8, !tbaa !60
  br label %24

; <label>:24:                                     ; preds = %16, %10
  %25 = phi i8* [ %15, %10 ], [ %19, %16 ]
  %26 = tail call i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8* %25, i8* %1, i64 %2) #20
  %27 = getelementptr inbounds i8, i8* %25, i64 %2
  call void @llvm.lifetime.start(i64 1, i8* nonnull %4) #20
  store i8 0, i8* %4, align 1, !tbaa !17
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %27, i8* nonnull dereferenceable(1) %4) #20
  call void @llvm.lifetime.end(i64 1, i8* nonnull %4) #20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr i64 @_ZNSt3__111char_traitsIcE6lengthEPKc(i8*) local_unnamed_addr #10 align 2 {
  %2 = tail call i64 @strlen(i8* %0) #20
  ret i64 %2
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #9

; Function Attrs: noreturn
declare void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"*) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr i8* @_ZNSt3__111char_traitsIcE4copyEPcPKcm(i8*, i8*, i64) local_unnamed_addr #10 align 2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 %2, i32 1, i1 false)
  br label %6

; <label>:6:                                      ; preds = %3, %5
  ret i8* %0
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1), i8* dereferenceable(1)) local_unnamed_addr #7 align 2 {
  %3 = load i8, i8* %1, align 1, !tbaa !17
  store i8 %3, i8* %0, align 1, !tbaa !17
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) local_unnamed_addr #18 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #20
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare i8* @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(%"class.std::length_error"*) unnamed_addr #11

declare void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"*, i8*) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD0Ev(%"class.std::length_error"*) unnamed_addr #11

; Function Attrs: nounwind
declare i8* @_ZNKSt11logic_error4whatEv(%"class.std::logic_error"*) unnamed_addr #11

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #19

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN6google13CheckOpStringC2EPNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(%"struct.google::CheckOpString"*, %"class.std::__1::basic_string"*) unnamed_addr #3 align 2 {
  %3 = getelementptr inbounds %"struct.google::CheckOpString", %"struct.google::CheckOpString"* %0, i64 0, i32 0
  store %"class.std::__1::basic_string"* %1, %"class.std::__1::basic_string"** %3, align 8, !tbaa !61
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo6common4math5Vec2dC2Edd(%"class.apollo::common::math::Vec2d"*, double, double) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds %"class.apollo::common::math::Vec2d", %"class.apollo::common::math::Vec2d"* %0, i64 0, i32 0
  store double %1, double* %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.apollo::common::math::Vec2d", %"class.apollo::common::math::Vec2d"* %0, i64 0, i32 1
  store double %2, double* %5, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap12LaneWaypointC2Ev(%"struct.apollo::hdmap::LaneWaypoint"*) unnamed_addr #8 align 2 {
  %2 = bitcast %"struct.apollo::hdmap::LaneWaypoint"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint norecurse ssp uwtable
define linkonce_odr void @_ZN6apollo6common7SLPoint9set_has_lEv(%"class.apollo::common::SLPoint"*) local_unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %"class.apollo::common::SLPoint", %"class.apollo::common::SLPoint"* %0, i64 0, i32 2, i32 0, i64 0
  %3 = load i32, i32* %2, align 4, !tbaa !48
  %4 = or i32 %3, 2
  store i32 %4, i32* %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo6common7SLPoint9set_has_sEv(%"class.apollo::common::SLPoint"*) local_unnamed_addr #7 align 2 {
  %2 = getelementptr inbounds %"class.apollo::common::SLPoint", %"class.apollo::common::SLPoint"* %0, i64 0, i32 2, i32 0, i64 0
  %3 = load i32, i32* %2, align 4, !tbaa !48
  %4 = or i32 %3, 1
  store i32 %4, i32* %2, align 4, !tbaa !48
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define linkonce_odr void @_ZN6google17LogMessageVoidifyC2Ev(%"class.google::LogMessageVoidify"*) unnamed_addr #3 align 2 {
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev(%"class.std::__1::basic_string"*) unnamed_addr #10 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %2 = bitcast %"class.std::__1::basic_string"* %0 to i8*
  %3 = load i8, i8* %2, align 8, !tbaa !17
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8, !tbaa !56
  tail call void @_ZdlPv(i8* %8) #25
  br label %9

; <label>:9:                                      ; preds = %1, %6
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE7compareEPKcS3_m(i8*, i8*, i64) local_unnamed_addr #10 align 2 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @memcmp(i8* %0, i8* %1, i64 %2) #20
  br label %7

; <label>:7:                                      ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(160) %"class.std::__1::basic_ostream"* @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(%"class.std::__1::basic_ostream"* dereferenceable(160), i8*, i64) local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::__1::locale", align 8
  %5 = alloca %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", align 8
  %6 = getelementptr inbounds %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry", %"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #20
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %5, %"class.std::__1::basic_ostream"* nonnull dereferenceable(160) %0)
          to label %7 unwind label %67

; <label>:7:                                      ; preds = %3
  %8 = load i8, i8* %6, align 8, !tbaa !66, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %78, label %10

; <label>:10:                                     ; preds = %7
  %11 = bitcast %"class.std::__1::basic_ostream"* %0 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !68
  %13 = getelementptr i8, i8* %12, i64 -24
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %"class.std::__1::basic_ostream"* %0 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 %15
  %18 = getelementptr inbounds i8, i8* %17, i64 40
  %19 = bitcast i8* %18 to %"class.std::__1::basic_streambuf"**
  %20 = load %"class.std::__1::basic_streambuf"*, %"class.std::__1::basic_streambuf"** %19, align 8, !tbaa !70
  %21 = bitcast i8* %17 to %"class.std::__1::ios_base"*
  %22 = getelementptr inbounds i8, i8* %17, i64 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 8, !tbaa !72
  %25 = getelementptr inbounds i8, i8* %1, i64 %2
  %26 = call i32 @_ZNSt3__111char_traitsIcE3eofEv() #20
  %27 = getelementptr inbounds i8, i8* %17, i64 144
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 8, !tbaa !73
  %30 = call zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32 %26, i32 %29) #20
  br i1 %30, label %31, label %47

; <label>:31:                                     ; preds = %10
  %32 = bitcast %"class.std::__1::locale"* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %32) #20
  %33 = bitcast i8* %17 to %"class.std::__1::ios_base"*
  invoke void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* nonnull sret %4, %"class.std::__1::ios_base"* %33)
          to label %34 unwind label %73

; <label>:34:                                     ; preds = %31
  %35 = invoke %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"* nonnull %4, %"class.std::__1::locale::id"* nonnull dereferenceable(16) @_ZNSt3__15ctypeIcE2idE)
          to label %36 unwind label %43

; <label>:36:                                     ; preds = %34
  %37 = bitcast %"class.std::__1::locale::facet"* %35 to %"class.std::__1::ctype"*
  %38 = bitcast %"class.std::__1::locale::facet"* %35 to i8 (%"class.std::__1::ctype"*, i8)***
  %39 = load i8 (%"class.std::__1::ctype"*, i8)**, i8 (%"class.std::__1::ctype"*, i8)*** %38, align 8, !tbaa !68
  %40 = getelementptr inbounds i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %39, i64 7
  %41 = load i8 (%"class.std::__1::ctype"*, i8)*, i8 (%"class.std::__1::ctype"*, i8)** %40, align 8
  %42 = invoke signext i8 %41(%"class.std::__1::ctype"* %37, i8 signext 32)
          to label %45 unwind label %43

; <label>:43:                                     ; preds = %36, %34
  %44 = landingpad { i8*, i32 }
          catch i8* null
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %4) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %32) #20
  br label %75

; <label>:45:                                     ; preds = %36
  call void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"* nonnull %4) #20
  call void @llvm.lifetime.end(i64 8, i8* nonnull %32) #20
  %46 = sext i8 %42 to i32
  store i32 %46, i32* %28, align 8, !tbaa !73
  br label %47

; <label>:47:                                     ; preds = %45, %10
  %48 = load i32, i32* %28, align 8, !tbaa !73
  %49 = trunc i32 %48 to i8
  %50 = and i32 %24, 176
  %51 = icmp eq i32 %50, 32
  %52 = select i1 %51, i8* %25, i8* %1
  %53 = invoke %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"* %20, i8* %1, i8* %52, i8* %25, %"class.std::__1::ios_base"* dereferenceable(136) %21, i8 signext %49)
          to label %54 unwind label %73

; <label>:54:                                     ; preds = %47
  %55 = icmp eq %"class.std::__1::basic_streambuf"* %53, null
  br i1 %55, label %56, label %78

; <label>:56:                                     ; preds = %54
  %57 = load i8*, i8** %11, align 8, !tbaa !68
  %58 = getelementptr i8, i8* %57, i64 -24
  %59 = bitcast i8* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8, i8* %16, i64 %60
  %62 = bitcast i8* %61 to %"class.std::__1::ios_base"*
  %63 = getelementptr inbounds i8, i8* %61, i64 32
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %64, align 8, !tbaa !75
  %66 = or i32 %65, 5
  invoke void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"* %62, i32 %66)
          to label %78 unwind label %70

; <label>:67:                                     ; preds = %3
  %68 = landingpad { i8*, i32 }
          catch i8* null
  %69 = extractvalue { i8*, i32 } %68, 0
  br label %81

; <label>:70:                                     ; preds = %56
  %71 = landingpad { i8*, i32 }
          catch i8* null
  %72 = extractvalue { i8*, i32 } %71, 0
  br label %79

; <label>:73:                                     ; preds = %31, %47
  %74 = landingpad { i8*, i32 }
          catch i8* null
  br label %75

; <label>:75:                                     ; preds = %43, %73
  %76 = phi { i8*, i32 } [ %74, %73 ], [ %44, %43 ]
  %77 = extractvalue { i8*, i32 } %76, 0
  br label %79

; <label>:78:                                     ; preds = %7, %56, %54
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %5) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #20
  br label %93

; <label>:79:                                     ; preds = %75, %70
  %80 = phi i8* [ %72, %70 ], [ %77, %75 ]
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"* nonnull %5) #20
  br label %81

; <label>:81:                                     ; preds = %79, %67
  %82 = phi i8* [ %80, %79 ], [ %69, %67 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #20
  %83 = call i8* @__cxa_begin_catch(i8* %82) #20
  %84 = bitcast %"class.std::__1::basic_ostream"* %0 to i8**
  %85 = load i8*, i8** %84, align 8, !tbaa !68
  %86 = getelementptr i8, i8* %85, i64 -24
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = bitcast %"class.std::__1::basic_ostream"* %0 to i8*
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  %91 = bitcast i8* %90 to %"class.std::__1::ios_base"*
  invoke void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"* %91)
          to label %92 unwind label %94

; <label>:92:                                     ; preds = %81
  call void @__cxa_end_catch()
  br label %93

; <label>:93:                                     ; preds = %92, %78
  ret %"class.std::__1::basic_ostream"* %0

; <label>:94:                                     ; preds = %81
  %95 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %96 unwind label %97

; <label>:96:                                     ; preds = %94
  resume { i8*, i32 } %95

; <label>:97:                                     ; preds = %94
  %98 = landingpad { i8*, i32 }
          catch i8* null
  %99 = extractvalue { i8*, i32 } %98, 0
  call void @__clang_call_terminate(i8* %99) #24
  unreachable
}

declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*, %"class.std::__1::basic_ostream"* dereferenceable(160)) unnamed_addr #2

; Function Attrs: ssp uwtable
define linkonce_odr hidden %"class.std::__1::basic_streambuf"* @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(%"class.std::__1::basic_streambuf"*, i8*, i8*, i8*, %"class.std::__1::ios_base"* dereferenceable(136), i8 signext) local_unnamed_addr #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = icmp eq %"class.std::__1::basic_streambuf"* %0, null
  br i1 %8, label %60, label %9

; <label>:9:                                      ; preds = %6
  %10 = ptrtoint i8* %3 to i64
  %11 = ptrtoint i8* %1 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds %"class.std::__1::ios_base", %"class.std::__1::ios_base"* %4, i64 0, i32 3
  %14 = load i64, i64* %13, align 8, !tbaa !76
  %15 = icmp sgt i64 %14, %12
  %16 = sub nsw i64 %14, %12
  %17 = select i1 %15, i64 %16, i64 0
  %18 = ptrtoint i8* %2 to i64
  %19 = sub i64 %18, %11
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %28

; <label>:21:                                     ; preds = %9
  %22 = bitcast %"class.std::__1::basic_streambuf"* %0 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %23 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %22, align 8, !tbaa !68
  %24 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %23, i64 12
  %25 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %24, align 8
  %26 = tail call i64 %25(%"class.std::__1::basic_streambuf"* nonnull %0, i8* %1, i64 %19)
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %60

; <label>:28:                                     ; preds = %21, %9
  %29 = icmp sgt i64 %17, 0
  br i1 %29, label %30, label %49

; <label>:30:                                     ; preds = %28
  %31 = bitcast %"class.std::__1::basic_string"* %7 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %31) #20
  call void @llvm.memset.p0i8.i64(i8* nonnull %31, i8 0, i64 24, i32 8, i1 false) #20
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"* nonnull %7, i64 %17, i8 signext %5)
  %32 = load i8, i8* %31, align 8, !tbaa !17
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast %"class.std::__1::basic_string"* %7 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %38 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %37, i64 0, i32 1, i64 0
  %39 = select i1 %34, i8* %38, i8* %36
  %40 = bitcast %"class.std::__1::basic_streambuf"* %0 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %41 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %40, align 8, !tbaa !68
  %42 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %41, i64 12
  %43 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %42, align 8
  %44 = invoke i64 %43(%"class.std::__1::basic_streambuf"* nonnull %0, i8* %39, i64 %17)
          to label %45 unwind label %47

; <label>:45:                                     ; preds = %30
  %46 = icmp eq i64 %44, %17
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %7) #20
  call void @llvm.lifetime.end(i64 24, i8* nonnull %31) #20
  br i1 %46, label %49, label %60

; <label>:47:                                     ; preds = %30
  %48 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(%"class.std::__1::basic_string"* nonnull %7) #20
  call void @llvm.lifetime.end(i64 24, i8* nonnull %31) #20
  resume { i8*, i32 } %48

; <label>:49:                                     ; preds = %45, %28
  %50 = sub i64 %10, %18
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

; <label>:52:                                     ; preds = %49
  %53 = bitcast %"class.std::__1::basic_streambuf"* %0 to i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)***
  %54 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)**, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*** %53, align 8, !tbaa !68
  %55 = getelementptr inbounds i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %54, i64 12
  %56 = load i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)*, i64 (%"class.std::__1::basic_streambuf"*, i8*, i64)** %55, align 8
  %57 = call i64 %56(%"class.std::__1::basic_streambuf"* nonnull %0, i8* %2, i64 %50)
  %58 = icmp eq i64 %57, %50
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %52, %49
  store i64 0, i64* %13, align 8, !tbaa !76
  br label %60

; <label>:60:                                     ; preds = %59, %45, %21, %52, %6
  %61 = phi %"class.std::__1::basic_streambuf"* [ null, %6 ], [ %0, %59 ], [ null, %45 ], [ null, %21 ], [ null, %52 ]
  ret %"class.std::__1::basic_streambuf"* %61
}

; Function Attrs: nounwind
declare void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev(%"class.std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry"*) unnamed_addr #11

declare void @_ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv(%"class.std::__1::ios_base"*) local_unnamed_addr #2

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint ssp uwtable
define available_externally void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc(%"class.std::__1::basic_string"*, i64, i8 signext) local_unnamed_addr #16 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = alloca i8, align 1
  %5 = icmp ugt i64 %1, -17
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = bitcast %"class.std::__1::basic_string"* %0 to %"class.std::__1::__basic_string_common"*
  tail call void @_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__basic_string_common"* %7) #21
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = icmp ult i64 %1, 23
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %8
  %11 = trunc i64 %1 to i8
  %12 = shl i8 %11, 1
  %13 = bitcast %"class.std::__1::basic_string"* %0 to i8*
  store i8 %12, i8* %13, align 8, !tbaa !17
  %14 = bitcast %"class.std::__1::basic_string"* %0 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %15 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %14, i64 0, i32 1, i64 0
  br label %24

; <label>:16:                                     ; preds = %8
  %17 = add i64 %1, 16
  %18 = and i64 %17, -16
  %19 = tail call i8* @_Znwm(i64 %18) #23
  %20 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i8* %19, i8** %20, align 8, !tbaa !56
  %21 = or i64 %18, 1
  %22 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i64 %21, i64* %22, align 8, !tbaa !59
  %23 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 %1, i64* %23, align 8, !tbaa !60
  br label %24

; <label>:24:                                     ; preds = %16, %10
  %25 = phi i8* [ %15, %10 ], [ %19, %16 ]
  %26 = tail call i8* @_ZNSt3__111char_traitsIcE6assignEPcmc(i8* %25, i64 %1, i8 signext %2) #20
  %27 = getelementptr inbounds i8, i8* %25, i64 %1
  call void @llvm.lifetime.start(i64 1, i8* nonnull %4) #20
  store i8 0, i8* %4, align 1, !tbaa !17
  call void @_ZNSt3__111char_traitsIcE6assignERcRKc(i8* dereferenceable(1) %27, i8* nonnull dereferenceable(1) %4) #20
  call void @llvm.lifetime.end(i64 1, i8* nonnull %4) #20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr i8* @_ZNSt3__111char_traitsIcE6assignEPcmc(i8*, i64, i8 signext) local_unnamed_addr #10 align 2 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext %2) #20
  %7 = trunc i32 %6 to i8
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 %7, i64 %1, i32 1, i1 false)
  br label %8

; <label>:8:                                      ; preds = %3, %5
  ret i8* %0
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE11to_int_typeEc(i8 signext) local_unnamed_addr #7 align 2 {
  %2 = zext i8 %0 to i32
  ret i32 %2
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr zeroext i1 @_ZNSt3__111char_traitsIcE11eq_int_typeEii(i32, i32) local_unnamed_addr #7 align 2 {
  %3 = icmp eq i32 %0, %1
  ret i1 %3
}

; Function Attrs: inlinehint norecurse nounwind ssp uwtable
define linkonce_odr i32 @_ZNSt3__111char_traitsIcE3eofEv() local_unnamed_addr #7 align 2 {
  ret i32 -1
}

declare void @_ZNKSt3__18ios_base6getlocEv(%"class.std::__1::locale"* sret, %"class.std::__1::ios_base"*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt3__16localeD1Ev(%"class.std::__1::locale"*) unnamed_addr #11

declare %"class.std::__1::locale::facet"* @_ZNKSt3__16locale9use_facetERNS0_2idE(%"class.std::__1::locale"*, %"class.std::__1::locale::id"* dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNSt3__18ios_base5clearEj(%"class.std::__1::ios_base"*, i32) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED2Ev(%"class.std::__1::shared_ptr"*) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %0, i64 0, i32 1
  %3 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %2, align 8, !tbaa !37
  %4 = icmp eq %"class.std::__1::__shared_weak_count"* %3, null
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @_ZNSt3__119__shared_weak_count16__release_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %3) #20
  br label %6

; <label>:6:                                      ; preds = %1, %5
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count16__release_sharedEv(%"class.std::__1::__shared_weak_count"*) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"*) local_unnamed_addr #11

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPKS3_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESD_SD_m(%"class.std::__1::vector"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*, i64) local_unnamed_addr #1 align 2 {
  %5 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 1
  %6 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %1, %2
  br i1 %6, label %16, label %7

; <label>:7:                                      ; preds = %4
  br label %8

; <label>:8:                                      ; preds = %7, %8
  %9 = phi %"struct.apollo::hdmap::LaneSegment"* [ %11, %8 ], [ %1, %7 ]
  %10 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !38
  tail call void @_ZN6apollo5hdmap11LaneSegmentC1ERKS1_(%"struct.apollo::hdmap::LaneSegment"* %10, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %9) #20
  %11 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %9, i64 1
  %12 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !38
  %13 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %12, i64 1
  store %"struct.apollo::hdmap::LaneSegment"* %13, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !38
  %14 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %11, %2
  br i1 %14, label %15, label %8

; <label>:15:                                     ; preds = %8
  br label %16

; <label>:16:                                     ; preds = %15, %4
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE12__move_rangeEPS3_S7_S7_(%"class.std::__1::vector"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*) local_unnamed_addr #1 align 2 {
  %5 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 1
  %6 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !35
  %7 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %6 to i64
  %8 = ptrtoint %"struct.apollo::hdmap::LaneSegment"* %3 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 5
  %11 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 %10
  %12 = icmp ult %"struct.apollo::hdmap::LaneSegment"* %11, %2
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %4
  br label %27

; <label>:14:                                     ; preds = %27
  br label %15

; <label>:15:                                     ; preds = %14, %4
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %26, label %17

; <label>:17:                                     ; preds = %15
  br label %18

; <label>:18:                                     ; preds = %17, %18
  %19 = phi %"struct.apollo::hdmap::LaneSegment"* [ %22, %18 ], [ %6, %17 ]
  %20 = phi %"struct.apollo::hdmap::LaneSegment"* [ %21, %18 ], [ %11, %17 ]
  %21 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %20, i64 -1
  %22 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %19, i64 -1
  %23 = tail call dereferenceable(32) %"struct.apollo::hdmap::LaneSegment"* @_ZN6apollo5hdmap11LaneSegmentaSEOS1_(%"struct.apollo::hdmap::LaneSegment"* %22, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %21) #20
  %24 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %21, %1
  br i1 %24, label %25, label %18

; <label>:25:                                     ; preds = %18
  br label %26

; <label>:26:                                     ; preds = %25, %15
  ret void

; <label>:27:                                     ; preds = %13, %27
  %28 = phi %"struct.apollo::hdmap::LaneSegment"* [ %30, %27 ], [ %11, %13 ]
  %29 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !35
  tail call void @_ZN6apollo5hdmap11LaneSegmentC1EOS1_(%"struct.apollo::hdmap::LaneSegment"* %29, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %28) #20
  %30 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %28, i64 1
  %31 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !35
  %32 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %31, i64 1
  store %"struct.apollo::hdmap::LaneSegment"* %32, %"struct.apollo::hdmap::LaneSegment"** %5, align 8, !tbaa !35
  %33 = icmp ult %"struct.apollo::hdmap::LaneSegment"* %30, %2
  br i1 %33, label %27, label %14
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEEC1EmmS6_(%"struct.std::__1::__split_buffer"*, i64, i64, %"class.std::__1::allocator.57"* dereferenceable(1)) unnamed_addr #1 align 2 {
  tail call void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEEC2EmmS6_(%"struct.std::__1::__split_buffer"* %0, i64 %1, i64 %2, %"class.std::__1::allocator.57"* nonnull dereferenceable(1) %3)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEE18__construct_at_endINS_11__wrap_iterIPKS3_EEEENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESE_SE_(%"struct.std::__1::__split_buffer"*, %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"*) local_unnamed_addr #1 align 2 {
  %4 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %1, %2
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 2
  br label %7

; <label>:7:                                      ; preds = %5, %7
  %8 = phi %"struct.apollo::hdmap::LaneSegment"* [ %1, %5 ], [ %12, %7 ]
  %9 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !77
  tail call void @_ZN6apollo5hdmap11LaneSegmentC1ERKS1_(%"struct.apollo::hdmap::LaneSegment"* %9, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %8) #20
  %10 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !77
  %11 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %10, i64 1
  store %"struct.apollo::hdmap::LaneSegment"* %11, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !77
  %12 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %8, i64 1
  %13 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %12, %2
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7
  br label %15

; <label>:15:                                     ; preds = %14, %3
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr %"struct.apollo::hdmap::LaneSegment"* @_ZNSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS5_EEPS3_(%"class.std::__1::vector"*, %"struct.std::__1::__split_buffer"* dereferenceable(40), %"struct.apollo::hdmap::LaneSegment"*) local_unnamed_addr #1 align 2 {
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %1, i64 0, i32 1
  %5 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 0
  %7 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %6, align 8, !tbaa !32
  %8 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %7, %2
  br i1 %8, label %19, label %9

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi %"struct.apollo::hdmap::LaneSegment"* [ %14, %10 ], [ %2, %9 ]
  %12 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !38
  %13 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %12, i64 -1
  %14 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %11, i64 -1
  tail call void @_ZN6apollo5hdmap11LaneSegmentC1EOS1_(%"struct.apollo::hdmap::LaneSegment"* %13, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %14) #20
  %15 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !38
  %16 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %15, i64 -1
  store %"struct.apollo::hdmap::LaneSegment"* %16, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !38
  %17 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %14, %7
  br i1 %17, label %18, label %10

; <label>:18:                                     ; preds = %10
  br label %19

; <label>:19:                                     ; preds = %18, %3
  %20 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 1
  %21 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %1, i64 0, i32 2
  %23 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %21, %2
  br i1 %23, label %33, label %24

; <label>:24:                                     ; preds = %19
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi %"struct.apollo::hdmap::LaneSegment"* [ %28, %25 ], [ %2, %24 ]
  %27 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %22, align 8, !tbaa !38
  tail call void @_ZN6apollo5hdmap11LaneSegmentC1EOS1_(%"struct.apollo::hdmap::LaneSegment"* %27, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %26) #20
  %28 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %26, i64 1
  %29 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %22, align 8, !tbaa !38
  %30 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %29, i64 1
  store %"struct.apollo::hdmap::LaneSegment"* %30, %"struct.apollo::hdmap::LaneSegment"** %22, align 8, !tbaa !38
  %31 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %28, %21
  br i1 %31, label %32, label %25

; <label>:32:                                     ; preds = %25
  br label %33

; <label>:33:                                     ; preds = %32, %19
  %34 = bitcast %"class.std::__1::vector"* %0 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !38
  %36 = bitcast %"struct.apollo::hdmap::LaneSegment"** %4 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !38
  store i64 %37, i64* %34, align 8, !tbaa !38
  store i64 %35, i64* %36, align 8, !tbaa !38
  %38 = bitcast %"struct.apollo::hdmap::LaneSegment"** %20 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !38
  %40 = bitcast %"struct.apollo::hdmap::LaneSegment"** %22 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !38
  store i64 %41, i64* %38, align 8, !tbaa !38
  store i64 %39, i64* %40, align 8, !tbaa !38
  %42 = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 2, i32 0, i32 0
  %43 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %1, i64 0, i32 3, i32 0, i32 0
  %44 = bitcast %"struct.apollo::hdmap::LaneSegment"** %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !38
  %46 = bitcast %"struct.apollo::hdmap::LaneSegment"** %43 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !38
  store i64 %47, i64* %44, align 8, !tbaa !38
  store i64 %45, i64* %46, align 8, !tbaa !38
  %48 = load i64, i64* %36, align 8, !tbaa !80
  %49 = bitcast %"struct.std::__1::__split_buffer"* %1 to i64*
  store i64 %48, i64* %49, align 8, !tbaa !81
  ret %"struct.apollo::hdmap::LaneSegment"* %5
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEED1Ev(%"struct.std::__1::__split_buffer"*) unnamed_addr #8 align 2 {
  tail call void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEED2Ev(%"struct.std::__1::__split_buffer"* %0) #20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap11LaneSegmentC1ERKS1_(%"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"* dereferenceable(32)) unnamed_addr #10 align 2 {
  tail call void @_ZN6apollo5hdmap11LaneSegmentC2ERKS1_(%"struct.apollo::hdmap::LaneSegment"* %0, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %1) #20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap11LaneSegmentC2ERKS1_(%"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"* dereferenceable(32)) unnamed_addr #10 align 2 {
  %3 = bitcast %"struct.apollo::hdmap::LaneSegment"* %1 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !16
  %5 = bitcast %"struct.apollo::hdmap::LaneSegment"* %0 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 0, i32 1
  %7 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 0, i32 1
  %8 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %7, align 8, !tbaa !37
  store %"class.std::__1::__shared_weak_count"* %8, %"class.std::__1::__shared_weak_count"** %6, align 8, !tbaa !37
  %9 = icmp eq %"class.std::__1::__shared_weak_count"* %8, null
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %8) #20
  br label %11

; <label>:11:                                     ; preds = %2, %10
  %12 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 1
  %13 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 1
  %14 = bitcast double* %12 to i8*
  %15 = bitcast double* %13 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap11LaneSegmentC1EOS1_(%"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"* dereferenceable(32)) unnamed_addr #10 align 2 {
  tail call void @_ZN6apollo5hdmap11LaneSegmentC2EOS1_(%"struct.apollo::hdmap::LaneSegment"* %0, %"struct.apollo::hdmap::LaneSegment"* nonnull dereferenceable(32) %1) #20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap11LaneSegmentC2EOS1_(%"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"* dereferenceable(32)) unnamed_addr #10 align 2 {
  %3 = bitcast %"struct.apollo::hdmap::LaneSegment"* %1 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !16
  %5 = bitcast %"struct.apollo::hdmap::LaneSegment"* %0 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 0, i32 1
  %7 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 0, i32 1
  %8 = bitcast %"class.std::__1::__shared_weak_count"** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !37
  %10 = bitcast %"class.std::__1::__shared_weak_count"** %6 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !37
  %11 = bitcast %"struct.apollo::hdmap::LaneSegment"* %1 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %11, i8 0, i64 16, i32 8, i1 false) #20
  %12 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 1
  %13 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 1
  %14 = bitcast double* %12 to i8*
  %15 = bitcast double* %13 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr dereferenceable(32) %"struct.apollo::hdmap::LaneSegment"* @_ZN6apollo5hdmap11LaneSegmentaSEOS1_(%"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"* dereferenceable(32)) local_unnamed_addr #10 align 2 {
  %3 = alloca %"class.std::__1::shared_ptr", align 8
  %4 = bitcast %"class.std::__1::shared_ptr"* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %4) #20
  %5 = bitcast %"struct.apollo::hdmap::LaneSegment"* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !16
  %7 = bitcast %"class.std::__1::shared_ptr"* %3 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %3, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 0, i32 1
  %10 = bitcast %"class.std::__1::__shared_weak_count"** %9 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !37
  %12 = bitcast %"class.std::__1::__shared_weak_count"** %8 to i64*
  store i64 %11, i64* %12, align 8, !tbaa !37
  %13 = bitcast %"struct.apollo::hdmap::LaneSegment"* %1 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %13, i8 0, i64 16, i32 8, i1 false) #20
  %14 = load i64, i64* %7, align 8, !tbaa !38
  %15 = bitcast %"struct.apollo::hdmap::LaneSegment"* %0 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !38
  store i64 %16, i64* %7, align 8, !tbaa !38
  store i64 %14, i64* %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 0, i32 1
  %18 = load i64, i64* %12, align 8, !tbaa !38
  %19 = bitcast %"class.std::__1::__shared_weak_count"** %17 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !38
  store i64 %20, i64* %12, align 8, !tbaa !38
  store i64 %18, i64* %19, align 8, !tbaa !38
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %4) #20
  %21 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 1
  %22 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 1
  %23 = bitcast double* %21 to i8*
  %24 = bitcast double* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false)
  ret %"struct.apollo::hdmap::LaneSegment"* %0
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr dereferenceable(32) %"struct.apollo::hdmap::LaneSegment"* @_ZN6apollo5hdmap11LaneSegmentaSERKS1_(%"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"* dereferenceable(32)) local_unnamed_addr #10 align 2 {
  %3 = alloca %"class.std::__1::shared_ptr", align 8
  %4 = bitcast %"class.std::__1::shared_ptr"* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %4) #20
  %5 = bitcast %"struct.apollo::hdmap::LaneSegment"* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !16
  %7 = bitcast %"class.std::__1::shared_ptr"* %3 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %"class.std::__1::shared_ptr", %"class.std::__1::shared_ptr"* %3, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 0, i32 1
  %10 = load %"class.std::__1::__shared_weak_count"*, %"class.std::__1::__shared_weak_count"** %9, align 8, !tbaa !37
  store %"class.std::__1::__shared_weak_count"* %10, %"class.std::__1::__shared_weak_count"** %8, align 8, !tbaa !37
  %11 = icmp eq %"class.std::__1::__shared_weak_count"* %10, null
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %2
  tail call void @_ZNSt3__119__shared_weak_count12__add_sharedEv(%"class.std::__1::__shared_weak_count"* nonnull %10) #20
  br label %13

; <label>:13:                                     ; preds = %2, %12
  %14 = load i64, i64* %7, align 8, !tbaa !38
  %15 = bitcast %"struct.apollo::hdmap::LaneSegment"* %0 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !38
  store i64 %16, i64* %7, align 8, !tbaa !38
  store i64 %14, i64* %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 0, i32 1
  %18 = bitcast %"class.std::__1::__shared_weak_count"** %8 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !38
  %20 = bitcast %"class.std::__1::__shared_weak_count"** %17 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !38
  store i64 %21, i64* %18, align 8, !tbaa !38
  store i64 %19, i64* %20, align 8, !tbaa !38
  call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* nonnull %3) #20
  call void @llvm.lifetime.end(i64 16, i8* nonnull %4) #20
  %22 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 1
  %23 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %1, i64 0, i32 1
  %24 = bitcast double* %22 to i8*
  %25 = bitcast double* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 8, i1 false)
  ret %"struct.apollo::hdmap::LaneSegment"* %0
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr i64 @_ZNKSt3__16vectorIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEE8max_sizeEv(%"class.std::__1::vector"*) local_unnamed_addr #8 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  ret i64 576460752303423487
}

; Function Attrs: noreturn
declare void @_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv(%"class.std::__1::__vector_base_common"*) local_unnamed_addr #17

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEEC2EmmS6_(%"struct.std::__1::__split_buffer"*, i64, i64, %"class.std::__1::allocator.57"* dereferenceable(1)) unnamed_addr #1 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %5 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 3
  %6 = bitcast %"class.std::__1::__compressed_pair.61"* %5 to i64*
  store i64 0, i64* %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 3, i32 0, i32 1
  store %"class.std::__1::allocator.57"* %3, %"class.std::__1::allocator.57"** %7, align 8, !tbaa !17
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %22, label %9

; <label>:9:                                      ; preds = %4
  %10 = icmp ugt i64 %1, 576460752303423487
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %9
  %12 = tail call i8* @__cxa_allocate_exception(i64 16) #20
  %13 = bitcast i8* %12 to %"class.std::logic_error"*
  invoke void @_ZNSt11logic_errorC2EPKc(%"class.std::logic_error"* %13, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0))
          to label %14 unwind label %16

; <label>:14:                                     ; preds = %11
  %15 = bitcast i8* %12 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt12length_error, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !68
  tail call void @__cxa_throw(i8* %12, i8* bitcast (i8** @_ZTISt12length_error to i8*), i8* bitcast (void (%"class.std::length_error"*)* @_ZNSt12length_errorD1Ev to i8*)) #21
  unreachable

; <label>:16:                                     ; preds = %11
  %17 = landingpad { i8*, i32 }
          cleanup
  tail call void @__cxa_free_exception(i8* %12) #20
  resume { i8*, i32 } %17

; <label>:18:                                     ; preds = %9
  %19 = shl i64 %1, 5
  %20 = tail call i8* @_Znwm(i64 %19) #23
  %21 = bitcast i8* %20 to %"struct.apollo::hdmap::LaneSegment"*
  br label %22

; <label>:22:                                     ; preds = %4, %18
  %23 = phi %"struct.apollo::hdmap::LaneSegment"* [ %21, %18 ], [ null, %4 ]
  %24 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 0
  store %"struct.apollo::hdmap::LaneSegment"* %23, %"struct.apollo::hdmap::LaneSegment"** %24, align 8, !tbaa !81
  %25 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %23, i64 %2
  %26 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 2
  store %"struct.apollo::hdmap::LaneSegment"* %25, %"struct.apollo::hdmap::LaneSegment"** %26, align 8, !tbaa !77
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 1
  store %"struct.apollo::hdmap::LaneSegment"* %25, %"struct.apollo::hdmap::LaneSegment"** %27, align 8, !tbaa !80
  %28 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %23, i64 %1
  %29 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 3, i32 0, i32 0
  store %"struct.apollo::hdmap::LaneSegment"* %28, %"struct.apollo::hdmap::LaneSegment"** %29, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEED2Ev(%"struct.std::__1::__split_buffer"*) unnamed_addr #8 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 1
  %3 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 2
  %5 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !77
  %6 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %5, %3
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %1
  br label %8

; <label>:8:                                      ; preds = %7, %8
  %9 = phi %"struct.apollo::hdmap::LaneSegment"* [ %11, %8 ], [ %5, %7 ]
  %10 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %9, i64 -1
  store %"struct.apollo::hdmap::LaneSegment"* %10, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !77
  tail call void @_ZN6apollo5hdmap11LaneSegmentD1Ev(%"struct.apollo::hdmap::LaneSegment"* %10) #20
  %11 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %4, align 8, !tbaa !77
  %12 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %11, %3
  br i1 %12, label %13, label %8

; <label>:13:                                     ; preds = %8
  br label %14

; <label>:14:                                     ; preds = %13, %1
  %15 = getelementptr inbounds %"struct.std::__1::__split_buffer", %"struct.std::__1::__split_buffer"* %0, i64 0, i32 0
  %16 = load %"struct.apollo::hdmap::LaneSegment"*, %"struct.apollo::hdmap::LaneSegment"** %15, align 8, !tbaa !81
  %17 = icmp eq %"struct.apollo::hdmap::LaneSegment"* %16, null
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %14
  %19 = bitcast %"struct.apollo::hdmap::LaneSegment"* %16 to i8*
  tail call void @_ZdlPv(i8* %19) #25
  br label %20

; <label>:20:                                     ; preds = %14, %18
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap11LaneSegmentD1Ev(%"struct.apollo::hdmap::LaneSegment"*) unnamed_addr #10 align 2 {
  tail call void @_ZN6apollo5hdmap11LaneSegmentD2Ev(%"struct.apollo::hdmap::LaneSegment"* %0) #20
  ret void
}

; Function Attrs: inlinehint nounwind ssp uwtable
define linkonce_odr void @_ZN6apollo5hdmap11LaneSegmentD2Ev(%"struct.apollo::hdmap::LaneSegment"*) unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %"struct.apollo::hdmap::LaneSegment", %"struct.apollo::hdmap::LaneSegment"* %0, i64 0, i32 0
  tail call void @_ZNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEED1Ev(%"class.std::__1::shared_ptr"* %2) #20
  ret void
}

; Function Attrs: nounwind readnone
declare double @hypot(double, double) local_unnamed_addr #12

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { inlinehint nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { inlinehint ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { noinline noreturn nounwind }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind readnone }
attributes #23 = { builtin }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 9.0.0 (clang-900.0.39.2)"}
!2 = !{!3, !10, i64 56}
!3 = !{!"_ZTSN6apollo5hdmap13RouteSegmentsE", !4, i64 24, !10, i64 56, !10, i64 57, !11, i64 60, !11, i64 64, !12, i64 72, !10, i64 96}
!4 = !{!"_ZTSN6apollo5hdmap12LaneWaypointE", !5, i64 0, !9, i64 16, !9, i64 24}
!5 = !{!"_ZTSNSt3__110shared_ptrIKN6apollo5hdmap8LaneInfoEEE", !6, i64 0, !6, i64 8}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"double", !7, i64 0}
!10 = !{!"bool", !7, i64 0}
!11 = !{!"_ZTSN6apollo7routing14ChangeLaneTypeE", !7, i64 0}
!12 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !13, i64 0}
!13 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE"}
!14 = !{i8 0, i8 2}
!15 = !{!3, !10, i64 96}
!16 = !{!5, !6, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !9, i64 16}
!19 = !{!"_ZTSN6apollo5hdmap11LaneSegmentE", !5, i64 0, !9, i64 16, !9, i64 24}
!20 = !{!4, !9, i64 16}
!21 = !{!19, !9, i64 24}
!22 = !{!23, !9, i64 40}
!23 = !{!"_ZTSN6apollo7routing12LaneWaypointE", !24, i64 8, !25, i64 16, !26, i64 20, !28, i64 24, !6, i64 32, !9, i64 40}
!24 = !{!"_ZTSN6google8protobuf8internal25InternalMetadataWithArenaE"}
!25 = !{!"_ZTSN6google8protobuf8internal7HasBitsILm1EEE", !7, i64 0}
!26 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !27, i64 0}
!27 = !{!"_ZTSNSt3__16atomicIiEE"}
!28 = !{!"_ZTSN6google8protobuf8internal14ArenaStringPtrE", !6, i64 0}
!29 = !{!30, !9, i64 32}
!30 = !{!"_ZTSN6apollo7routing11LaneSegmentE", !24, i64 8, !25, i64 16, !26, i64 20, !28, i64 24, !9, i64 32, !9, i64 40}
!31 = !{!30, !9, i64 40}
!32 = !{!33, !6, i64 0}
!33 = !{!"_ZTSNSt3__113__vector_baseIN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEEE", !6, i64 0, !6, i64 8, !34, i64 16}
!34 = !{!"_ZTSNSt3__117__compressed_pairIPN6apollo5hdmap11LaneSegmentENS_9allocatorIS3_EEEE"}
!35 = !{!33, !6, i64 8}
!36 = !{!9, !9, i64 0}
!37 = !{!5, !6, i64 8}
!38 = !{!6, !6, i64 0}
!39 = !{!3, !10, i64 57}
!40 = !{!3, !11, i64 60}
!41 = !{!3, !11, i64 64}
!42 = !{!43, !9, i64 32}
!43 = !{!"_ZTSN6apollo6common8PointENUE", !24, i64 8, !25, i64 16, !26, i64 20, !9, i64 24, !9, i64 32, !9, i64 40}
!44 = !{!43, !9, i64 40}
!45 = !{!46, !9, i64 24}
!46 = !{!"_ZTSN6apollo6common7SLPointE", !24, i64 8, !25, i64 16, !26, i64 20, !9, i64 24, !9, i64 32}
!47 = !{!46, !9, i64 32}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !7, i64 0}
!50 = !{!51, !6, i64 288}
!51 = !{!"_ZTSN6apollo5hdmap4LaneE", !24, i64 8, !25, i64 16, !26, i64 20, !52, i64 24, !52, i64 48, !52, i64 72, !52, i64 96, !52, i64 120, !52, i64 144, !52, i64 168, !53, i64 192, !53, i64 216, !53, i64 240, !53, i64 264, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !9, i64 328, !9, i64 336, !49, i64 344, !49, i64 348, !49, i64 352}
!52 = !{!"_ZTSN6google8protobuf16RepeatedPtrFieldIN6apollo5hdmap2IdEEE"}
!53 = !{!"_ZTSN6google8protobuf16RepeatedPtrFieldIN6apollo5hdmap21LaneSampleAssociationEEE"}
!54 = !{!28, !6, i64 0}
!55 = !{!4, !9, i64 24}
!56 = !{!57, !6, i64 16}
!57 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__longE", !58, i64 0, !58, i64 8, !6, i64 16}
!58 = !{!"long", !7, i64 0}
!59 = !{!57, !58, i64 0}
!60 = !{!57, !58, i64 8}
!61 = !{!62, !6, i64 0}
!62 = !{!"_ZTSN6google13CheckOpStringE", !6, i64 0}
!63 = !{!64, !9, i64 0}
!64 = !{!"_ZTSN6apollo6common4math5Vec2dE", !9, i64 0, !9, i64 8}
!65 = !{!64, !9, i64 8}
!66 = !{!67, !10, i64 0}
!67 = !{!"_ZTSNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryE", !10, i64 0, !7, i64 8}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !8, i64 0}
!70 = !{!71, !6, i64 40}
!71 = !{!"_ZTSNSt3__18ios_baseE", !49, i64 8, !58, i64 16, !58, i64 24, !49, i64 32, !49, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !58, i64 72, !58, i64 80, !6, i64 88, !58, i64 96, !58, i64 104, !6, i64 112, !58, i64 120, !58, i64 128}
!72 = !{!71, !49, i64 8}
!73 = !{!74, !49, i64 144}
!74 = !{!"_ZTSNSt3__19basic_iosIcNS_11char_traitsIcEEEE", !6, i64 136, !49, i64 144}
!75 = !{!71, !49, i64 32}
!76 = !{!71, !58, i64 24}
!77 = !{!78, !6, i64 16}
!78 = !{!"_ZTSNSt3__114__split_bufferIN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEEE", !6, i64 0, !6, i64 8, !6, i64 16, !79, i64 24}
!79 = !{!"_ZTSNSt3__117__compressed_pairIPN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EEEE"}
!80 = !{!78, !6, i64 8}
!81 = !{!78, !6, i64 0}
!82 = !{!83, !6, i64 0}
!83 = !{!"_ZTSNSt3__128__libcpp_compressed_pair_impIPN6apollo5hdmap11LaneSegmentERNS_9allocatorIS3_EELj0EEE", !6, i64 0, !7, i64 8}
