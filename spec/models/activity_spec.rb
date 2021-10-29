require 'rails_helper'

RSpec.describe Activity, type: :model do

  describe 'schema' do 
    it { should have_db_column(:name).of_type(:string)}
    it { should have_db_column(:user_id).of_type(:integer)}
    it { should have_db_column(:instructor_id).of_type(:integer)}
    it { should have_db_column(:lesson_time).of_type(:datetime)}
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false)}
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false)}
  end

  describe 'associations' do
    it { should belong_to(:instructor) }
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'nested attributes' do 
    it { should accept_nested_attributes_for(:instructor) }
  end

  # it 'delegates full_name to user' do 
  #   user = build(:user)
  #   expect(user).to receive(:full_name)
  # end
end