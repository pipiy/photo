class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :last_name, :username, :email, :password,
    :password_confirmation, :remember_me

  validates :name, :last_name, :username, :email, :password,
    :password_confirmation, :presence => true, :length => { :minimum => 3 }
end
