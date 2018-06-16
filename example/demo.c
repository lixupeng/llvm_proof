extern int FLAGS_replan_lateral_distance_threshold;
extern int FLAGS_replan_longitudinal_distance_threshold;

struct String {};

struct Lane {};

struct VehicleState {};

struct Set_String {};
void clear_String(struct Set_String* set);
void insert_String(struct Set_String* set, struct String str);

struct LaneWaypoint {
    struct String id;
    double s;
};
struct LaneWaypoint* new_LaneWaypoint_1();
struct LaneWaypoint* new_LaneWaypoint_2(struct Lane* lane, double s);

struct WaypointIndex {
    struct LaneWaypoint waypoint;
    int index;
};

struct Vector_LaneWaypoint {
    struct LaneWaypoint* begin;
    struct LaneWaypoint* end;
    unsigned capacity;
};
void clear_WaypointIndex(struct Vector_WaypointIndex* vec);
char empty_LaneWaypoint(struct Vector_LaneWaypoint *vec);
unsigned size_LaneWaypoint(struct Vector_LaneWaypoint *vec);

struct Vector_WaypointIndex {
    struct WaypointIndex* begin;
    struct WaypointIndex* end;
    unsigned capacity;
};
struct WaypointIndex* back_WaypointIndex(struct Vector_WaypointIndex *vec);
void emplace_back_WaypointIndex(struct Vector_WaypointIndex* vec, struct LaneWaypoint waypoint, int index);
char empty_WaypointIndex(struct Vector_WaypointIndex *vec);
unsigned size_WaypointIndex(struct Vector_WaypointIndex *vec);

struct LaneSegment {
    struct String id;
    struct Lane* lane;
};

struct Index {
    int road_index;
    int passage_index;
    int lane_index;
};

struct RouteIndex {
    struct LaneSegment segment;
    struct Index index;
};
struct RouteIndex* back_RouteIndex(struct Vector_RouteIndex* vec);
void clear_RouteIndex(struct Vector_RouteIndex* vec);
void emplace_back_RouteIndex(struct Vector_RouteIndex* vec);
int size_RouteIndex(struct Vector_RouteIndex *vec);

struct Vector_RouteIndex {
    struct RouteIndex* begin;
    struct RouteIndex* end;
    unsigned capacity;
};

struct Passage {
    struct LaneSegment* segment;
    unsigned size;
};

struct RoadSegment {
    struct String id;
    struct Passage* passage;
    unsigned size;
};

struct RoutingRequest {
    struct Vector_LaneWaypoint waypoint;
};

struct RoutingResponse {
    struct RoutingRequest route_request;
    struct RoadSegment* road;
    unsigned size;
};

struct PncMap {
    struct RoutingResponse routing_;
    struct VehicleState adc_state_;
    struct LaneWaypoint adc_waypoint_;
    struct Vector_WaypointIndex routing_waypoint_index_;
    struct Vector_RouteIndex route_indices_;
    struct Set_String range_lane_ids_;
    struct Set_String all_lane_ids_;
    unsigned next_routing_waypoint_index_;
    int adc_route_index_;
    int range_start_;
    int range_end_;
    char stop_for_destination_;
};

char ValidateRouting(struct RoutingResponse* routing);
char has_x(const struct VehicleState* state);
double DistanceXY(const struct VehicleState* stateA, const struct VehicleState* stateB);
char GetNearestPointFromRouting(const struct VehicleState *state, const struct LaneWaypoint *waypoint);
int GetWaypointIndex(struct LaneWaypoint *waypoint);
void UpdateNextRoutingWaypointIndex(struct PncMap *map, int route_index);
void UpdateRoutingRange(struct PncMap *map, int route_index);
struct LaneSegment ToLaneSegment(struct LaneSegment* segment);
char WithinLaneSegment(struct LaneSegment* segment, struct LaneWaypoint* waypoint);

