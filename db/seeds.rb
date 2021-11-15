User.destroy_all
Meal.destroy_all
MealPlan.destroy_all

########################

User.reset_pk_sequence
Meal.reset_pk_sequence
MealPlan.reset_pk_sequence


# add user get more specific and edit along the way 

user1 = User.create(name:"woodelin", email: "woodelin@hotmail.com", bio:"love to try new things", image:"https://cdn.loveandlemons.com/wp-content/uploads/2018/09/IMG_12798-crop2-1.jpg")

meal1 = Meal.create(name:"Rice", image:"https://media.newyorker.com/photos/5f2c85539a557880d973a759/1:1/w_1823,h_1823,c_limit/Buford-FrenchRice.jpg", calories:1000, nutrition_info:"good stuff")

mealplan1 = MealPlan.create(title:"Breakfast", image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Breakfast_Platter.jpg/1200px-Breakfast_Platter.jpg", user_id: user1.id, meal_id: meal1.id)

# Meal.get_data
# add joiner 






# food database hashing 
# ["hints"]
# food_data[0]["food"]["label"]