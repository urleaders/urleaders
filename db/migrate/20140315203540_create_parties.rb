class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.boolean :deleted

      t.timestamps
    end
  end
end