char UpdateVehicleState(struct PncMap* this, const struct VehicleState *vehicle_state) {
    if (!ValidateRouting(&this->routing_)) {
        return 0;
    }
    if (!has_x(&this->adc_state_) ||
        DistanceXY(&this->adc_state_, vehicle_state) >
        FLAGS_replan_lateral_distance_threshold +
        FLAGS_replan_longitudinal_distance_threshold) {
        // position is reset, but not replan
        this->next_routing_waypoint_index_ = 0;
        this->adc_route_index_ = -1;
        this->stop_for_destination_ = 0;
    }

    this->adc_state_ = *vehicle_state;
    if (!GetNearestPointFromRouting(vehicle_state, &this->adc_waypoint_)) {
        return 0;
    }
    int route_index = GetWaypointIndex(&this->adc_waypoint_);
    if (route_index < 0 ||
        route_index >= size_RouteIndex(&this->route_indices_)) {
        return 0;
    }

    // track how many routing request waypoints the adc have passed.
    UpdateNextRoutingWaypointIndex(this, route_index);
    this->adc_route_index_ = route_index;
    UpdateRoutingRange(this, this->adc_route_index_);
    if (empty_WaypointIndex(&this->routing_waypoint_index_)) {
        return 0;
    }

    int last_index = GetWaypointIndex(&back_WaypointIndex(&this->routing_waypoint_index_)->waypoint);
    if (this->next_routing_waypoint_index_ == size_WaypointIndex(&this->routing_waypoint_index_) - 1 ||
        (!this->stop_for_destination_ &&
         last_index == back_WaypointIndex(&this->routing_waypoint_index_)->index)) {
        this->stop_for_destination_ = 1;
    }
    return 1;
}

char UpdateRoutingResponse(struct PncMap* this, const struct RoutingResponse *routing) {
    if (!routing) return 0;
    clear_String(&this->range_lane_ids_);
    clear_RouteIndex(&this->route_indices_);
    clear_String(&this->all_lane_ids_);
    for (int road_index = 0; road_index < routing->size; ++road_index) {
        const struct RoadSegment* road_segment = &routing->road[road_index];
        for (int passage_index = 0; passage_index < road_segment->size;
             ++passage_index) {
            const struct Passage *passage = &road_segment->passage[passage_index];
            for (int lane_index = 0; lane_index < passage->size; ++lane_index) {
                insert_String(&this->all_lane_ids_, passage->segment[lane_index].id);
                emplace_back_RouteIndex(&this->route_indices_);
                back_RouteIndex(&this->route_indices_)->segment =
                        ToLaneSegment(&passage->segment[lane_index]);
                if (back_RouteIndex(&this->route_indices_)->segment.lane == 0) {
                    return 0;
                }
                back_RouteIndex(&this->route_indices_)->index.road_index = road_index;
                back_RouteIndex(&this->route_indices_)->index.passage_index = passage_index;
                back_RouteIndex(&this->route_indices_)->index.lane_index = lane_index;
            }
        }
    }

    this->range_start_ = 0;
    this->range_end_ = 0;
    this->adc_route_index_ = -1;
    this->next_routing_waypoint_index_ = 0;
    UpdateRoutingRange(this, this->adc_route_index_);

    clear_WaypointIndex(&this->routing_waypoint_index_);
    int i = 0;
    struct Vector_LaneWaypoint *request_waypoints = &routing->route_request.waypoint;
    if (empty_LaneWaypoint(request_waypoints)) {
        return 0;
    }
    for (unsigned j = 0; j < size_RouteIndex(&this->route_indices_); ++j) {
        while (i < size_LaneWaypoint(request_waypoints) &&
               WithinLaneSegment(&this->route_indices_.begin[j].segment,
                                 &request_waypoints->begin[i])) {
            emplace_back_WaypointIndex(&this->routing_waypoint_index_,
                         *new_LaneWaypoint_2(this->route_indices_.begin[j].segment.lane, request_waypoints->begin[i].s), j);
            ++i;
        }
    }
    this->routing_ = *routing;
    this->adc_waypoint_ = *new_LaneWaypoint_1();
    this->stop_for_destination_ = 0;
    return 1;
}
