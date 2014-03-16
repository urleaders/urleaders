class ElectoralArea < ActiveRecord::Base
  belongs_to :Geometry
  belongs_to :ElectoralAreaType
  belongs_to :ElectoralArea, :conditions => { :ElectoralAreaType_id => 2 }
end
