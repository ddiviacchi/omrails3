class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # Temporarily removed :recoverable since i did not have the forgot passwd functionality setup.
  devise :database_authenticatable, :registerable, #recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  has_many :pins, dependent: :destroy
  #dependent destroy command above will destroy all pins when the user deletes the account
end
