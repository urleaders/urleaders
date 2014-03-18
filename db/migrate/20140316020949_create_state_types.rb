class CreateStateTypes < ActiveRecord::Migration
  def change
    create_table :state_types do |t|
      t.string :name, null: false, unique: true, index: true
      t.boolean :deleted, null: false, :default => false

      t.timestamps
    end
  end
end
