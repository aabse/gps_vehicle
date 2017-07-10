class Api::V1::GpsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def create

		unless params[:latitude].blank? || params[:longitude].blank? || 
			params[:vehicle_identifier].blank? || params[:sent_at].blank?
			response = BackgroundWorker.perform_async(params[:vehicle_identifier], params[:latitude], 
				params[:longitude], params[:sent_at])

			render json: { status: 200 }

		else

			render json: { status: 500 }
		end
	end
end
