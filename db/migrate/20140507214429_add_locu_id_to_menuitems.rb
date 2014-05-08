class AddLocuIdToMenuitems < ActiveRecord::Migration
  def change
    add_column :menuitems, :locu_id, :integer
  end
end
