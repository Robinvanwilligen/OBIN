class ContactController < ApplicationController
	def new
		@contact = Contact.new
	end
	
	def create
		@contact = Contact.new(params[:contact])
		if @contact.valid?
			#TODO SEND MESSAGE HERE
			redirect_to root_url, notice: "Message sent, thanks for contacting us!"
		else
			render "new"
		end
	end
end
