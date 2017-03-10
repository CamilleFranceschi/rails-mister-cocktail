# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
ingredients_attributes = [
  {
    name:         "lemon"
  },
  {
    name:         "mint"
  },
  {
    name:         "sugar"
  },
  {
    name:         "rhum"
  },
  {
    name:         "whiskey"
  },
  {
    name:         "vodka"
  }
]
ingredients_attributes.each { |params| Ingredient.create!(params) }

urls1 = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQl_u2cRqrGZAy85dmP5EQCpgxIp7uNeQviu0u_zVzehLbSb7nb',
  'http://www.holidays-travel.com/diaporamas/album_photo/hotel/original_album-photo-tup-kaek-sunset-beach-resort-et-spa-image46925.jpg'
]

urls2 = [
  'http://alba-beach-cannes.com/img/about01.jpg',
  'http://alba-beach-cannes.com/img/about01.jpg'
]

# urls3 = [
#   'https://thumbs.dreamstime.com/t/glass-juice-cocktails-wooden-table-54627037.jpg',
#   'https://thumbs.dreamstime.com/t/glass-juice-cocktails-wooden-table-54627037.jpg'
# ]

urls4 = [
  'http://previews.123rf.com/images/tonobalaguer/tonobalaguer1103/tonobalaguer110300011/9030900-Beach-cocktails-with-Santa-christmas-red-hat-winter-vacation-metaphor-Stock-Photo.jpg',
]

Cocktail.destroy_all
cocktail = Cocktail.new(name: 'Mojito')
cocktail.save!
cocktail.photo_urls = urls1 # Multi-upload happens here
cocktail = Cocktail.new(name: 'Pisco Sour')
cocktail.save!
cocktail.photo_urls = urls2 # Multi-upload happens here
cocktail = Cocktail.new(name: 'Margarita')
cocktail.save!
cocktail = Cocktail.new(name: 'Black Russian')
cocktail.save!
cocktail.photo_urls = urls4 # Multi-upload happens here


puts "Seed OK"
