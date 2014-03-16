class CreateElectoralAreas < ActiveRecord::Migration
  def change
    create_table :electoral_areas do |t|
      t.string :name, index: true
      t.references :Geometry, index: true
      t.references :ElectoralAreaType, null: false, index: true
      t.references :ElectoralArea, index: true, :default => 0
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
