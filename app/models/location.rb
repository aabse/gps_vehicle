class Location < ActiveRecord::Base
  validates :latitude, presence: true
	validates :longitude, presence: true
	validates :sent_at, presence: true

  belongs_to :vehicle
end
