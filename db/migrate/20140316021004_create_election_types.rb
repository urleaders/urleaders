class CreateElectionTypes < ActiveRecord::Migration
  def change
    create_table :election_types do |t|
      t.string :name, null: false, unique: true, index: true
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
