class State < ActiveRecord::Base
  belongs_to :Geometry
  belongs_to :StateType
  belongs_to :Candidate
  belongs_to :Party
end
