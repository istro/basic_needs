
class RequestsController < ApplicationController
	def index
	end

	def new
		@request = Requests.new
	end

	def create
		@request = Requests.new(params[:requests])
		if @request.save
			#generate a Twilio response
			redirect_to requests_path
		end
	end

	def delete
		Requests.find(params[:id]).destroy
		redirect_to requests_path
	end

	def update
		@request = Requests.find(params[:id])

		if @request.update_attributes(params[:request])
			redirect_to requests_path
		end
		
	end
end
