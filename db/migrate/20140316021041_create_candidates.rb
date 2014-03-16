class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name, null: false, index: true
      t.references :Party, index: true
      t.date :date_party_join
      t.text :parties_past
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
