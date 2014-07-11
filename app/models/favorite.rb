class Favorite < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :restaurant, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :postal_code, presence: true
  validates :locality, presence: true
  validates :region, presence: true
  validates :user_id, presence: true   
end

