class CreateGeometries < ActiveRecord::Migration
  def change
    create_table :geometries do |t|
      t.references :GeoType, null: false, index: true
      t.binary :coordinates, :limit => 1.megabyte, null: false
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
