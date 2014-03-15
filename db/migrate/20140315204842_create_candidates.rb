class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.references :party, index: true
      t.string :party_join_date
      t.string :datetime
      t.text :past_parties

      t.timestamps
    end
  end
end
