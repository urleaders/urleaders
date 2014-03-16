
task :pcg => :environment do

  GEOMETRY_TYPE_NAME_MAP = {
    "Point" => 1,
    "LineString" => 2,
    "Polygon" => 3,
    "MultiPoint" => 4,
    "MultiLineString" => 5,
    "MultiPolygon" => 6,
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
      state_obj = State.new(name: state_name, StateType_id: 1) 
      state_obj.save!
    end
    
    geometry_obj = Geometry.new(GeoType_id: geo_type, coordinates: geo_coordinates)
    geometry_obj.save!
    
    
    pc_obj = ElectoralArea.new(name: pc_name, Geometry_id: geometry_obj.id, State_id: state_obj.id, ElectoralAreaType_id: 1)
    pc_obj.save!
    
  end 

end


