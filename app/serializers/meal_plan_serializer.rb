class MealPlanSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :user_id, :meal_id

  has_many :meal
end
