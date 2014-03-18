class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name, null: false, index: true
      t.string :symbol_name, null: false
      t.text :description, null: false
      t.boolean :deleted, null: false, :default => false

      t.timestamps
    end
  end
end
