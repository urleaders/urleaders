class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.integer :geometry_id
      t.string :name
      t.boolean :deleted

      t.timestamps
    end
  end
end
