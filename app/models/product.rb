class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :sub_category, optional: true
  belongs_to :category, inverse_of: :products

  validates :category, presence: true

  # validates :category_id, :sub_category_id, presence: true
  # has_and_belongs_to_many :shoping_cart
end
