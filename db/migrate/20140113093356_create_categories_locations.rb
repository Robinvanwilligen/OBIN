class CreateCategoriesLocations < ActiveRecord::Migration
  def change
    create_table :categories_locations do |t|
      t.integer :category_id
      t.integer :location_id

      t.timestamps
    end
  end
end
