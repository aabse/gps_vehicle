class Api::V1::GpsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def create

		unless params[:latitude].blank? || params[:longitude].blank? || 
			params[:vehicle_identifier].blank? || params[:sent_at].blank?

			BackgroundWorker.perform_async(params[:vehicle_identifier], params[:latitude], 
				params[:longitude], params[:sent_at])

			render json: { status: 200 }

		else

			render json: { status: 500 }
		end
	end

	def show

		@vehicles = Vehicle.all

		@hash = Gmaps4rails.build_markers(@vehicles) do |vehicle, marker|
			if vehicle.locations.last
				marker.lat vehicle.locations.last.latitude
				marker.lng vehicle.locations.last.longitude
				marker.infowindow vehicle.identifier
			end
		end

	end
end
