class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :instructor
  delegate :full_name, to: :user, prefix: true
  accepts_nested_attributes_for :instructor
  
end