class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :sub_category, optional: true
  belongs_to :category, inverse_of: :products

  validates :category, presence: true
  # validates :name_length
  validates_length_of :name, in: 3..40, message: "must contain between 3 and 40 characters."

  # validates :category_id, :sub_category_id, presence: true
  # has_and_belongs_to_many :shoping_cart

  # def name_length
  #   return if @product.name.blank? || @product.name.length != "3"

  #   errors.add :name, "must contain between 3 and 40 characters."
  # end
end
