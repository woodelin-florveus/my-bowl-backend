class MealSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :nutrition_info
end
