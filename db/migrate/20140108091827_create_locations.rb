class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.text :description
      t.text :facts
      t.string :photo
      t.string :url
      t.float :latitude, :limit => 30
      t.float :longitude, :limit => 30
      t.integer :category_id

      t.timestamps
    end
  end
end
