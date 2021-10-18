class User < ApplicationRecord
  has_many :issues 
  has_many :characters, through: :issues
end
