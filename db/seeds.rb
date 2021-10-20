# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





#  user_1 = User.create(name:"Woodelin", email:"woodelinflorveus@hotmail.com", bio:"love to plan out my meal", image:"https://img1.10bestmedia.com/Images/Photos/376708/GettyImages-1140201336_54_990x660.jpg")
# BASE_URL='https://api.edamam.com/api/recipes/v2'
# byebug
# ENV["KEY"]

response = RestClient.get('https://api.edamam.com/api/recipes/v2?type=public&q=Rice&app_id=6090520d&app_key=fc2479e493761476ddc23d7e0336f51b&ingr=1-4')
recipe_array = JSON.parse(response)


binding.pry

recipe_array.each do |food|
#   find specific arrray to go through 
end