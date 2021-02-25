# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Plane.destroy_all
User.destroy_all

cities = ["Mexico City", "Amsterdam", "London", "New York", "Los Angeles", "San Francisco"]
plane_types = ["Cessna Skycatcher", "Icon A5 Amphibious Light Sport Aircraft", "Guflstream G550", "Bombadier Challenger 300", "Millenium Falcon", "Embraer Legacy 600"]

puts "> Creating user..."
user = User.create!(
  email: "eduardo.am4590@gmail.com",
  password: "123456"
)
puts "> Done!"
puts "> Creating Planes..."

10.times do
    plane = Plane.create!(
      plane_type: plane_types.sample(),
      max_occupancy: rand(10..50),
      price: rand(1000...10000),
      address: Faker::Address.street_address,
      user: user,
      city: cities.sample()
    )
  end
puts "> Done!"