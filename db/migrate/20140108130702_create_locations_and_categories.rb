class CreateLocationsAndCategories < ActiveRecord::Migration
  def change
    create_table :locations_categories do |t|
	  t.belongs_to :location
	  t.belongs_to :category
	  
      t.timestamps
    end
  end
end
