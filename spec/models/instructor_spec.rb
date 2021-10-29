require 'rails_helper'

RSpec.describe Instructor, type: :model do
  describe 'schema' do 
    it { should have_db_column(:name).of_type(:string)}
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false)}
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false)}
  end

  describe 'associations' do
    it { should have_many(:activities) }
    it { should have_many(:users) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'nested attributes' do 
    it { should accept_nested_attributes_for(:activities) }
  end
end