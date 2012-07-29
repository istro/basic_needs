class Requests < ActiveRecord::Base
  attr_accessible :message, :provider_number, :requester_number, :twilio_number_id, :zipcode_id
  belongs_to :zipcode
  has_one :twilio_number
  has_many :request_tags


  #def valid?
  #  self.content =~ /\d{3}/
  #end

  def find_tags
    create_tokens
    @tokens.inject([]) { |token| Tag.find_by_name(token) }
  end

  def find_zip
    zip = self.content.match(/\d{3}/)
    ZipCode.find_by_name(zip)
  end

  private
  def create_tokens
    @tokens ||= self.content.split
  end

end

