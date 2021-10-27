class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :nutrition_info

  has_many :meal_plans
end
