class Instructor < ApplicationRecord
  # has_many :activities
  has_many :lessons 
  has_many :users, through: :lessons
end
