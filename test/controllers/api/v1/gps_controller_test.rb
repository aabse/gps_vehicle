require 'test_helper'

class Api::V1::GpsControllerTest < ActionController::TestCase
	test "should create a vehicle and its location" do 
		post :create, {
			latitude: 0.23,
			longitude: -0.56,
			sent_at: "2016-06-02 20:45:00",
			vehicle_identifier: "HA-3452"
		}, format: 'json'
		json_response = JSON.parse(response.body)
		assert_equal 200, json_response["status"]
	end

	test "should fail to create a vehicle without a parameter" do
		post :create, {
			longitude: -0.56,
			sent_at: "2016-06-02 20:45:00",
			vehicle_identifier: "HA-3452"
		}, format: 'json'
		json_response = JSON.parse(response.body)
		assert_equal 500, json_response["status"]

	end

	test "should get show" do
		get 'show'
		assert_response :success
	end
end
