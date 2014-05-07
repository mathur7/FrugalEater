class RemovePhonenumberFromFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :phone_number, :integer
  end
end
