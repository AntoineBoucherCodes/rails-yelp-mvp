# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "5145664912", category: "french" }
pizza_east =  { name: "Pizza East", address: "7 Boundary St, London E2 7JE", phone_number: "5145664912", category: "french" }
pizza_900 =  { name: "Pizza 900", address: "7 Boundary St, London E2 7JE", phone_number: "5145664912", category: "french" }
dominoes =  { name: "Dominoes", address: "7 Boundary St, London E2 7JE", phone_number: "5145664912", category: "french" }
subway =  { name: "Subway", address: "7 Boundary St, London E2 7JE", phone_number: "5145664912", category: "french" }

[ dishoom, pizza_east, pizza_900, dominoes, subway ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
