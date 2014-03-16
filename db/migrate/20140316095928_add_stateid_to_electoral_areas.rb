class AddStateidToElectoralAreas < ActiveRecord::Migration
  def change
    add_reference :electoral_areas, :State, null:false, index: true
  end
end
