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
  last_name: "bercu",
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

addresses = %w(
Hanassi St.
Jerusalem 92188

Kiryat Ben-Gurion
Jerusalem 91950

23 Yaffo St.
Jerusalem 91999

237 Yaffo St.
Jerusalem 91999

Shaul Hamelech 8
Tel Aviv 64733

13 Weizmann Blvd.
Jerusalem 91909

Hahistadrut 5
Jerusalem
)

instruments = [Faker::Music.instrument,
               Faker::Music.instrument,
               Faker::Music.instrument,
               Faker::Music.instrument,
               Faker::Music.instrument,
               Faker::Music.instrument,
               Faker::Music.instrument].uniq




CATEGORIES = ["cameras", "computers", "tv", "music", "phones", "games", "writing"]
NAMES = [ ["camera", "sony", "nikon" ], ["computer"], ["tv"], instruments , [Faker::Device.model_name], [Faker::Game.platform],[ "writing"] ]

adjectives = %w(old antique classic old-school nostalgic aged ancient archaic dated seasoned oldish experienced vintage retroactive oldfashioned retrogressive)

CATEGORIES.each_with_index do |category, index|
  10.times do
    gadget = Gadget.new(
      user: User.all.sample,
      name: "#{adjectives.sample} #{NAMES[index].sample}",
      price: (10..50).to_a.sample,
      year: (1970..1995).to_a.sample,
      condition: ['New', 'Lightly Used', 'Used'].sample,
      description: "This is a really nice #{adjectives.sample}",
      category: category,
      address: "'#{addresses.sample}'"
      )
    gadget.remote_image_url = "https://source.unsplash.com/#{(1200..1900).to_a.sample}x#{(600..900).to_a.sample}/?#{category}"
    # gadget.remote_image_url = "https://source.unsplash.com/collection/2476111/"
    # gadget.remote_image_url = "https://source.unsplash.com/collection/3788436/"
    # #"https://source.unsplash.com/random"
    #"https://source.unsplash.com/collection/566311/"
    #'https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80'
    gadget.save
    puts "Gadget #{gadget.name} created"
end
end
=begin
CATEGORIES = ["cameras", "computers", "tv", "music", "phones", "games", "writing"]
NAMES = [ ["camera", "sony", "nikon" ], ["computer"], ["tv"], ["music"], ["phone"], ["game"],[ "writing"] ]

adjectives = %w(old antique classic old-school nostalgic)

CATEGORIES.each_with_index do |category, index|
  10.times do
    gadget = Gadget.new(
      user: User.all.sample,
      name: "#{adjectives.sample} #{NAMES[index].sample}",
      price: (10..50).to_a.sample,
      year: (1970..1995).to_a.sample,
      condition: ['New', 'Lightly Used', 'Used'].sample,
      description: "This is a really nice #{adjectives.sample}",
      category: category,
      address: 'tel aviv, Basel Street 22'
      )
    gadget.remote_image_url = "https://source.unsplash.com/collection/2304067/"
    gadget.remote_image_url = "https://source.unsplash.com/collection/2476111/"
    gadget.remote_image_url = "https://source.unsplash.com/collection/3788436/"
    #"https://source.unsplash.com/random"
    #"https://source.unsplash.com/collection/566311/"
    #'https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80'
    gadget.save
    puts "Gadget #{gadget.name} created"

  end
end
=end

# 70.times do |i|
#   gagdet = Gadget.new(
#     user: User.all.sample,
#     name:"Old camera",
#     price: (10..50).to_a.sample,
#     year: (1970..1995).to_a.sample,
#     condition: ['New', 'Lightly Used', 'Used'].sample,
#     description: "Lorem ipsum dolor maiores sint numquam placeat!",
#     category: CATEGORIES.sample,
#     address: 'tel aviv, Basel Street 22'
#   )
#  gagdet.remote_image_url = 'https://static.turbosquid.com/Preview/2019/05/07__14_24_00/Retro_camera_Showa_Dirt_01.jpg92A531C4-8D17-47CE-95CF-2B6B233B28EAZoom.jpg'
#  gagdet.save!
# end



