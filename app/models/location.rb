class Location < ActiveRecord::Base
  attr_accessible :address, :category_id, :city, :description, :facts, :latitude, :longitude, :name, :photo, :url, :summary
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :summary, length: {maximum: 200}
  
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
