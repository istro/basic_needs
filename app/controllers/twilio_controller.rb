class TwilioController < ApplicationController
	def index
		show
	end

	def show
		#Pull message and number from text
		body = params["Body"]
		from = params["From"]

		request = Requests.create({:message => body, :requester_number => from})

		if find_food_tag(body)
			food_tag = Tags.find_by_name("food")
			if not food_tag
				food_tag = Tags.create(:name => "food")
			end

			RequestTags.create({:request_id => request.id, :tags_id => food_tag.id})
		end

		if find_shelter_tag(body)
			shelter_tag = Tags.find_by_name("shelter")
			if not shelter_tag
				shelter_tag = Tags.create(:name => "shelter")
			end

			RequestTags.create({:request_id => request.id, :tags_id => shelter_tag.id})
		end


		#Currently sends to my number and Andrew's number
		send_to = ['+14154107907', '+12019257712']		

		@response = Twilio::TwiML::Response.new do |r|
			send_to.each do |s|
				r.sms body, :to => s
			end
	    end

	    render :xml => @response.text, :layout => false
	end

	def find_food_tag(message)
	  food_array = ["hungry", "food", "eat", 
	                "bread", "groceries", "breakfast", "lunch",
	                "dinner", "meal"]
	  food_array.each do |food|
	    if message.include?(food)
	      return true
	    end
	  end
	  return false
	end

	def find_shelter_tag(message)
	  shelter_array = ["shelter", "bed", "sleep", "shower", "cold"]
	  shelter_array.each do |shelter|
	      if message.include?(shelter)
	        return true
      	  end
 	    end
 	    return false
    end
end
