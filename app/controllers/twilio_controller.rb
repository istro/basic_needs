class TwilioController < ApplicationController
	def index
		show
	end

	def show
		#Pull message and number from text
		body = params["Body"]
		from = params["From"]

		#Currently sends to my number and Andrew's number
		send_to = ['+14154107907', '+12019257712']		

		@response = Twilio::TwiML::Response.new do |r|
			send_to.each do |s|
				r.sms body, :to => s
			end
	    end

	    render :xml => @response.text, :layout => false
	end

end
