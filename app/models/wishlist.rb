class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :savings
  has_many :products, through: :savings
end
