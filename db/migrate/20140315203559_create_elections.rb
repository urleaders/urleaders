class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.references :ElectoralArea, index: true
      t.date :election_date
      t.integer :type
      t.string :label
      t.references :candidate, index: true
      t.references :party, index: true
      t.date :result_date
      t.boolean :deleted

      t.timestamps
    end
  end
end
