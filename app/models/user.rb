class User < ApplicationRecord
  has_many :activities
  has_many :instructors, through: :activities
  accepts_nested_attributes_for :activities
  has_secure_password
  validates :username, presence: true, length: { maximum: 10 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true, confirmation: true, length: { in: 6..10 }
 

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
