class ChangeCandidateDefaultInElections < ActiveRecord::Migration
  def change
    change_column_default :elections, :Candidate_id, 0 
  end
end
