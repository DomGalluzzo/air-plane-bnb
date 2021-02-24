# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plane.destroy_all
User.destroy_all
puts "> Creating user..."
user = User.create!(
  email: "eduardo.am4590@gmail.com",
  password: "123456"
)
puts "> Done!"
puts "> Creating Planes..."
2.times do
  plane = Plane.create!(
    plane_type: "Airbus A320",
    max_occupancy: rand(50...100),
    price: (1000 ...10000),
    address: "CDMX",
    user: user
  )
end
3.times do
    plane = Plane.create!(
      plane_type: "Boeing 777",
      max_occupancy: rand(50...100),
      price: rand(1000 ...10000),
      address: "New York",
      user: user
    )
  end
puts "> Done!"