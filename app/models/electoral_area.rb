class ElectoralArea < ActiveRecord::Base

  DELETED_NO = 0
  DELETED_YES = 1

  TYPE_PC = 0
  TYPE_AC = 1

  def self.pc_details(state = 0)
    ElectoralArea.find(:all, :joins => "INNER JOIN states, geometries", 
                       :conditions => "electoral_areas.deleted = #{ElectoralArea::DELETED_NO} and \
                                       electoral_areas.electoral_area_type = #{ElectoralArea::TYPE_PC} and \
                                       electoral_areas.state_id = states.id and electoral_areas.geometry_id = geometries.id",
                       :select => "electoral_areas.name, states.name state_name, geometries.geo_type, geometries.coordinates"
                       )
  end
  
end
