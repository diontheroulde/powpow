require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }

  describe 'schema' do 
    it { should have_db_column(:first_name).of_type(:string)}
    it { should have_db_column(:last_name).of_type(:string)}
    it { should have_db_column(:username).of_type(:string)}
    it { should have_db_column(:password_digest).of_type(:string) }
    it { should have_db_index(:username).unique(true) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false)}
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false)}
  end

  describe 'associations' do
    it { should have_many(:activities) }
    it { should have_many(:instructors) }
  end

  describe 'validations' do 
    subject { User.new(username: "diondion", first_name: "dion", last_name: "theroulde")}
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:password) }
    it { should validate_confirmation_of(:password) }
    it { should validate_length_of(:username) }
    it { should validate_length_of(:password) }
    it { should validate_uniqueness_of(:username) }
  end

end