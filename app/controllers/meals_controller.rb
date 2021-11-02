class MealsController < ApplicationController

    def index        
        @meals = Meal.all  
        
        render json: @meals
    end

    def search
        @meals = Meal.search_by_term(params[:query])
        bindind.pry
        render json: @meals
    end
    


    def show 
        @meal = Meal.find(params[:id])
        render json: @meal
    end

    def search
        # make API Search call 
    end


end
