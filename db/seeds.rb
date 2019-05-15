# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '06872435',
    category:     'french'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '068124245212',
    category:     'italian'
  },
  {
    name:         'Juku Ramen',
    address:      'Vlakbij Leidse plein',
    phone_number: '124',
    category:     'japanese'
  },
  {
    name:         'Donor land',
    address:      'Kinkerstraat Amsterdam',
    phone_number: '45212',
    category:     'belgian'
  },
  {
    name:         'Flora',
    address:      'Floralaan, Eindhoven',
    phone_number: '0402516635',
    category:     'chinese'
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
