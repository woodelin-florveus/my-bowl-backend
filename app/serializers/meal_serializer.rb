class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :calories, :nutrition_info

  # has_many :meal_plans
end
