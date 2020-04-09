class Category < ApplicationRecord
  has_many :sub_categories, dependent: :destroy
  has_many :products, inverse_of: :category
  accepts_nested_attributes_for :products

  validates :name, presence: true
end
