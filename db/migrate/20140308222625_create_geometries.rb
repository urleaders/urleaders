class CreateGeometries < ActiveRecord::Migration
  def change
    create_table :geometries do |t|
      t.integer :geo_type
      t.column :coordinates, :binary, :limit => 1.megabyte
      t.boolean :deleted

      t.timestamps
    end
  end
end
