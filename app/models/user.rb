class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable

  has_many :products, dependent: :destroy
  has_one :wishlist
  has_one :shoping_cart

  validate :password_complexity

  validates :username, :first_name, :family_name, :address, presence: true
  validates :username, uniqueness: true

  def password_complexity
    # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/

    errors.add :password, "Complexity Requirement not met. <br> Length should be 8-16 characters and should include at
                           least: 1 uppercase, 1 lowercase, 1 digit and 1 special character."
  end
end
