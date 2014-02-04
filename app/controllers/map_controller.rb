class MapController < ApplicationController
	def index
		@locations = Location.all
		@hash = Gmaps4rails.build_markers(@locations) do |location, marker|
			marker.lat location.latitude
			marker.lng location.longitude
		end
		
		respond_to do |format|
		format.html # index.html.erb
		format.json { render json: @locations }
		end
	
	end
end
