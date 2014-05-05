class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.text :restaurant
      t.text :name
      t.float :price

      t.timestamps
    end
  end
end
