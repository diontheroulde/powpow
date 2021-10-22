# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do 
  Instructor.create(name: Faker::Name.name)
end

15.times do
  ski = Activity.create(name: "Ski", lesson_time: Faker::Date.between(from: 2.days.ago, to: Date.today).strftime("%B %d, %Y at %-l%P"), user_id: rand(1..15), instructor_id: rand(1..15))
  snowboard = Activity.create(name: "Snowboard", lesson_time: Faker::Date.between(from: 2.days.ago, to: Date.today).strftime("%B %d, %Y at %-l%P"), user_id: rand(1..15), instructor_id: rand(1..15))
  tubing = Activity.create(name: "Tubing", lesson_time: Faker::Date.between(from: 2.days.ago, to: Date.today).strftime("%B %d, %Y at %-l%P"), user_id: rand(1..15), instructor_id: rand(1..15))
end

(1..15).each do |id|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create!(
  username: Faker::Name.first_name,
  first_name: first_name,
  last_name: last_name,
  password: "password", 
  password_confirmation: "password"
)
end

