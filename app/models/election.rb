class Election < ActiveRecord::Base
  belongs_to :ElectoralArea
  belongs_to :ElectionType
  belongs_to :Candidate
  belongs_to :Party
end
