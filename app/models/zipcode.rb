class Zipcode < ActiveRecord::Base
  attr_accessible :zip
  has_many :requests
end
