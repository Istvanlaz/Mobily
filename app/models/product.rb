class Product < ApplicationRecord

  ## TODO: Disponible a partir de: !!!! A voir Timing + horloge: a disparaitre avant telle date

  attr_writer :current_step

  belongs_to :user, optional: true
  belongs_to :sub_category, optional: true
  belongs_to :category, inverse_of: :products

  has_many :line_items
  has_many :savings, dependent: :destroy
  has_many :wishlists, through: :savings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :category, presence: true
  # validates :name_length
  validates_length_of :name, in: 3..40, message: "must contain between 3 and 40 characters."

  validates_presence_of :name, :category_id, if: lambda { |e| e.current_step == "card" }
  validates_presence_of :sub_category_id, :description, :price, if: lambda { |e| e.current_step == "details" }

  has_one_attached :image

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
                  against: {
                    name: 'A',
                    description: 'B'
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  # mount_uploader :image, ImageUploader

  # validates :category_id, :sub_category_id, presence: true
  # has_and_belongs_to_many :shoping_cart

  # def name_length
  #   return if @product.name.blank? || @product.name.length != "3"

  #   errors.add :name, "must contain between 3 and 40 characters."
  # end

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[card details]
    # confirmation
  end

  def next_step
    self.current_step = steps[steps.index(current_step) + 1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step) - 1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
