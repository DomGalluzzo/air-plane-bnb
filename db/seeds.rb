# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plane.create!(plane_type: "Airbus A320")
Plane.create!(plane_type: "Boeing 737")
Plane.create!(plane_type: "Boeing 777")
Plane.create!(plane_type: "Boeing 747")
Plane.create!(plane_type: "Airbus A340")