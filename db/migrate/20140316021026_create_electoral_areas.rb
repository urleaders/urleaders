class CreateElectoralAreas < ActiveRecord::Migration
  def change
    create_table :electoral_areas do |t|
      t.string :name, null: false, index: true
      t.references :State, null: false, index: true
      t.references :Geometry, null: false, index: true, :default => 0
      t.references :ElectoralAreaType, null: false, index: true
      t.references :ElectoralArea, null: false, index: true, :default => 0
      t.boolean :deleted, null: false, :default => false

      t.timestamps
    end
  end
end
