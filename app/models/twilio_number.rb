class TwilioNumber < ActiveRecord::Base
  attr_accessible :number
  belongs_to :requests
end
