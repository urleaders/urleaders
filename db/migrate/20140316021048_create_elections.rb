class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.references :ElectoralArea, null: false, index: true
      t.references :ElectionType, null: false, index: true
      t.references :Candidate, null: false, index: true
      t.references :Party, null: false, index: true
      t.string :label, null: false
      t.date :date_vote, null: false
      t.date :date_result, null: false
      t.boolean :deleted, null: false, :default => false

      t.timestamps
    end
  end
end
