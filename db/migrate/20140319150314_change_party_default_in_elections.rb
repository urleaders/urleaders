class ChangePartyDefaultInElections < ActiveRecord::Migration
  def change
    change_column_default :elections, :Party_id, 0 
  end
end
