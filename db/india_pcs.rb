
require "zlib"
z = Zlib::Deflate.new(Zlib::BEST_COMPRESSION)

geo_json = ActiveSupport::JSON.decode(File.read('/home/neeraj/workspace/urleaders/db/india_pc_1.json'))

json_list = geo_json['features']

for pc in json_list
  
  state_name = pc['ST_NAME'].downcase
  pc_name = pc['PC_NAME'].downcase
  geo_type = pc['geometry']['type']
  geo_coordinates = z.deflate(ActiveSupport::JSON.encode(pc['geometry']['coordinates']), Zlib::FINISH)
  
  state_obj = State.find_by_name(state_name)

  if(state_obj.nil?)
    state_obj = State.new(name: state_name, coordinates: '', deleted: State::DELETED_NO) 
    state_obj.save!
  end

  geometry_obj = Geometry.new(type: geo_type, coordinates: geo_coordinates, deleted: 0)
  geometry_obj.save!


  pc_obj = ElectoralArea.new(name: pc_name, geometry_id: geometry_obj.id, state_id: state_obj.id,
                             type: ElectoralArea::TYPE_PC, pc_id: 0, deleted: ElectoralArea::DELETED_NO)
  pc_obj.save!

end 

z.close
