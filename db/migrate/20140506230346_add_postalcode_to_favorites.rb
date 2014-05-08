class AddPostalcodeToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :postal_code, :integer
    add_column :favorites, :locality, :text
    add_column :favorites, :region, :text
  end
end
