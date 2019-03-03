class User < ApplicationRecord

  has_many :posts, dependent: :destroy
  has_one_attached :avatar
  # has_may -> declação um pra muitos (one-to-many)
  #  destroy, indica que os posts seram escluidos se o usuario for excluido

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
