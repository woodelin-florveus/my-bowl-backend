class Meal < ApplicationRecord
    has_many :meal_plans
    has_many :users, through: :meal_plans

include PgSearch

pg_search_scope :search_by_term, against: [:title, :content],
        using: {
            tsearch: {
                any_word: true, 
                prefix: true
            }
        }

    def self.get_data

        # fix query params 

        safeUrl = URI.encode("https://api.edamam.com/api/food-database/v2/parser?app_id=#{ENV["RECIPE_ID"]}&app_key=#{ENV["KEY"]}&ingr=Rice&nutrition-type=cooking".strip)
        response = RestClient.get(safeUrl)
        food_data = JSON.parse(response)["hints"]

        food_data.each do |food_table|            
            self.create!(name: food_table["food"]["label"], image: food_table["food"]["image"], calories: food_table["food"]["nutrients"]["ENERC_KCAL"], nutrition_info: food_table["food"]["nutrients"])
        end
    end
end


# https://api.edamam.com/api/food-database/v2/parser?app_id=aa81c12d&app_key=2856f570215c5c70fbeb33c508e4c436&nutrition-type=cooking

# "https://api.edamam.com/api/food-database/v2/parser?app_id=aa81c12d&app_key=2856f570215c5c70fbeb33c508e4c436&ingr=#{request}&nutrition-type=cooking
# "
