class RemoveAddLocalityFromFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :AddLocalityToFavorites, :string
  end
end
