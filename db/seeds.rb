# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Destroy: start"
  Ride.destroy_all
  Address.destroy_all
  Provider.destroy_all
  User.destroy_all
  ActiveRecord::Base.connection.reset_pk_sequence!('rides')
  ActiveRecord::Base.connection.reset_pk_sequence!('address')
  ActiveRecord::Base.connection.reset_pk_sequence!('providers')
  ActiveRecord::Base.connection.reset_pk_sequence!('users')
p "Destroy: done"

p "Seeds: start"
User.create!(email: 'admin@admin.com', password: 'password')
Provider.create!(name: "Uber")
Provider.create!(name: "Sawa")
Provider.create!(name: "MPT")

3.times do
  Ride.create!(
    price: Faker::Commerce.price,
    distance: Faker::Number.decimal(2, 3),
    user_id: 1,
    provider_id: Faker::Number.between(1, 3)
  )
end
p "Created #{Ride.count} rides"
p "Seeds: done"
