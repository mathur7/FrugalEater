class Menuitem < ActiveRecord::Base
  validates :name, presence: true
  validates :restaurant, presence: true
  validates :price, presence: true
  validates :locu_id, presence: true
end

def self.search(search)

  if search
    search_length = search.split.length
    find(:all, :conditions => [(['name LIKE ?'] * search_length).join(' AND ')] + search.split.map { |name| "%#{name}%" })
  else
    find(:all)
  end

end