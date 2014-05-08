class Menuitem < ActiveRecord::Base
  validates :name, presence: true
  validates :restaurant, presence: true
  validates :price, presence: true
  validates :locu_id, presence: true
end
