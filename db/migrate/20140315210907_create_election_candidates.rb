class CreateElectionCandidates < ActiveRecord::Migration
  def change
    create_table :election_candidates do |t|
      t.references :election, index: true
      t.references :candidate, index: true
      t.references :party, index: true
      t.boolean :deleted

      t.timestamps
    end
  end
end
