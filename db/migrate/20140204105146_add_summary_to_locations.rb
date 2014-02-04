class AddSummaryToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :summary, :text, :limit => 200
  end
end