# puts "create gagdet 1"
# gagdet1 = Gadget.new(
#   user: user2,
#   name:"Old camera",
#   price: 10,
#   year: 1991,
#   condition: "New",
#   description: "Lorem ipsum dolor maiores sint numquam placeat!",
#   category: "camera",
#   address: 'tel aviv, Basel Street 22'
#   )

# gagdet1.remote_image_url = 'https://static.turbosquid.com/Preview/2019/05/07__14_24_00/Retro_camera_Showa_Dirt_01.jpg92A531C4-8D17-47CE-95CF-2B6B233B28EAZoom.jpg'

# gagdet1.save!

# puts "create gagdet 2"
# gagdet2 = Gadget.new(
#   user: user2,
#   name:"hipster patiphon",
#   price: 15,
#   year: 1985,
#   condition: "Lightly Used",
#   description: "Lorem ipsum dolor sit amet, consectetur. Quae recusandae iste accusantium!",
#   category: "camera",
#   address: 'tel aviv, tchernikhovski 32'
#   )

# gagdet2.remote_image_url = 'http://f.nanafiles.co.il//Upload/52009/Article/Article_Title_2196057.JPG'

# gagdet2.save!

# puts "create gagdets 3"
# gagdet3 = Gadget.new(
#   user: user1,
#   name:"My awesome computer",
#   price: 15,
#   year: 1985,
#   condition: "New",
#   description: "Lorem ipsum dolor sit amet, consectetur. Quae recusandae iste accusantium!",
#   category: "camera",
#   address: 'bat yam, bar ilan 32'
#   )

# gagdet3.remote_image_url = 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Ibm_px_xt_color.jpg'

# gagdet3.save!

# puts "create gagdets 4"
# gagdet4 = Gadget.new(
#   user: user2,
#   name:"Best computer ever!",
#   price: 5,
#   year: 1990,
#   condition: "Lightly Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "camera",
#   address: 'tel aviv, nakhmani Street 4'
#   )

# gagdet4.remote_image_url = 'https://img.mylot.com/2002217.jpg'

# gagdet4.save!

# puts "create gagdets 5"
# gagdet5 = Gadget.new(
#   user: user1,
#   name:"GameOn!",
#   price: 20,
#   year: 1995,
#   condition: "Lightly Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "camera",
#   address: 'tel aviv, Barzilai 4'
#   )

# gagdet5.remote_image_url = "https://images-na.ssl-images-amazon.com/images/I/81s7B%2BAls-L._AC_.jpg"

# gagdet5.save!

# puts "create gagdets 6"
# gagdet6 = Gadget.new(
#   user: user2,
#   name:"Old and awesome phone!",
#   price: 2,
#   year: 1950,
#   condition: "Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "camera",
#   address: 'tel aviv, Balfour 7'
#   )

# gagdet6.remote_image_url = "https://i.pinimg.com/originals/4e/ae/8b/4eae8b84062039ce4f1f170eaed63757.jpg"

# gagdet6.save!

# puts "create gagdets 7"
# gagdet7 = Gadget.new(
#   user: user2,
#   name:"Amazing phone!",
#   price: 2,
#   year: 1980,
#   condition: "Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "camera",
#   address: 'tel aviv, Balfour 88'
#   )

# gagdet7.remote_image_url = "https://live.staticflickr.com/2074/2257134624_754efa0eca_z.jpg"

# gagdet7.save!

# puts "create gagdets 8"
# gagdet8 = Gadget.new(
#   user: user1,
#   name:"Amazing typewriter!",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "camera",
#   address: 'tel aviv, ben yehuda street 88'
#   )

# gagdet8.remote_image_url = "https://images.unsplash.com/photo-1560415903-cca53660d61d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80"

# gagdet8.save!


# puts "create gagdet 1"
# gagdet1 = Gadget.new(
#   user: user2,
#   name:"Old tv",
#   price: 10,
#   year: 1991,
#   condition: "New",
#   description: "Lorem ipsum dolor maiores sint numquam placeat!",
#   category: "tv",
#   address: 'tel aviv, Basel Street 22'
#   )

# gagdet1.remote_image_url = 'https://static.turbosquid.com/Preview/2019/05/07__14_24_00/Retro_TV_Showa_Dirt_01.jpg92A531C4-8D17-47CE-95CF-2B6B233B28EAZoom.jpg'

# gagdet1.save!

