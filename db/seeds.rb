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
user1 = User.create!(
  first_name: "inon",
  last_name: "blabla",
  email: "inon@fackmail.com",
  password: "1234567"
  )

user2 = User.create!(
  first_name: 'ophira',
  last_name: 'blumner',
  email: 'ophirablumner@gmail.com',
  password: '123456'
  )
puts "done with user!"

puts "create gagdets"
 gagdet = Gadget.new(
  user: user2,
  name:"Old tv",
  price: 10,
  year: 1991,
  condition: "New",
  description: "Lorem ipsum dolor maiores sint numquam placeat!",
  category: "tv",
  address: 'tel aviv, Basel Street 22'
  )

gagdet.remote_image_url = 'https://static.turbosquid.com/Preview/2019/05/07__14_24_00/Retro_TV_Showa_Dirt_01.jpg92A531C4-8D17-47CE-95CF-2B6B233B28EAZoom.jpg'

gagdet.save!

puts "create gagdets 1"
 gagdet2 = Gadget.new(
  user: user2,
  name:"hipster patiphon",
  price: 15,
  year: 1985,
  condition: "Lightly Used",
  description: "Lorem ipsum dolor sit amet, consectetur. Quae recusandae iste accusantium!",
  category: "music",
  address: 'tel aviv, tchernikhovski 32'
  )

gagdet2.remote_image_url = 'http://f.nanafiles.co.il//Upload/52009/Article/Article_Title_2196057.JPG'

gagdet2.save!

puts "create gagdets 2"
 gagdet2 = Gadget.new(
  user: user1,
  name:"My awesome computer",
  price: 15,
  year: 1985,
  condition: "New",
  description: "Lorem ipsum dolor sit amet, consectetur. Quae recusandae iste accusantium!",
  category: "computers",
  address: 'bat yam, bar ilan 32'
  )

gagdet2.remote_image_url = 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Ibm_px_xt_color.jpg'

gagdet2.save!

puts "create gagdets 3"
 gagdet3 = Gadget.new(
  user: user2,
  name:"Best computer ever!",
  price: 5,
  year: 1990,
  condition: "Lightly Used",
  description: "Lorem quae recusandae iste accusantium!",
  category: "computers",
  address: 'tel aviv, nakhmani Street 4'
  )

gagdet3.remote_image_url = 'https://img.mylot.com/2002217.jpg'

gagdet3.save!

puts "create gagdets 4"
 gagdet4 = Gadget.new(
  user: user1,
  name:"GameOn!",
  price: 20,
  year: 1995,
  condition: "Lightly Used",
  description: "Lorem quae recusandae iste accusantium!",
  category: "games",
  address: 'tel aviv, Barzilai 4'
  )

gagdet4.remote_image_url = "https://images-na.ssl-images-amazon.com/images/I/81s7B%2BAls-L._AC_.jpg"

gagdet4.save!

puts "create gagdets 5"
 gagdet5 = Gadget.new(
  user: user2,
  name:"Old and awesome phone!",
  price: 2,
  year: 1950,
  condition: "Used",
  description: "Lorem quae recusandae iste accusantium!",
  category: "phones",
  address: 'tel aviv, Balfour 7'
  )

gagdet5.remote_image_url = "https://i.pinimg.com/originals/4e/ae/8b/4eae8b84062039ce4f1f170eaed63757.jpg"

gagdet5.save!

puts "create gagdets 6"
 gagdet6 = Gadget.new(
  user: user2,
  name:"Amazing phone!",
  price: 2,
  year: 1980,
  condition: "Used",
  description: "Lorem quae recusandae iste accusantium!",
  category: "phones",
  address: 'tel aviv, Balfour 88'
  )

gagdet6.remote_image_url = "https://live.staticflickr.com/2074/2257134624_754efa0eca_z.jpg"

gagdet6.save!

puts "create gagdets 7"
 gagdet7 = Gadget.new(
  user: user1,
  name:"Amazing typewriter!",
  price: 2,
  year: 1990,
  condition: "Used",
  description: "Lorem quae recusandae iste accusantium!",
  category: "writing",
  address: 'tel aviv, ben yehuda street 88'
  )

gagdet7.remote_image_url = "https://images.unsplash.com/photo-1560415903-cca53660d61d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80"

gagdet7.save!
puts "done with gagdets!"

# <%= f.input :name %>
# <%= f.input :price %>
# <%=
#   f.input :condition,
#   collection: ['New', 'Lightly Used', 'Used'],
#   include_blank: false
# %>
# <%= f.input :year %>

# <%= f.input :category %>
# <%=
#   f.input :category,
#   collection: [
#     'cameras', 'computers', 'tv',
#     'games', 'music', 'phones', 'writing'
#   ],
#   include_blank: false
# %>
# <%= f.input :address %>
# <%= f.input :description %>
# <%= f.input :image %>
# <%= f.input :image_cache, as: :hidden %>
