class Vehicle < ActiveRecord::Base
	validates :identifier, presence: true

	has_many :locations
end
