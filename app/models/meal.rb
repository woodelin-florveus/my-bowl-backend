class Meal < ApplicationRecord
    has_many :meal_plans
    has_many :users, through: :meal_plans
end
