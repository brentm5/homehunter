class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable
  validates :first_name, :last_name, :presence => true
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me

end
