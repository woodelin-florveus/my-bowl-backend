class Meal < ApplicationRecord
    has_many :meal_plans
    has_many :users, through: :meal_plans

    def self.get_data
        safeUrl = URI.encode("https://api.edamam.com/api/food-database/v2/parser?app_id=#{ENV["RECIPE_ID"]}&app_key=#{ENV["KEY"]}&ingr=Rice&nutrition-type=cooking".strip)
        response = RestClient.get(safeUrl)
        food_data = JSON.parse(response)["hints"]

        food_data.each do |food_table|            
            self.create!(name: food_table["food"]["label"], image: food_table["food"]["image"], calories: food_table["food"]["nutrients"]["ENERC_KCAL"], nutrition_info: food_table["food"]["nutrients"])
        end
    end
end
