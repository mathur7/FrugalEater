class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## You will want your user to have many favorites so you can verify
  ## authorization.

  #key = ENV['LOCU_KEY'] y d
end
