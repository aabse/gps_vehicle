class BackgroundWorker
  include Sidekiq::Worker

  def perform(vehicle_identifier, latitude, longitude, sent_at)

  	#The vehicle is found or created
    vehicle = Vehicle.find_or_create_by(identifier: vehicle_identifier)

    #The location of the vehicle is created
		vehicle.locations.create(latitude: latitude, longitude: longitude, sent_at: sent_at)


  end
end
