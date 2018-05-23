#include <stdlib.h>

#define DOUBLE_MAX 1e38
#define kMathEpsilon 1e-8
#define kSampleDistance 1

/*****************************************************************
 * std::vector<int>
 *****************************************************************/
struct Vector_int {
  int* start;
  int* end;
  int capacity;
};

/*****************************************************************
 * std::vector<double>
 *****************************************************************/
struct Vector_double {
  double* start;
  double* end;
  int capacity;
};

double min_double(double a, double b) {
  return a < b ? a : b;
}

double* lower_bound_double(double* start, double* end, double value) {
  if (!start || !end) return end;
  double *p;
  for (p = start; p != end; ++p) {
    if (*p >= value) break;
  }
  return p;
}

/*****************************************************************
 * std::vector<Vec2d>
 *****************************************************************/
struct Vec2d {
  double x_;
  double y_;
};

double InnerProd(const struct Vec2d point1, const struct Vec2d point2) {
  return point1.x_ * point2.x_ + point1.y_ * point2.y_;
}

struct Vec2d Sub(const struct Vec2d point1, const struct Vec2d point2) {
  struct Vec2d result;
  result.x_ = point1.x_ - point2.x_;
  result.y_ = point1.y_ - point2.y_;
  return result;
}

struct Vec2d Mul(const struct Vec2d point1, double c) {
  struct Vec2d result;
  result.x_ = point1.x_ * c;
  result.y_ = point1.y_ * c;
  return result;
}

struct Vector_Vec2d {
  struct Vec2d* start;
  struct Vec2d* end;
  int capacity;
};

int empty_Vec2d(const struct Vector_Vec2d *vec) {
  return vec->capacity == 0 || vec->end == vec->start;
}

unsigned size_Vec2d(const struct Vector_Vec2d *vec) {
  if (empty_Vec2d(vec)) return 0;
  return vec->end - vec->start;
}

/*****************************************************************
 * std::vector<LineSegment2d>
 *****************************************************************/
struct LineSegment2d {
  struct Vec2d start_;
  struct Vec2d end_;
  struct Vec2d unit_direction_;
  double heading_;
  double length_;
};

struct Vector_LineSegment2d {
  struct LineSegment2d* start;
  struct LineSegment2d* end;
  int capacity;
};

int empty_LineSegment2d(const struct Vector_LineSegment2d *vec) {
  return vec->capacity == 0 || vec->end == vec->start;
}

unsigned size_LineSegment2d(const struct Vector_LineSegment2d *vec) {
  if (empty_LineSegment2d(vec)) return 0;
  return vec->end - vec->start;
}

/*****************************************************************
 * LaneBoundary
 *****************************************************************/
enum Type {
    UNKNOWN,
    DOTTED_YELLOW,
    DOTTED_WHITE,
    SOLID_YELLOW,
    SOLID_WHITE,
    DOUBLE_YELLOW,
    CURB,
};

struct LaneBoundaryType {
  double s;
  enum Type* types;
  int types_size;
};

struct Vector_LaneBoundaryType {
  struct LaneBoundaryType* begin;
  struct LaneBoundaryType* end;
  int capacity;
};

struct LaneBoundary {
  double length;
  struct Vector_LaneBoundaryType boundary_type;
};

/*****************************************************************
 * LaneInfo
 *****************************************************************/
struct LaneInfo {
  double total_length_;
  struct Vector_Vec2d points_;
  struct Vector_Vec2d unit_directions_;
  struct Vector_LineSegment2d segments_;
  struct Vector_double accumulated_s_;
  struct LaneBoundary right_boundary;
  struct Vector_int right_neighbor_forward_lane_id;
};

//  Undefined functions
double DistanceTo(const struct LineSegment2d *seg, const struct Vec2d *point);
double ProjectOntoUnit(const struct LineSegment2d *seg, const struct Vec2d *point);
double ProductOntoUnit(const struct LineSegment2d *seg, const struct Vec2d *point);
struct LaneInfo* GetLaneById(int lane_id);

