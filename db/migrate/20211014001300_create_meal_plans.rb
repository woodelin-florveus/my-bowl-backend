class CreateMealPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_plans do |t|
      t.string :title
      t.string :image
      t.integer :user_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
