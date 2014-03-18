class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, null: false, unique: true, index: true
      t.references :Geometry, null: false, index: true, :default => 0
      t.references :StateType, null: false, index: true
      t.references :Candidate, null: false, index: true, :default => 0
      t.references :Party, null: false, index: true, :default => 0
      t.string :capital, null: false, :default => 0
      t.date :formation_date
      t.text :formation_text
      t.integer :count_pc, null: false, :default => 0
      t.integer :count_ac, null: false, :default => 0
      t.boolean :deleted, null: false, :default => false

      t.timestamps
    end
  end
end
