class User < ApplicationRecord
    has_many :meal_plans
    has_many :meals, through: :meal_plans
end
