class User < ApplicationRecord
  # has_many :activities
  has_many :lessons 
  has_many :instructors, through: :lessons
end
