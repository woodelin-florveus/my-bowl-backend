User.destroy_all
Meal.destroy_all
MealPlan.destroy_all

########################

User.reset_pk_sequence
Meal.reset_pk_sequence
MealPlan.reset_pk_sequence





#  user_1 = User.create(name:"Woodelin", email:"woodelinflorveus@hotmail.com", bio:"love to plan out my meal", image:"https://img1.10bestmedia.com/Images/Photos/376708/GettyImages-1140201336_54_990x660.jpg")

# BASE_URL='https://api.edamam.com/api/recipes/v2'
# byebug
# ENV["KEY"]


# response = RestClient.get('https://api.edamam.com/api/recipes/v2?type=public&q=Rice&app_id=6090520d&app_key=' + ENV["RECIPE_KEY"])
# recipe_array = JSON.parse(response)

# response = RestClient.get('https://api.edamam.com/api/recipes/v2?type=public&q=Rice&app_id=6090520d&app_key=' + ENV["RECIPE_KEY"])


byebug


#  user_1 = User.create(name:"Woodelin", email:"woodelinflorveus@hotmail.com", bio:"love to plan out my meal", image:"https://img1.10bestmedia.com/Images/Photos/376708/GettyImages-1140201336_54_990x660.jpg")

#  meal_1 = Meal.create(name:"pasta", image:"https://www.edamam.com/web-img/bb5/bb5bad0cbcb94ad2ef0895d444f30291.jpg", calories: 200, nutrition_info:"Balanced")

#  meal_plan_1 = MealPlan.create(title:"Morning Breakfast", image:"shorturl.at/evEO8", user_id: user_1.id, meal_id: meal_1.id)




# recipe_array["hits"][0]["recipe"]

# recipe_array["hits"][0]["recipe"]["image"]

# recipe_array.each do |food|
    # binding.pry
# end

# recipe_array["hits"]["recipe"].each do |food|
#     binding.pry
# end

# recipe_array["hits"].each do |food|
#     binding.pry
#     # food["recipe"]["image"]
# end