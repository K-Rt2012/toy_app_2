class User < ApplicationRecord
  validates :email, {presence: true}
  validates :name, {presence: true}
  has_many :microposts
  has_one_attached :image
end
