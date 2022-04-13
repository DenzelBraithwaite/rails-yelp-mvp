# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# id: nil, name: nil, address: nil, phone_number: nil, category: nil, created_at: nil, updated_at: nil>
categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories.sample
  )
  puts "Created #{restaurant.name}"
end

puts "Finished!"
