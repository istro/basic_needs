class TwilioNumber < ActiveRecord::Base
  attr_accessible :number, :in_use
  belongs_to :requests
end
