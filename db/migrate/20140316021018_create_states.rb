class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, null: false, unique: true, index: true
      t.references :Geometry, index: true
      t.references :StateType, null: false, index: true
      t.references :Candidate, index: true
      t.references :Party, index: true
      t.string :capital
      t.date :formation_date
      t.text :formation_text
      t.integer :count_pc, :default => 0
      t.integer :count_ac, :default => 0
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
