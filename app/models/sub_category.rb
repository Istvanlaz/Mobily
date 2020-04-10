class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :products, dependent: :destroy

  validates :category_id, :name, presence: true
end
