class MealsController < ApplicationController

    def index        
        @Meal = Meal.all        
    end


end
