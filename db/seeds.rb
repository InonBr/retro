# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seed"
user = User.create!(
  first_name: "David",
  last_name: "blabla",
  email: "david@fackmail.com",
  password: "123456789"
  )

Gadget.create!(
  user: user,
  name:"some name",
  price: 10,
  year: 1991,
  condition: "condition",
  description: "Lorem ipsum dolor maiores sint numquam placeat!",
  category: "category"
  )
puts"done!"