# puts "create gagdet 2"
# gagdet2 = Gadget.new(
#   user: user2,
#   name:"hipster patiphon",
#   price: 15,
#   year: 1985,
#   condition: "Lightly Used",
#   description: "Lorem ipsum dolor sit amet, consectetur. Quae recusandae iste accusantium!",
#   category: "music",
#   address: 'tel aviv, tchernikhovski 32'
#   )

# gagdet2.remote_image_url = 'http://f.nanafiles.co.il//Upload/52009/Article/Article_Title_2196057.JPG'

# gagdet2.save!

# puts "create gagdets 3"
# gagdet3 = Gadget.new(
#   user: user1,
#   name:"My awesome computer",
#   price: 15,
#   year: 1985,
#   condition: "New",
#   description: "Lorem ipsum dolor sit amet, consectetur. Quae recusandae iste accusantium!",
#   category: "computers",
#   address: 'bat yam, bar ilan 32'
#   )

# gagdet3.remote_image_url = 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Ibm_px_xt_color.jpg'

# gagdet3.save!

# puts "create gagdets 4"
# gagdet4 = Gadget.new(
#   user: user2,
#   name:"Best computer ever!",
#   price: 5,
#   year: 1990,
#   condition: "Lightly Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "computers",
#   address: 'tel aviv, nakhmani Street 4'
#   )

# gagdet4.remote_image_url = 'https://img.mylot.com/2002217.jpg'

# gagdet4.save!

# puts "create gagdets 5"
# gagdet5 = Gadget.new(
#   user: user1,
#   name:"GameOn!",
#   price: 20,
#   year: 1995,
#   condition: "Lightly Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "games",
#   address: 'tel aviv, Barzilai 4'
#   )

# gagdet5.remote_image_url = "https://images-na.ssl-images-amazon.com/images/I/81s7B%2BAls-L._AC_.jpg"

# gagdet5.save!

# puts "create gagdets 6"
# gagdet6 = Gadget.new(
#   user: user2,
#   name:"Old and awesome phone!",
#   price: 2,
#   year: 1950,
#   condition: "Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "phones",
#   address: 'tel aviv, Balfour 7'
#   )

# gagdet6.remote_image_url = "https://i.pinimg.com/originals/4e/ae/8b/4eae8b84062039ce4f1f170eaed63757.jpg"

# gagdet6.save!

# puts "create gagdets 7"
# gagdet7 = Gadget.new(
#   user: user2,
#   name:"Amazing phone!",
#   price: 2,
#   year: 1980,
#   condition: "Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "phones",
#   address: 'tel aviv, Balfour 88'
#   )

# gagdet7.remote_image_url = "https://live.staticflickr.com/2074/2257134624_754efa0eca_z.jpg"

# gagdet7.save!

# puts "create gagdets 8"
# gagdet8 = Gadget.new(
#   user: user1,
#   name:"Amazing typewriter!",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "Lorem quae recusandae iste accusantium!",
#   category: "writing",
#   address: 'tel aviv, ben yehuda street 88'
#   )

# gagdet8.remote_image_url = "https://images.unsplash.com/photo-1560415903-cca53660d61d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80"

# gagdet8.save!

# puts "create gagdets 9"
# gagdet9 = Gadget.new(
#   user: user2,
#   name:"camera",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion camera",
#   category: "cameras",
#   address: 'tel aviv, schlomo ibn gabirol st 100'
#   )

# gagdet9.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet9.save!

# puts "create gagdets 10"
# gagdet10 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet10.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet10.save!

# puts "create gagdets 11"
# gagdet11 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet11.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet11.save!

# puts "create gagdets 12"
# gagdet12 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet12.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet12.save!

# puts "create gagdets 13"
# gagdet13 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet13.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet13.save!

# puts "create gagdets 14"
# gagdet14 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet14.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet14.save!

# puts "create gagdets 15"
# gagdet15 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet15.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet15.save!

# puts "create gagdets 16"
# gagdet16 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet16.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet16.save!

# puts "create gagdets 17"
# gagdet17 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet17.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet17.save!

# puts "create gagdets 18"
# gagdet18 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet18.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet18.save!

# puts "create gagdets 19"
# gagdet19 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet19.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet19.save!

# puts "create gagdets 20"
# gagdet20 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet20.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet20.save!

