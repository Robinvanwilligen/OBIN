class SearchController < ApplicationController
	
	def search
		if request.post?
			@locations = Location.where("city LIKE ? OR name LIKE ?", "%"+params[:search]+"%", "%"+params[:search]+"%")
			render template: "search/result"
		else
			@locations = Location.all
		end
	end	
end
