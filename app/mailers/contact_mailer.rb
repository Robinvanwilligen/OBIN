class ContactMailer < ActionMailer::Base
	default from: "system@obin.com"
	
	def new_message(contact)
	# the following needs to be edited when taken in production:
	@contact = contact
	mail(to: "robin.van.willigen@gmail.com", subject: "Nieuw contactbericht beschikbaar")
	end
end

