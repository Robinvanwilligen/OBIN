class Contact < ActiveRecord::Base
  attr_accessible :content, :email, :name
  
  validates :name, :email, :content, presence: true;
end
