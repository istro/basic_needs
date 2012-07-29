class Tags < ActiveRecord::Base
  attr_accessible :name
  has_many :request_tags
end
