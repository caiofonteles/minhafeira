class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  has_many :shops, dependent: :destroy
  has_many :carts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
