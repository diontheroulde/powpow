class User < ApplicationRecord
  has_many :activities
  has_many :instructors, through: :activities
  has_secure_password

 

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
