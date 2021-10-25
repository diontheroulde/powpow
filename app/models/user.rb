class User < ApplicationRecord
  has_many :activities
  has_many :instructors, through: :activities
  has_secure_password
  validates :username, presence: true, length: { maximum: 10 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, confirmation: true, length: { in: 6..10 }

  def full_name
    "#{first_name} #{last_name}"
  end
end
