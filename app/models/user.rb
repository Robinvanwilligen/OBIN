class User < ActiveRecord::Base
  attr_accessible :email, :level, :password, :username
end
