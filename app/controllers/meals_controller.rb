class MealsController < ApplicationController

    require 'faraday'

    def index        
        @meals = Meal.all  
        
        render json: @meals
    end

    def search 
        require 'rest_client'

        query=params[:query]

        address = "https://api.edamam.com/api/food-database/v2/parser?app_id=#{ENV["RECIPE_ID"]}&app_key=#{ENV["KEY"]}&ingr=#{query}&nutrition-type=cooking"

        complete_search_address = address+query.to_s

        nps_data = RestClient.get(complete_search_address)

        nps_search_parsed = JSON.parse(nps_data)

        render json: nps_search_parsed

    end



    def show 
        @meal = Meal.find(params[:id])
        render json: @meal
    end

end