# puts "create gagdets 21"
# gagdet21 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet21.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet21.save!

# puts "create gagdets 22"
# gagdet22 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet22.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet22.save!

# puts "create gagdets 23"
# gagdet23 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet23.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet23.save!

# puts "create gagdets 24"
# gagdet24 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet24.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet24.save!

# puts "create gagdets 25"
# gagdet25 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet25.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet25.save!

# puts "create gagdets 26"
# gagdet26 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet26.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet26.save!

# puts "create gagdets 27"
# gagdet27 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet27.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet27.save!

# puts "create gagdets 28"
# gagdet28 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet28.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet28.save!

# puts "create gagdets 29"
# gagdet29 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet29.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet29.save!

# puts "create gagdets 30"
# gagdet30 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet30.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet30.save!

# puts "create gagdets 31"
# gagdet30 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet30.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet30.save!

# puts "create gagdets 31"
# gagdet31 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet31.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet31.save!

# puts "create gagdets 32"
# gagdet32 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet32.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet32.save!

# puts "create gagdets 33"
# gagdet33 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet33.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet33.save!

# puts "create gagdets 34"
# gagdet34 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet34.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet34.save!

# puts "create gagdets 35"
# gagdet35 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet35.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet35.save!

# puts "create gagdets 36"
# gagdet36 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet36.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet36.save

# puts "create gagdets 37"
# gagdet37 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet37.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet37.save!

# puts "create gagdets 38"
# gagdet38 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet38.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet38.save!

# puts "create gagdets 39"
# gagdet39 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet39.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet39.save!

# puts "create gagdets 40"
# gagdet40 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet40.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet40.save!

# puts "create gagdets 41"
# gagdet41 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet41.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet41.save!

# puts "create gagdets 42"
# gagdet42 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet42.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet42.save!

# puts "create gagdets 43"
# gagdet43 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet43.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet43.save!

# puts "create gagdets 44"
# gagdet44 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet44.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet44.save!

# puts "create gagdets 45"
# gagdet45 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet46.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet46.save!

# puts "create gagdets 47"
# gagdet47 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet47.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet47.save!

# puts "create gagdets 48"
# gagdet48 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet48.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet48.save!

# puts "create gagdets 49"
# gagdet49 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet49.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet49.save!

# puts "create gagdets 50"
# gagdet50 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet50.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet50.save!

# puts "create gagdets 51"
# gagdet51 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet51.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet51.save!

# puts "create gagdets 52"
# gagdet52 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet52.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet52.save!

# puts "create gagdets 53"
# gagdet53 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet53.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet53.save!

# puts "create gagdets 54"
# gagdet54 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet54.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet54.save!

# puts "create gagdets 55"
# gagdet55 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet55.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet55.save!

# puts "create gagdets 56"
# gagdet56 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet56.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet56.save!

# puts "create gagdets 57"
# gagdet57 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet57.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet57.save!

# puts "create gagdets 58"
# gagdet58 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet58.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet58.save!

# puts "create gagdets 59"
# gagdet59 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet59.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet59.save!

# puts "create gagdets 60"
# gagdet60 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet60.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet60.save!

# puts "create gagdets 61"
# gagdet61 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet61.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet61.save!

# puts "create gagdets 62"
# gagdet62 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet62.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet62.save!

# puts "create gagdets 63"
# gagdet63 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet63.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet63.save!

# puts "create gagdets 64"
# gagdet64 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet64.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet64.save!

# puts "create gagdets 65"
# gagdet65 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet65.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet65.save!

# puts "create gagdets 66"
# gagdet66 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet66.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet66.save!

# puts "create gagdets 67"
# gagdet67 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet67.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet67.save!

# puts "create gagdets 68"
# gagdet68 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet68.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet68.save!

# puts "create gagdets 69"
# gagdet69 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet69.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet69.save!

# puts "create gagdets 70"
# gagdet70 = Gadget.new(
#   user: user1,
#   name:"tv",
#   price: 2,
#   year: 1990,
#   condition: "Used",
#   description: "old fashion tv",
#   category: "tv",
#   address: 'tel aviv, schlomo ibn gabirol st 95'
#   )

# gagdet70.remote_image_url = "https://images.unsplash.com/photo-1516724562728-afc824a36e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2702&q=80"

# gagdet70.save!

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
