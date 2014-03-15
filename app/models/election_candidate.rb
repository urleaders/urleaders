class ElectionCandidate < ActiveRecord::Base
  belongs_to :election
  belongs_to :candidate
  belongs_to :party
end
