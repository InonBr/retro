# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroy all users!!!"
User.destroy_all
puts "Done with users!!!"

puts "destroy all users!!!"
Gadget.destroy_all
puts "Done with users!!!"

puts "create user"
user = User.create!(
  first_name: "David",
  last_name: "blabla",
  email: "david@fackmail.com",
  password: "123456789"
  )

user2 = User.create!(
  first_name: 'ophira',
  last_name: 'blumner',
  email: 'ophirablumner@gmail.com',
  password: '123456'
  )
puts "done with user!"


 gagdet1 = Gadget.new(
  user: user2,
  name:"My old tv",
  price: 10,
  year: 1991,
  condition: "New",
  description: "Lorem ipsum dolor maiores sint numquam placeat!",
  category: "tv",
  address: 'tel aviv'

  )

gagdet1.remote_image_url = 'https://static.turbosquid.com/Preview/2019/05/07__14_24_00/Retro_TV_Showa_Dirt_01.jpg92A531C4-8D17-47CE-95CF-2B6B233B28EAZoom.jpg'

gagdet1.save!
