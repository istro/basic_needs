class Requests < ActiveRecord::Base
  attr_accessible :message, :provider_number, :requester_number, :twilio_number_id, :zipcode_id
  belongs_to :zipcode
  has_one :twilio_number
  has_many :tags

end

