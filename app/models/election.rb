class Election < ActiveRecord::Base
  belongs_to :ElectoralArea
  belongs_to :candidate
  belongs_to :party
end
