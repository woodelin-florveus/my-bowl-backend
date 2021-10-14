class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :title
      t.string :image
      t.string :nutrition_info

      t.timestamps
    end
  end
end
