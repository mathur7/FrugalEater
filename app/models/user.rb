class User < ActiveRecord::Base
  has_many :favorites
  validates_associated :favorites
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #key = ENV['LOCU_KEY'] y d
end
