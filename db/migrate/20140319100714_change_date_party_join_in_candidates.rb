class ChangeDatePartyJoinInCandidates < ActiveRecord::Migration
  def change
    change_column_null :candidates, :date_party_join, null: true
  end
end
