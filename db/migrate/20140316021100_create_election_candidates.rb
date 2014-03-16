class CreateElectionCandidates < ActiveRecord::Migration
  def change
    create_table :election_candidates do |t|
      t.references :Election, null: false, index: true
      t.references :Candidate, null: false, index: true
      t.references :Party, null: false, index: true
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
