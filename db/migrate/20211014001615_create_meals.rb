class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :image
      t.integer :calories
      t.string :nutrition_info

      t.timestamps
    end
  end
end
