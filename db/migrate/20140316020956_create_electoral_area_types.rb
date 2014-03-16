class CreateElectoralAreaTypes < ActiveRecord::Migration
  def change
    create_table :electoral_area_types do |t|
      t.string :name, null: false, unique: true, index: true
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
