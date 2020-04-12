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
  validate :username_complexity

  validates :username, :first_name, :family_name, :address, presence: true
  validates :username, uniqueness: true
  validates_length_of :username, :first_name, :family_name, in: 3..12, message: "must contain between 3 and 12 characters."
  # validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }, message: "must contain only alphabetical and/or numerical characters."
  # validates :email, uniqueness: true

  def username_complexity
    return if username =~ /^[A-Za-z0-9]+(?:[_-][A-Za-z0-9]+)*$/

    errors.add :username, "must contain only alphabetical and/or numerical characters (accepted: '-' and '_').
                           <br>No white space allowed.
                           <br>Cannot start or end with '-' or '_'."
  end

  def password_complexity
    # Regexp extracted from https://stackoverflow.com/questions/19605150/regex-for-password-must-contain-at-least-eight-characters-at-least-one-number-a
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}$/

    errors.add :password, "Complexity Requirement not met. <br> Length should be 8-16 characters and should include at
                           least: 1 uppercase, 1 lowercase, 1 digit and 1 special character."
  end
end
