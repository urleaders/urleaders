class CreateElectoralAreas < ActiveRecord::Migration
  def change
    create_table :electoral_areas do |t|
      t.integer :geometry_id
      t.string :name
      t.boolean :deleted
      t.integer :electoral_area_type
      t.integer :pc_id
      t.integer :state_id

      t.timestamps
    end
  end
end
