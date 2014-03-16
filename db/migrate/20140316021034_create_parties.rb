class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name, null: false, index: true
      t.references :PartyType, null: false, index: true
      t.string :symbol_name
      t.text :description
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
