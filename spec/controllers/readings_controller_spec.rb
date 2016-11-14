# spec/requests/api/v1/messages_spec.rb
require 'rails_helper'

describe "Medicaments API", :type => :request do

    # valid json for create
    let(:valid_reading){
      '{
        "reading" : {
          "device_id" : "' + "#{@device.try(:id)}" + '",
          "lat" : "42.6599371",
          "long" : "23.3165944",
          "sensor_01" : "23.456"
        }
      }'
    }

    # invalid json for create
    let(:invalid_reading){
      '{
        "reading" : {
          "device_id" : "' + "#{@device.try(:id) + 1}" + '",
          "lat" : "42.6599371",
          "long" : "23.3165944",
          "sensor_01" : "23.456"
        }
      }'
    }

    let(:headers){
    {
          "Content-Type" => "application/json"
        }
    }

  before do
    @device = FactoryGirl.create(:device)
  end

  it 'creates reading from valid data' do
    expected_number = @device.readings.length + 1
    post('/readings', valid_reading, headers)
    response_parsed = JSON.parse(response.body)
    @device.reload
    expect(response.status).to eq(200)
    expect(@device.readings.length).to eq(expected_number)
    expect(@device.readings.last.sensor_01).to eq(23.456)
    expect(Reading.last.sensor_01).to eq(23.456)
  end
end