int GetProjection(struct LaneInfo *lane, const struct Vec2d *point, double *accumulate_s, double *lateral) {
  if (!accumulate_s) return 0;
  if (!lateral) return 0;
  if (!point) return 0;
  if (!lane || empty_LineSegment2d(&lane->segments_)) return 0;

  double min_distance = DOUBLE_MAX;
  unsigned min_index = 0;
  double min_proj = 0.0;
  unsigned num_segments = size_LineSegment2d(&lane->segments_);

  for (unsigned i = 0; i < num_segments; ++i) {
    const struct LineSegment2d *segment = lane->segments_.start + i;
    const double distance = DistanceTo(segment, point);
    if (distance < min_distance) {
      const double proj = ProjectOntoUnit(segment, point);
      if (proj < 0.0 && i > 0) {
        continue;
      }
      if (proj > segment->length_ && i + 1 < num_segments) {
        const struct LineSegment2d *next_segment = lane->segments_.start + i + 1;
        if (InnerProd(Sub(*point, next_segment->start_), next_segment->unit_direction_) >= 0.0) {
          continue;
        }
      }
      min_distance = distance;
      min_index = i;
      min_proj = proj;
    }
  }

  const struct LineSegment2d *segment = lane->segments_.start + min_index;
  if (min_index + 1 >= num_segments) {
    *accumulate_s = *(lane->accumulated_s_.start + min_index) + min_proj;
  } else {
    *accumulate_s =
        *(lane->accumulated_s_.start + min_index) + min_double(min_proj, segment->length_);
  }
  const double prod = ProductOntoUnit(segment, point);
  if ((min_index == 0 && min_proj < 0.0) ||
      (min_index + 1 == num_segments && min_proj > segment->length_)) {
    *lateral = prod;
  } else {
    *lateral = (prod > 0.0 ? min_distance : -min_distance);
  }

  return 1;
}

struct Vec2d GetSmoothPoint(const struct LaneInfo *lane, double s) {
  struct Vec2d point = {0, 0};

  if (size_Vec2d(&lane->points_) < 2) {
    return point;
  }
  if (s <= 0.0) {
    return *lane->points_.start;
  }

  if (s >= lane->total_length_) {
    return *(lane->points_.end - 1);
  }

  const double *low_itr = lower_bound_double(lane->accumulated_s_.start, lane->accumulated_s_.end, s);
  if (low_itr == lane->accumulated_s_.end) {
    return point;
  }
  unsigned index = low_itr - lane->accumulated_s_.start;
  double delta_s = *low_itr - s;
  if (delta_s < kMathEpsilon) {
    return *(lane->points_.start + index);
  }

  struct Vec2d smooth_point = Sub(*(lane->points_.start + index),  Mul(*(lane->unit_directions_.start + index - 1),  delta_s));

  return smooth_point;
}

/*****************************************************************
 * LaneWaypoint
 *****************************************************************/
struct LaneWaypoint {
  const struct LaneInfo *lane_;
  double s;
  double l;
};

struct LaneWaypoint* LaneWaypoint1() {
  struct LaneWaypoint* newlane = (struct LaneWaypoint*)malloc(sizeof(struct LaneWaypoint));
  newlane->lane_ = 0;
  newlane->s = 0;
  newlane->l = 0;
  return newlane;
}

struct LaneWaypoint* LaneWaypoint2(const struct LaneInfo *lane, const double s) {
  struct LaneWaypoint* newlane = (struct LaneWaypoint*)malloc(sizeof(struct LaneWaypoint));
  newlane->lane_ = lane;
  newlane->s = s;
  newlane->l = 0;
  return newlane;
}

enum Type RightBoundaryType(const struct LaneWaypoint *waypoint) {
  if (!waypoint->lane_) {
    return UNKNOWN;
  }
  for (const struct LaneBoundaryType *type = waypoint->lane_->right_boundary.boundary_type.begin;
       type != waypoint->lane_->right_boundary.boundary_type.end; ++type) {
    if (type->s <= waypoint->s) {
      if (type->types_size > 0 && type->types) {
        return *type->types;
      } else {
        return UNKNOWN;
      }
    }
  }
  return UNKNOWN;
}

struct LaneWaypoint* RightNeighborWaypoint(const struct LaneWaypoint *waypoint) {
  struct LaneWaypoint* neighbor = LaneWaypoint1();
  if (!waypoint->lane_) {
    return neighbor;
  }
  struct Vec2d point = GetSmoothPoint(waypoint->lane_, waypoint->s);
  for (const int* lane_id = waypoint->lane_->right_neighbor_forward_lane_id.start;
       lane_id != waypoint->lane_->right_neighbor_forward_lane_id.end; ++lane_id) {
    struct LaneInfo *lane = GetLaneById(*lane_id);
    if (!lane) {
      return neighbor;
    }
    double s = 0.0;
    double l = 0.0;
    struct Vec2d point2 = {point.x_, point.y_};
    if (!GetProjection(lane, &point2, &s, &l)) {
      continue;
    }
    if (s < -kSampleDistance || s > lane->total_length_ + kSampleDistance) {
      continue;
    } else {
      return LaneWaypoint2(lane, s);
    }
  }
  return neighbor;
}
