class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.text :restaurant
      t.text :name
      t.float :price
      t.string :address
      t.integer :phone_number
      t.references :user, index: true

      t.timestamps
    end
  end
end
