GEOMETRY_TYPE_NAME_MAP = {
    "Point" => 0,
    "LineString" => 1,
    "Polygon" => 2,
    "MultiPoint" => 3,
    "MultiLineString" => 4,
    "MultiPolygon" => 5,
}

geo_json = ActiveSupport::JSON.decode(File.read('db/india_pc_1.json'))

json_list = geo_json['features']

for pc in json_list
  
  state_name = pc['properties']['ST_NAME'].downcase
  pc_name = pc['properties']['PC_NAME'].downcase
  geo_type = GEOMETRY_TYPE_NAME_MAP[pc['geometry']['type']]
  geo_coordinates = ActiveSupport::Gzip.compress(ActiveSupport::JSON.encode(pc['geometry']['coordinates']))
  
  state_obj = State.find_by_name(state_name)

  if(state_obj.nil?)
    state_obj = State.new(name: state_name, geometry_id: 0, deleted: State::DELETED_NO) 
    state_obj.save!
  end

  geometry_obj = Geometry.new(geo_type: geo_type, coordinates: geo_coordinates, deleted: 0)
  geometry_obj.save!


  pc_obj = ElectoralArea.new(name: pc_name, geometry_id: geometry_obj.id, state_id: state_obj.id,
                             electoral_area_type: ElectoralArea::TYPE_PC, pc_id: 0, deleted: ElectoralArea::DELETED_NO)
  pc_obj.save!

end 


