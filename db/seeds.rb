# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create!(
  first_name: "David",
  last_name: "blabla",
  email: "david@fackmail.com",
  password: "123456789"
  )

user = User.new(first_name: 'ophira', last_name: 'blumner', email: 'ophirablumner@gmail.com', password: '123456')
user.save

Gadget.destroy_all
typewriter = Gadget.create(name:'typewriter', price: 20, year: 1978, category: 'writing', condition: 'good', user: user, description: 'Lorem ipsum dolor sit amet.')
phone = Gadget.create(name:'phone', price: 5, year: 1920, category: 'phones', condition: 'good', user: user, description: 'Lorem ipsum dolor sit amet.')
camera = Gadget.create(name:'camera', price: 15, year: 1936, category: 'cameras', condition: 'good', user: user, description: 'Lorem ipsum dolor sit amet.')
turntable = Gadget.create(name:'turntable', price: 50, year: 1980, category: 'music', condition: 'good', user: user, description: 'Lorem ipsum dolor sit amet.')
radio = Gadget.create(name:'radio', price: 12, year: 1945, category: 'music', condition: 'good', user: user, description: 'Lorem ipsum dolor sit amet.')
tv = Gadget.create(name:'tv', price: 10, year: 1967, category: 'tv', condition: 'good', user: user, description: 'Lorem ipsum dolor sit amet.')

Gadget.create!(
  user: user,
  name:"some name",
  price: 10,
  year: 1991,
  condition: "condition",
  description: "Lorem ipsum dolor maiores sint numquam placeat!",
  category: "cameras"
  )


