class Instructor < ApplicationRecord
  has_many :activities
  has_many :users, through: :activities
  accepts_nested_attributes_for :activities
end
