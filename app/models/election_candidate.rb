class ElectionCandidate < ActiveRecord::Base
  belongs_to :Election
  belongs_to :Candidate
  belongs_to :Party
end
