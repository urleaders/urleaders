class CreatePartyTypes < ActiveRecord::Migration
  def change
    create_table :party_types do |t|
      t.string :name, null: false, unique: true, index: true
      t.boolean :deleted, :default => false

      t.timestamps
    end
  end
end
