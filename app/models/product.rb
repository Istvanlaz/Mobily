class Product < ApplicationRecord
  belongs_to :user, optional: true
  #has_and_belongs_to_many :shoping_cart
end
