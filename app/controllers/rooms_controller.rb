class RoomsController < ApplicationController
	def index
		@messages = Message.all
	end

	def new
	end

	def create
		@message = Message.new
		@message.name = params[:message][:name]
		@message.content = params[:message][:content]
		@message.save
		redirect_to root_path
	end
end
