class Geometry < ActiveRecord::Base

  GEOMETRY_TYPE_UNKNOWN = -1
  GEOMETRY_TYPE_POINT = 0
  GEOMETRY_TYPE_LINE_STRING = 1
  GEOMETRY_TYPE_POLYGON = 2
  GEOMETRY_TYPE_MULTI_POINT = 3
  GEOMETRY_TYPE_MULTI_LINE_STRING = 4
  GEOMETRY_TYPE_MULTI_POLYGON = 5

  GEOMETRY_TYPE_NAME = {
    GEOMETRY_TYPE_UNKNOWN => "Unknown",
    GEOMETRY_TYPE_POINT => "Point",
    GEOMETRY_TYPE_LINE_STRING => "LineString",
    GEOMETRY_TYPE_POLYGON => "Polygon",
    GEOMETRY_TYPE_MULTI_POINT => "MultiPoint",
    GEOMETRY_TYPE_MULTI_LINE_STRING => "MultiLineString",
    GEOMETRY_TYPE_MULTI_POLYGON => "MultiPolygon",
  }

  GEOMETRY_TYPE_NAME_MAP = {
    "Point" => 0,
    "LineString" => 1,
    "Polygon" => 2,
    "MultiPoint" => 3,
    "MultiLineString" => 4,
    "MultiPolygon" => 5,
  }
  

end
