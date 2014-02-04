ActiveAdmin.register Location do
	
	index do
		column :name
		column :address
		column :city
		column :summary
		column :description
		column :facts
		column :latitude
		column :longitude
		column :photo
		column :url
		default_actions
	end
	
	form do |f|
		f.inputs "Algemeen" do
			f.input :name
			f.input :address
			f.input :city
		end	
		f.inputs "Details" do
			f.input :summary
			f.input :description
			f.input :facts
		end
		f.inputs "Lokatie" do
			f.input :latitude
			f.input :longitude
		end
		f.inputs "Extra" do
			f.input :photo
			f.input :url
		end
		f.actions
	end
end
