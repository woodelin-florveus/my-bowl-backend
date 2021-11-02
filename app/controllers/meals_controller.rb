class MealsController < ApplicationController

    # def index        
    #     @meals = Meal.all  
        
    #     render json: @meals
    # end

    def index
        @conn = Faraday.get("https://api.edamam.com/api/food-database/v2/parser?app_id=#{ENV["RECIPE_ID"]}&app_key=#{ENV["KEY"]}&ingr=Rice&nutrition-type=cooking")
        binding.pry

    end


    def show 
        @meal = Meal.find(params[:id])
        render json: @meal
    end

    def search
        # make API Search call 
    end


end
