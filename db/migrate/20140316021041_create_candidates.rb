class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name, null: false, index: true
      t.references :Party, null: false, index: true, :default => 0
      t.date :date_party_join, null: false
      t.text :parties_past, null: false
      t.boolean :deleted, null: false, :default => false

      t.timestamps
    end
  end
end
