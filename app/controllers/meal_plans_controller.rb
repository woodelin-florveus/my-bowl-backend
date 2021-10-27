class MealPlansController < ApplicationController


    def index 
        @meal_plans = MealPlan.all

        render json: @meal_plans
    end

    def show
        @meal_plan = MealPlan.find(params[:id])

        render json: @meal_plan
    end

end
